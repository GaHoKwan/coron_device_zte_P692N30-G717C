.class public Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultTrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuiteNames:[Ljava/lang/String;

.field private enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field private enabledProtocols:[Ljava/lang/String;

.field private keyManager:Ljavax/net/ssl/X509KeyManager;

.field private need_client_auth:Z

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field private want_client_auth:Z


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V
    .locals 3
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .parameter "clientSessionContext"
    .parameter "serverSessionContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 78
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 82
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 103
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 104
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 111
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 112
    :cond_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 118
    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_3

    .line 119
    :cond_1
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 139
    :goto_1
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 141
    return-void

    .line 114
    :cond_2
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_1
.end method

.method private static createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 364
    .local v2, kmf:Ljavax/net/ssl/KeyManagerFactory;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 365
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 366
    .local v3, kms:[Ljavax/net/ssl/KeyManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 367
    .end local v2           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    .end local v3           #kms:[Ljavax/net/ssl/KeyManager;
    :catch_0
    move-exception v1

    .line 368
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/KeyManagementException;

    invoke-direct {v4, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 369
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 370
    .local v1, e:Ljava/security/KeyStoreException;
    new-instance v4, Ljava/security/KeyManagementException;

    invoke-direct {v4, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 371
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_2
    move-exception v1

    .line 372
    .local v1, e:Ljava/security/UnrecoverableKeyException;
    new-instance v4, Ljava/security/KeyManagementException;

    invoke-direct {v4, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 401
    .local v2, tmf:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 402
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 403
    .local v3, tms:[Ljavax/net/ssl/TrustManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 404
    .local v4, trustManager:Ljavax/net/ssl/X509TrustManager;
    return-object v4

    .line 405
    .end local v2           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v3           #tms:[Ljavax/net/ssl/TrustManager;
    .end local v4           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 407
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 408
    .local v1, e:Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 7
    .parameter "kms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 377
    .local v2, km:Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_0

    .line 378
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    return-object v2

    .line 376
    .restart local v2       #km:Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    :cond_1
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find an X509KeyManager in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 7
    .parameter "tms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 413
    .local v3, tm:Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 414
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    return-object v3

    .line 412
    .restart local v3       #tm:Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    :cond_1
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find an X509TrustManager in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 145
    .local v0, result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .end local v0           #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    .restart local v0       #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 153
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 354
    .local v0, result:Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 358
    :cond_0
    return-object v0
.end method

.method public static getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 390
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 391
    .local v0, result:Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 395
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 346
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .line 213
    .local v0, enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 214
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 215
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0           #enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method protected getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->DEFAULT_CIPHER_SUITES:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 197
    :goto_0
    return-object v1

    .line 191
    :cond_0
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 192
    .local v0, result:Ljava/security/SecureRandom;
    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0           #result:Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0       #result:Ljava/security/SecureRandom;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 196
    :cond_1
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method protected getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method protected getUseClientMode()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getWantClientAuth()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected setEnableSessionCreation(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 328
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 329
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 6
    .parameter "suites"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "suites == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_0
    array-length v3, p1

    new-array v0, v3, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 231
    .local v0, cipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 232
    aget-object v2, p1, v1

    .line 233
    .local v2, suite:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suites["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_1
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    aput-object v3, v0, v1

    .line 237
    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    iget-boolean v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v3, :cond_3

    .line 238
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v2           #suite:Ljava/lang/String;
    :cond_4
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 242
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 243
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 5
    .parameter "protocols"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 261
    aget-object v1, p1, v0

    .line 262
    .local v1, protocol:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v1           #protocol:Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 270
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1
    .parameter "need"

    .prologue
    .line 292
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 295
    return-void
.end method

.method protected setUseClientMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 277
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 278
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1
    .parameter "want"

    .prologue
    .line 309
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 312
    return-void
.end method
