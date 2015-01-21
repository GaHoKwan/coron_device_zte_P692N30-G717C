.class Lcom/baidu/pcs/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;,
        Lcom/baidu/pcs/HttpClientFactory$IdleConnectionMonitorThread;,
        Lcom/baidu/pcs/HttpClientFactory$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x7530

.field private static final HTTP_USER_AGENT:Ljava/lang/String; = "PCS_3rdApp"

.field private static final KEEP_ALIVE_DURATION_SECS:I = 0x19

.field private static final KEEP_ALIVE_INTERVAL_SECS:I = 0x1e


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 16

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 48
    .local v3, connParams:Lorg/apache/http/params/HttpParams;
    new-instance v12, Lcom/baidu/pcs/HttpClientFactory$1;

    invoke-direct {v12}, Lcom/baidu/pcs/HttpClientFactory$1;-><init>()V

    invoke-static {v3, v12}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 54
    const/16 v12, 0x14

    invoke-static {v3, v12}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 60
    .local v11, trustStore:Ljava/security/KeyStore;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 62
    new-instance v10, Lcom/baidu/pcs/HttpClientFactory$MySSLSocketFactory;

    invoke-direct {v10, v11}, Lcom/baidu/pcs/HttpClientFactory$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 63
    .local v10, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v12, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 66
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 67
    .local v9, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v14

    const/16 v15, 0x50

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 68
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    const/16 v14, 0x1bb

    invoke-direct {v12, v13, v10, v14}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v2, Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;

    invoke-direct {v2, v3, v9}, Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 73
    .local v2, cm:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v7, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 77
    .local v8, port:I
    if-eqz v5, :cond_0

    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    .line 78
    const-string v12, "hybrid"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "host: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "port: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, httpHost:Lorg/apache/http/HttpHost;
    new-instance v6, Lorg/apache/http/HttpHost;

    .end local v6           #httpHost:Lorg/apache/http/HttpHost;
    invoke-direct {v6, v5, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 81
    .restart local v6       #httpHost:Lorg/apache/http/HttpHost;
    const-string v12, "http.route.default-proxy"

    invoke-interface {v7, v12, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 84
    .end local v6           #httpHost:Lorg/apache/http/HttpHost;
    :cond_0
    const/16 v12, 0x7530

    invoke-static {v7, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    const/16 v12, 0x7530

    invoke-static {v7, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    sget-object v12, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v7, v12}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 88
    const-string v12, "UTF-8"

    invoke-static {v7, v12}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 91
    const-string v12, "PCS_3rdApp"

    invoke-static {v7, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .local v1, client:Lorg/apache/http/client/HttpClient;
    move-object v0, v1

    .line 123
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #cm:Lcom/baidu/pcs/HttpClientFactory$ClientConnectionManager;
    .end local v5           #host:Ljava/lang/String;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v8           #port:I
    .end local v9           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v10           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v11           #trustStore:Ljava/security/KeyStore;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v4

    .line 104
    .local v4, e:Ljava/security/KeyStoreException;
    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v4           #e:Ljava/security/KeyStoreException;
    :catch_1
    move-exception v4

    .line 107
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v4

    .line 110
    .local v4, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v4           #e:Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v4

    .line 113
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 116
    .local v4, e:Ljava/security/KeyManagementException;
    invoke-virtual {v4}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v4           #e:Ljava/security/KeyManagementException;
    :catch_5
    move-exception v4

    .line 119
    .local v4, e:Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v4}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0
.end method
