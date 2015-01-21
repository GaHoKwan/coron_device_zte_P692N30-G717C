.class public Lcom/zte/retrieve/utils/TrackInfoManager;
.super Ljava/lang/Object;
.source "TrackInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;,
        Lcom/zte/retrieve/utils/TrackInfoManager$SendResult;,
        Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;
    }
.end annotation


# static fields
.field private static final HTTP_URL:Ljava/lang/String; = "http://218.104.200.245/dcsui/"

.field private static final NO_VALUE:I = 0x1

.field private static final enableSendDefEvent:Z

.field private static isInSending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isTrackSwitch()Z

    move-result v0

    sput-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->enableSendDefEvent:Z

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->isInSending:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 26
    sput-boolean p0, Lcom/zte/retrieve/utils/TrackInfoManager;->isInSending:Z

    return-void
.end method

.method public static activeCloudTrack(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 132
    if-ne p0, v2, :cond_0

    .line 133
    sget-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->CLOUD:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;->OPEN:Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;

    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->dataOperate(Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->CLOUD:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;->CLOSE:Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;

    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->dataOperate(Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;I)V

    goto :goto_0
.end method

.method public static activeLocalTrack(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 118
    if-ne p0, v2, :cond_0

    .line 119
    sget-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->LOCAL:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;->OPEN:Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;

    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->dataOperate(Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->LOCAL:Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;

    sget-object v1, Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;->CLOSE:Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;

    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->dataOperate(Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;I)V

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "track clear all"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->clear()V

    .line 53
    return-void
.end method

.method private static dataOperate(Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;I)V
    .locals 3
    .parameter "version"
    .parameter "type"
    .parameter "count"

    .prologue
    .line 95
    sget-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->enableSendDefEvent:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/zte/retrieve/utils/TrackInfoManager$VERSION_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/retrieve/utils/TrackInfoManager$FUNC_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->saveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static increaseUseTimes()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "track increase use times"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes()V

    .line 47
    invoke-static {}, Lcom/zte/retrieve/utils/TrackInfoManager;->send2Server()V

    .line 48
    return-void
.end method

.method private static saveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "eventName"
    .parameter "propName"
    .parameter "value"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 103
    invoke-static {p0, p1, p2}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track saveEvent: eventName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", propName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static send2Server()V
    .locals 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->isInSending:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->enableSendDefEvent:Z

    if-nez v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACK send2Server not ok, return! isInSending = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/zte/retrieve/utils/TrackInfoManager;->isInSending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableSend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    sget-boolean v1, Lcom/zte/retrieve/utils/TrackInfoManager;->enableSendDefEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/retrieve/utils/TrackInfoManager;->isInSending:Z

    .line 83
    new-instance v0, Lcom/zte/retrieve/utils/TrackInfoManager$1Task;

    invoke-direct {v0}, Lcom/zte/retrieve/utils/TrackInfoManager$1Task;-><init>()V

    invoke-virtual {v0}, Lcom/zte/retrieve/utils/TrackInfoManager$1Task;->start()V

    goto :goto_0
.end method
