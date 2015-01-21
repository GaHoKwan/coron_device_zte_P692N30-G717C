.class public Lcom/android/providers/downloads/DownloadInfo$PreemptiveAuth;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreemptiveAuth"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 744
    .local v1, authState:Lorg/apache/http/auth/AuthState;
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-nez v5, :cond_1

    .line 745
    const-string v5, "preemptive-auth"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthScheme;

    .line 747
    .local v0, authScheme:Lorg/apache/http/auth/AuthScheme;
    const-string v5, "http.auth.credentials-provider"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/CredentialsProvider;

    .line 749
    .local v3, credsProvider:Lorg/apache/http/client/CredentialsProvider;
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    .line 751
    .local v4, targetHost:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    .line 752
    new-instance v5, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 756
    .local v2, creds:Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_0

    .line 757
    new-instance v5, Lorg/apache/http/HttpException;

    const-string v6, "No credentials for preemptive authentication"

    invoke-direct {v5, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 759
    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 760
    invoke-virtual {v1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 764
    .end local v0           #authScheme:Lorg/apache/http/auth/AuthScheme;
    .end local v2           #creds:Lorg/apache/http/auth/Credentials;
    .end local v3           #credsProvider:Lorg/apache/http/client/CredentialsProvider;
    .end local v4           #targetHost:Lorg/apache/http/HttpHost;
    :cond_1
    return-void
.end method
