.class public Lcom/android/providers/downloads/DownloadInfo$PersistentDigest;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentDigest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    const-string v2, "http.auth.target-scope"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 778
    .local v1, authState:Lorg/apache/http/auth/AuthState;
    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 780
    .local v0, authScheme:Lorg/apache/http/auth/AuthScheme;
    instance-of v2, v0, Lorg/apache/http/impl/auth/DigestScheme;

    if-eqz v2, :cond_0

    .line 781
    const-string v2, "preemptive-auth"

    invoke-interface {p2, v2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    .end local v0           #authScheme:Lorg/apache/http/auth/AuthScheme;
    :cond_0
    return-void
.end method
