.class public Lcom/android/emailcommon/utility/EmailClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "EmailClientConnectionManager.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final STANDARD_PORT:I = 0x50

.field private static final STANDARD_SSL_PORT:I = 0x1bb


# instance fields
.field private final mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V
    .locals 0
    .parameter "params"
    .parameter "registry"
    .parameter "keyManager"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 59
    iput-object p3, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    .line 60
    return-void
.end method

.method public static makeScheme(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "useSsl"
    .parameter "trustAllServerCerts"
    .parameter "clientCertAlias"

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 131
    invoke-static {p2, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "httpts"

    goto :goto_0

    :cond_1
    const-string v0, "https"

    goto :goto_0

    :cond_2
    const-string v0, "http"

    goto :goto_0
.end method

.method private static makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "clientCertAlias"
    .parameter "trustAllServerCerts"

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, safeAlias:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "httpts"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+clientCert+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "https"

    goto :goto_0
.end method

.method public static newInstance(Lorg/apache/http/params/HttpParams;ZI)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 7
    .parameter "params"
    .parameter "ssl"
    .parameter "port"

    .prologue
    const/16 v3, 0x1bb

    .line 64
    new-instance v0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;-><init>()V

    .line 67
    .local v0, keyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 68
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    if-eqz p1, :cond_0

    const/16 v2, 0x50

    :goto_0
    invoke-direct {v4, v5, v6, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 71
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(ZLjavax/net/ssl/KeyManager;)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v6

    if-eqz p1, :cond_1

    move v2, p2

    :goto_1
    invoke-direct {v4, v5, v6, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(ZLjavax/net/ssl/KeyManager;)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v5

    if-eqz p1, :cond_2

    .end local p2
    :goto_2
    invoke-direct {v2, v4, v5, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 78
    new-instance v2, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V

    return-object v2

    .restart local p2
    :cond_0
    move v2, p2

    .line 68
    goto :goto_0

    :cond_1
    move v2, v3

    .line 71
    goto :goto_1

    :cond_2
    move p2, v3

    .line 74
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized hasDetectedUnsatisfiedCertReq(J)Z
    .locals 2
    .parameter "since"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->getLastCertReqTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .parameter "context"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 91
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, schemeName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 94
    .local v0, existing:Lorg/apache/http/conn/scheme/Scheme;
    if-nez v0, :cond_0

    .line 99
    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    move-result-object v1

    .line 101
    .local v1, keyManager:Ljavax/net/ssl/KeyManager;
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(ZI)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v4

    .line 103
    .local v4, underlying:Landroid/net/SSLCertificateSocketFactory;
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/KeyManager;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/net/SSLCertificateSocketFactory;->setKeyManagers([Ljavax/net/ssl/KeyManager;)V

    .line 104
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v6, v4}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iget v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v1           #keyManager:Ljavax/net/ssl/KeyManager;
    .end local v4           #underlying:Landroid/net/SSLCertificateSocketFactory;
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    .end local v0           #existing:Lorg/apache/http/conn/scheme/Scheme;
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #schemeName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized unregisterClientCert(Ljava/lang/String;Z)V
    .locals 4
    .parameter "clientCertAlias"
    .parameter "trustAllServerCerts"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 117
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {p1, p2}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, schemeName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 119
    .local v0, existing:Lorg/apache/http/conn/scheme/Scheme;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    .end local v0           #existing:Lorg/apache/http/conn/scheme/Scheme;
    .end local v1           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #schemeName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
