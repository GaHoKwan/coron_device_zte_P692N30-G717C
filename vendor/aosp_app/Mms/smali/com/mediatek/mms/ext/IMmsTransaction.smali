.class public interface abstract Lcom/mediatek/mms/ext/IMmsTransaction;
.super Ljava/lang/Object;
.source "IMmsTransaction.java"


# virtual methods
.method public abstract getHttpRequestRetryHandler()Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.end method

.method public abstract getMmsServerFailCount()I
.end method

.method public abstract isGminiMultiTransactionEnabled()Z
.end method

.method public abstract isPendingMmsNeedRestart(Landroid/net/Uri;I)Z
.end method

.method public abstract isRestartPendingsEnabled()Z
.end method

.method public abstract isSyncStartPdpEnabled()Z
.end method

.method public abstract setMmsServerStatusCode(I)V
.end method

.method public abstract setSoSendTimeoutProperty()V
.end method

.method public abstract startServiceForeground(Landroid/app/Service;)V
.end method

.method public abstract stopServiceForeground(Landroid/app/Service;)V
.end method

.method public abstract updateConnection()Z
.end method
