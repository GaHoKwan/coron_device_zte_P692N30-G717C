.class public Lcom/zte/retrieve/cloud/PRControl;
.super Ljava/lang/Object;
.source "PRControl.java"


# instance fields
.field private activationUrl:Ljava/lang/String;

.field private mBindStatus:I

.field private mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v1, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/cloud/CommunicationModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    .line 22
    return-void
.end method


# virtual methods
.method public requireBindStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "IMEI"
    .parameter "uid"

    .prologue
    .line 25
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getBindStatusUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, url:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    invoke-virtual {v3, v1}, Lcom/zte/retrieve/cloud/CommunicationModule;->communicationJson(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v2

    .line 28
    .local v2, userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/retrieve/controller/Controller;->setQueryUserInfo(Lcom/zte/retrieve/utils/ServerResponseInfo;)V

    .line 29
    invoke-virtual {v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->getResCode()I

    move-result v3

    iput v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mBindStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2           #userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    :goto_0
    iget v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mBindStatus:I

    return v3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v3, -0x3

    iput v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mBindStatus:I

    goto :goto_0
.end method

.method public sendActivationRequest(Lcom/zte/retrieve/cloud/UserInfo;)I
    .locals 5
    .parameter "userinfo"

    .prologue
    .line 51
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationUrl(Landroid/content/Context;Lcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    .line 52
    const/4 v1, -0x3

    .line 54
    .local v1, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/cloud/CommunicationModule;->communicationJson(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v2

    .line 55
    .local v2, userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/retrieve/controller/Controller;->setActivationUserInfo(Lcom/zte/retrieve/utils/ServerResponseInfo;)V

    .line 56
    invoke-virtual {v2}, Lcom/zte/retrieve/utils/ServerResponseInfo;->getResCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v3, v1

    .line 61
    .end local v2           #userInfo:Lcom/zte/retrieve/utils/ServerResponseInfo;
    :goto_0
    return v3

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v3, -0x3

    goto :goto_0
.end method

.method public sendDeactivationRequest(Ljava/lang/String;)I
    .locals 5
    .parameter "IMEI"

    .prologue
    .line 72
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationCancelUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    .line 73
    const/4 v2, -0x3

    .line 75
    .local v2, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/cloud/CommunicationModule;->communicationJson(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v1

    .line 76
    .local v1, info:Lcom/zte/retrieve/utils/ServerResponseInfo;
    invoke-virtual {v1}, Lcom/zte/retrieve/utils/ServerResponseInfo;->getResCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    .end local v1           #info:Lcom/zte/retrieve/utils/ServerResponseInfo;
    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v2, -0x3

    goto :goto_0
.end method

.method public sendIMEIErrorReport(Ljava/lang/String;)V
    .locals 0
    .parameter "IMEI"

    .prologue
    .line 132
    return-void
.end method

.method public sendReactivationRequest(Lcom/zte/retrieve/cloud/UserInfo;)I
    .locals 6
    .parameter "userinfo"

    .prologue
    const/4 v3, -0x3

    .line 95
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getRectivationUrl(Landroid/content/Context;Lcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    if-nez v4, :cond_0

    move v2, v3

    .line 106
    :goto_0
    return v2

    .line 99
    :cond_0
    const/4 v2, -0x3

    .line 101
    .local v2, rc:I
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v5, p0, Lcom/zte/retrieve/cloud/PRControl;->activationUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/cloud/CommunicationModule;->communicationJson(Ljava/lang/String;)Lcom/zte/retrieve/utils/ServerResponseInfo;

    move-result-object v1

    .line 102
    .local v1, info:Lcom/zte/retrieve/utils/ServerResponseInfo;
    invoke-virtual {v1}, Lcom/zte/retrieve/utils/ServerResponseInfo;->getResCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 103
    goto :goto_0

    .line 104
    .end local v1           #info:Lcom/zte/retrieve/utils/ServerResponseInfo;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 106
    goto :goto_0
.end method

.method public sendSMSsetting(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "uid"
    .parameter "SECPhoneNumber"

    .prologue
    .line 119
    invoke-static {}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/retrieve/cloud/PRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getSMSSettingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, url:Ljava/lang/String;
    const/4 v1, -0x3

    .line 122
    .local v1, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/cloud/PRControl;->mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;

    invoke-virtual {v3, v2}, Lcom/zte/retrieve/cloud/CommunicationModule;->communication(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v3, v1

    .line 126
    :goto_0
    return v3

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v3, -0x3

    goto :goto_0
.end method
