.class public Lcom/zte/update/data/RequestAppInfo;
.super Ljava/lang/Object;
.source "RequestAppInfo.java"

# interfaces
.implements Lcom/zte/update/data/IStorageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/RequestAppInfo$1;,
        Lcom/zte/update/data/RequestAppInfo$Data;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_CLOSED:I = 0x0

.field public static final NOTIFICATION_OPENED:I = 0x1

.field public static final NOTIFICATION_SELF:I = 0x2


# instance fields
.field private data:Lcom/zte/update/data/RequestAppInfo$Data;

.field private notificationTpye:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/zte/update/data/RequestAppInfo$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/update/data/RequestAppInfo$Data;-><init>(Lcom/zte/update/data/RequestAppInfo;Lcom/zte/update/data/RequestAppInfo$1;)V

    iput-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/update/data/RequestAppInfo;->notificationTpye:I

    .line 178
    return-void
.end method


# virtual methods
.method public closeNotification()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/data/RequestAppInfo;->notificationTpye:I

    .line 120
    return-void
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->appDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$600(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->appName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$200(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->appUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$100(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainKeyValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/RequestAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/zte/update/data/RequestAppInfo;->notificationTpye:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->packageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$300(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->versionCode:I
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$400(Lcom/zte/update/data/RequestAppInfo$Data;)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #getter for: Lcom/zte/update/data/RequestAppInfo$Data;->versionName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/RequestAppInfo$Data;->access$500(Lcom/zte/update/data/RequestAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openNotification()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/update/data/RequestAppInfo;->notificationTpye:I

    .line 117
    return-void
.end method

.method public reload(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 193
    instance-of v1, p1, Lcom/zte/update/data/RequestAppInfo;

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/zte/update/data/RequestAppInfo;

    .line 198
    .local v0, info:Lcom/zte/update/data/RequestAppInfo;
    iget-object v1, v0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    iput-object v1, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    goto :goto_0
.end method

.method public setAppDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "appDescription"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->appDescription:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$602(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->appName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$202(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAppUid(Ljava/lang/String;)V
    .locals 1
    .parameter "appUid"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->appUid:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$102(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMainKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/RequestAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public setNotificationType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 126
    iput p1, p0, Lcom/zte/update/data/RequestAppInfo;->notificationTpye:I

    .line 127
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->packageName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$302(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setVersionCode(I)V
    .locals 1
    .parameter "versionCode"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->versionCode:I
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$402(Lcom/zte/update/data/RequestAppInfo$Data;I)I

    .line 75
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1
    .parameter "versionName"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/update/data/RequestAppInfo;->data:Lcom/zte/update/data/RequestAppInfo$Data;

    #setter for: Lcom/zte/update/data/RequestAppInfo$Data;->versionName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/RequestAppInfo$Data;->access$502(Lcom/zte/update/data/RequestAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    return-void
.end method
