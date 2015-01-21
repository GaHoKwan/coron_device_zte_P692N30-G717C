.class public Lcom/mediatek/mms/ext/MmsTransactionImpl;
.super Landroid/content/ContextWrapper;
.source "MmsTransactionImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsTransaction;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsTransactionImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 153
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHttpRequestRetryHandler()Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "getHttpRequestRetryHandler"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    return-object v0
.end method

.method public getMmsServerFailCount()I
    .locals 2

    .prologue
    .line 69
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "getMmsServerFailCount"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isGminiMultiTransactionEnabled()Z
    .locals 2

    .prologue
    .line 159
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "isGminiMultiTransactionEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isPendingMmsNeedRestart(Landroid/net/Uri;I)Z
    .locals 1
    .parameter "pduUri"
    .parameter "failureType"

    .prologue
    .line 149
    invoke-static {p2}, Lcom/mediatek/mms/ext/MmsTransactionImpl;->isTransientFailure(I)Z

    move-result v0

    return v0
.end method

.method public isRestartPendingsEnabled()Z
    .locals 2

    .prologue
    .line 135
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "isRestartPendingsEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isSyncStartPdpEnabled()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "isSyncStartPdpEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setMmsServerStatusCode(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 80
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "setMmsServerStatusCode"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setSoSendTimeoutProperty()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "setSoSendTimeoutProperty"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public startServiceForeground(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 117
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "startServiceForeground"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public stopServiceForeground(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 126
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "stopServiceForeground"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public updateConnection()Z
    .locals 2

    .prologue
    .line 89
    const-string v0, "Mms/MmsTransactionImpl"

    const-string v1, "updateConnection"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
