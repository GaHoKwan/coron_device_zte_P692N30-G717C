.class Lcom/zte/retrieve/utils/TrackInfoManager$1Task;
.super Ljava/lang/Thread;
.source "TrackInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/utils/TrackInfoManager;->send2Server()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->access$0(Z)V

    .line 71
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 72
    new-instance v1, Lcom/zte/retrieve/utils/TrackInfoManager$SendResult;

    invoke-direct {v1}, Lcom/zte/retrieve/utils/TrackInfoManager$SendResult;-><init>()V

    .line 74
    .local v1, sr:Lcom/zte/retrieve/utils/TrackInfoManager$SendResult;
    invoke-static {v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo(Lcom/zte/statistics/sdk/CollectionSendResult;)V

    .line 75
    const-string v2, "TRACK send over"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #sr:Lcom/zte/retrieve/utils/TrackInfoManager$SendResult;
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/zte/retrieve/utils/TrackInfoManager;->access$0(Z)V

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
