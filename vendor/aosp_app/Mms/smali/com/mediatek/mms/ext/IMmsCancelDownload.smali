.class public interface abstract Lcom/mediatek/mms/ext/IMmsCancelDownload;
.super Ljava/lang/Object;
.source "IMmsCancelDownload.java"


# static fields
.field public static final STATE_ABORTED:I = 0x4

.field public static final STATE_CANCELLING:I = 0x2

.field public static final STATE_COMPLETE:I = 0x3

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_UNKNOWN:I


# virtual methods
.method public abstract addHttpClient(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)V
.end method

.method public abstract cancelDownload(Landroid/net/Uri;)V
.end method

.method public abstract getCancelToastEnabled()Z
.end method

.method public abstract getStateExt(Landroid/net/Uri;)I
.end method

.method public abstract getStateExt(Ljava/lang/String;)I
.end method

.method public abstract getWaitingDataCnxn()Z
.end method

.method public abstract init(Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;)V
.end method

.method public abstract isEnableCancelDownload()Z
.end method

.method public abstract markStateExt(Landroid/net/Uri;I)V
.end method

.method public abstract removeHttpClient(Ljava/lang/String;)V
.end method

.method public abstract saveDefaultHttpRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V
.end method

.method public abstract setCancelToastEnabled(Z)V
.end method

.method public abstract setWaitingDataCnxn(Z)V
.end method
