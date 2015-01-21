.class public Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;
.super Landroid/content/ContextWrapper;
.source "MmsCancelDownloadImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsCancelDownload;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsCancelDownloadImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;

    .line 53
    return-void
.end method


# virtual methods
.method public addHttpClient(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)V
    .locals 2
    .parameter "url"
    .parameter "client"

    .prologue
    .line 70
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: setHttpClient()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public cancelDownload(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 74
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: cancelDownload()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getCancelToastEnabled()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: getCancelEnabled()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;

    return-object v0
.end method

.method public getStateExt(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 95
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl:getStateExt(Uri)"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getStateExt(Ljava/lang/String;)I
    .locals 2
    .parameter "url"

    .prologue
    .line 100
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl:getStateExt(String)"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getWaitingDataCnxn()Z
    .locals 2

    .prologue
    .line 109
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "getWaitingDataCnxn() in default"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;

    .line 57
    return-void
.end method

.method public isEnableCancelDownload()Z
    .locals 2

    .prologue
    .line 61
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "isEnableCancelDownload(): false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public markStateExt(Landroid/net/Uri;I)V
    .locals 2
    .parameter "uri"
    .parameter "state"

    .prologue
    .line 91
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl:markStateExt()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public removeHttpClient(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 78
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: removeHttpClient()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public saveDefaultHttpRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V
    .locals 2
    .parameter "retryHandler"

    .prologue
    .line 114
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: saveDefaultHttpRetryHandler()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setCancelToastEnabled(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 82
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "MmsCancelDownloadImpl: setCancelEnabled()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setWaitingDataCnxn(Z)V
    .locals 2
    .parameter "isWaiting"

    .prologue
    .line 105
    const-string v0, "Mms/MmsCancelDownloadImpl"

    const-string v1, "setWaitingDataCnxn() in default"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
