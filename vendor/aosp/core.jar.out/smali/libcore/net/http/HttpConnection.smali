.class final Llibcore/net/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpConnection$1;,
        Llibcore/net/http/HttpConnection$Address;
    }
.end annotation


# instance fields
.field private final address:Llibcore/net/http/HttpConnection$Address;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private recycled:Z

.field private final socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private unverifiedSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpConnection$Address;I)V
    .locals 7
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v4, 0x0

    iput-boolean v4, p0, Llibcore/net/http/HttpConnection;->recycled:Z

    .line 62
    iput-object p1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, socketCandidate:Ljava/net/Socket;
    #getter for: Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$000(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 71
    .local v0, addresses:[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 72
    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_1

    new-instance v3, Ljava/net/Socket;

    .end local v3           #socketCandidate:Ljava/net/Socket;
    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 76
    .restart local v3       #socketCandidate:Ljava/net/Socket;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v2

    #getter for: Llibcore/net/http/HttpConnection$Address;->socketPort:I
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$200(Llibcore/net/http/HttpConnection$Address;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    iput-object v3, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 87
    return-void

    .line 72
    :cond_1
    new-instance v3, Ljava/net/Socket;

    .end local v3           #socketCandidate:Ljava/net/Socket;
    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    goto :goto_1

    .line 79
    .restart local v3       #socketCandidate:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    .line 81
    throw v1

    .line 71
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpConnection$Address;ILlibcore/net/http/HttpConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Llibcore/net/http/HttpConnection;-><init>(Llibcore/net/http/HttpConnection$Address;I)V

    return-void
.end method

.method public static connect(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;ZI)Llibcore/net/http/HttpConnection;
    .locals 8
    .parameter "uri"
    .parameter "sslSocketFactory"
    .parameter "proxy"
    .parameter "requiresTunnel"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_0

    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 98
    .local v0, address:Llibcore/net/http/HttpConnection$Address;
    :goto_0
    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p4}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;

    move-result-object v6

    .line 128
    .end local v0           #address:Llibcore/net/http/HttpConnection$Address;
    :goto_1
    return-object v6

    .line 95
    :cond_0
    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, p2, p3}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 106
    .local v5, selector:Ljava/net/ProxySelector;
    invoke-virtual {v5, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v3, :cond_3

    .line 108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 109
    .local v4, selectedProxy:Ljava/net/Proxy;
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_2

    .line 115
    :try_start_0
    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, v4, p3}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V

    .line 117
    .restart local v0       #address:Llibcore/net/http/HttpConnection$Address;
    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p4}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 118
    .end local v0           #address:Llibcore/net/http/HttpConnection$Address;
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_2

    .line 128
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #selectedProxy:Ljava/net/Proxy;
    :cond_3
    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    new-instance v7, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v7, p0, p1}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v6, v7, p4}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 135
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 137
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 138
    return-void
.end method

.method public getAddress()Llibcore/net/http/HttpConnection$Address;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 161
    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 174
    :goto_0
    return-object v1

    .line 162
    :cond_1
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    .line 169
    const/16 v0, 0x80

    .line 170
    .local v0, bufferSize:I
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z
    invoke-static {v1}, Llibcore/net/http/HttpConnection$Address;->access$300(Llibcore/net/http/HttpConnection$Address;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 174
    .end local v0           #bufferSize:I
    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 170
    .restart local v0       #bufferSize:I
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 149
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 153
    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 153
    :cond_2
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method protected isEligibleForRecycling()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Llibcore/net/http/HttpConnection;->recycled:Z

    return v0
.end method

.method public setRecycled()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpConnection;->recycled:Z

    .line 246
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "readTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 142
    return-void
.end method

.method public setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 5
    .parameter "sslSocketFactory"
    .parameter "tlsTolerant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 197
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriPort:I
    invoke-static {v3}, Llibcore/net/http/HttpConnection$Address;->access$500(Llibcore/net/http/HttpConnection$Address;)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    .line 200
    if-eqz p2, :cond_0

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    instance-of v1, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 202
    .local v0, openSslSocket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    invoke-virtual {v0, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 203
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v1}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 209
    .end local v0           #openSslSocket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    :goto_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 210
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SSLv3"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .locals 3
    .parameter "hostnameVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 226
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
