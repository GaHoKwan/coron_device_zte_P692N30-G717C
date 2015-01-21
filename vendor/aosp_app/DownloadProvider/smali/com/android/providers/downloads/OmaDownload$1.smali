.class final Lcom/android/providers/downloads/OmaDownload$1;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "OmaDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/OmaDownload;->installNotify(Lcom/android/providers/downloads/OmaDescription;Landroid/os/Handler;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    .line 114
    const-string v0, "DownloadManager/OMA"

    const-string v1, "Retry the request..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
