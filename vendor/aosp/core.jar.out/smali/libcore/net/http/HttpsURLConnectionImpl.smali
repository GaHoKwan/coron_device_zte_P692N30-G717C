.class final Llibcore/net/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpsURLConnectionImpl$1;,
        Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 2
    .parameter "url"
    .parameter "port"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 47
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILlibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 6
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 52
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Llibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 53
    return-void
.end method

.method private checkConnected()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 241
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 165
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    .line 166
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    .line 120
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 68
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 72
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 226
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 246
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 251
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 256
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .parameter "posn"

    .prologue
    .line 261
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getHttpEngine()Llibcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 78
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 83
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    return-object v2

    .line 80
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 82
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 83
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 110
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 113
    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 114
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 100
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 104
    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 291
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 89
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 94
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    return-object v2

    .line 91
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 94
    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 306
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    .line 307
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .parameter "chunkLength"

    .prologue
    .line 371
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    .line 372
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .parameter "timeoutMillis"

    .prologue
    .line 341
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    .line 342
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 311
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    .line 312
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 316
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    .line 317
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 321
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    .line 322
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .parameter "contentLength"

    .prologue
    .line 366
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    .line 367
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 326
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    .line 327
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .parameter "followRedirects"

    .prologue
    .line 159
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    .line 160
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .parameter "timeoutMillis"

    .prologue
    .line 351
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    .line 352
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 331
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 336
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
