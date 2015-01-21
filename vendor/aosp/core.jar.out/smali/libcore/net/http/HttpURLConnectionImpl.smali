.class Llibcore/net/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# instance fields
.field private final defaultPort:I

.field protected httpEngine:Llibcore/net/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private proxy:Ljava/net/Proxy;

.field private final rawRequestHeaders:Llibcore/net/http/RawHeaders;

.field private redirectionCount:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1
    .parameter "url"
    .parameter "port"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 61
    new-instance v0, Llibcore/net/http/RawHeaders;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    .line 70
    iput p2, p0, Llibcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 75
    iput-object p3, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 76
    return-void
.end method

.method private getAuthorizationCredentials(Llibcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "responseHeaders"
    .parameter "challengeHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {p1, p2}, Llibcore/net/http/HeaderParser;->parseChallenges(Llibcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 445
    .local v3, challenges:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/Challenge;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    new-instance v7, Ljava/io/IOException;

    const-string v8, "No authentication challenges found"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 449
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/net/http/Challenge;

    .line 451
    .local v2, challenge:Llibcore/net/http/Challenge;
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v8

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Llibcore/net/http/Challenge;->realm:Ljava/lang/String;

    iget-object v11, v2, Llibcore/net/http/Challenge;->scheme:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v11}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 454
    .local v0, auth:Ljava/net/PasswordAuthentication;
    if-eqz v0, :cond_1

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, usernameAndPassword:Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 461
    .local v1, bytes:[B
    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, encoded:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Llibcore/net/http/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    .end local v0           #auth:Ljava/net/PasswordAuthentication;
    .end local v1           #bytes:[B
    .end local v2           #challenge:Llibcore/net/http/Challenge;
    .end local v4           #encoded:Ljava/lang/String;
    .end local v6           #usernameAndPassword:Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getConnectToHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToPort()I
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 232
    .local v0, hostPort:I
    :goto_0
    if-gez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v0

    .end local v0           #hostPort:I
    :cond_0
    return v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private getResponse()Llibcore/net/http/HttpEngine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 286
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    .line 314
    :goto_0
    return-object v5

    .line 294
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 300
    .local v1, requestBody:Ljava/io/OutputStream;
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->hasRecycledConnection()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_0

    instance-of v5, v1, Llibcore/net/http/RetryableOutputStream;

    if-eqz v5, :cond_2

    .line 302
    :cond_0
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 303
    iget-object v5, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v6, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    const/4 v7, 0x0

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    .end local v1           #requestBody:Ljava/io/OutputStream;
    invoke-virtual {p0, v5, v6, v7, v1}, Llibcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    .line 292
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    :try_start_0
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->sendRequest()V

    .line 293
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->processResponseHeaders()Llibcore/net/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    .line 312
    .local v3, retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    sget-object v5, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_3

    .line 313
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 314
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    goto :goto_0

    .line 307
    .end local v3           #retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v1       #requestBody:Ljava/io/OutputStream;
    :cond_2
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 308
    throw v0

    .line 320
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #requestBody:Ljava/io/OutputStream;
    .restart local v3       #retry:Llibcore/net/http/HttpURLConnectionImpl$Retry;
    :cond_3
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 321
    .local v4, retryMethod:Ljava/lang/String;
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 328
    .restart local v1       #requestBody:Ljava/io/OutputStream;
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    .line 329
    .local v2, responseCode:I
    const/16 v5, 0x12c

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12d

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12e

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12f

    if-ne v2, v5, :cond_5

    .line 331
    :cond_4
    const-string v4, "GET"

    .line 332
    const/4 v1, 0x0

    .line 335
    :cond_5
    if-eqz v1, :cond_6

    instance-of v5, v1, Llibcore/net/http/RetryableOutputStream;

    if-nez v5, :cond_6

    .line 336
    new-instance v5, Ljava/net/HttpRetryException;

    const-string v6, "Cannot retry streamed HTTP body"

    iget-object v7, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v7}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 340
    :cond_6
    sget-object v5, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_7

    .line 341
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v5}, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 344
    :cond_7
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 346
    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v6}, Llibcore/net/http/HttpEngine;->getConnection()Llibcore/net/http/HttpConnection;

    move-result-object v6

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    .end local v1           #requestBody:Ljava/io/OutputStream;
    invoke-virtual {p0, v4, v5, v6, v1}, Llibcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    goto :goto_1
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 245
    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz v1, :cond_1

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    .line 251
    :try_start_0
    iget-boolean v1, p0, Ljava/net/URLConnection;->doOutput:Z

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "GET"

    if-ne v1, v2, :cond_3

    .line 255
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "initHttpEngine: implies a POST method"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    const-string v1, "POST"

    iput-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 262
    :cond_2
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v2, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Llibcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 265
    throw v0

    .line 257
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "POST"

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "PUT"

    if-eq v1, v2, :cond_2

    .line 259
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private processResponseHeaders()Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 406
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    :goto_0
    return-object v3

    .line 369
    :sswitch_0
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_0
    :sswitch_1
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    iget-object v4, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v4

    iget-object v5, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {p0, v3, v4, v5}, Llibcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z

    move-result v0

    .line 377
    .local v0, credentialsFound:Z
    if-eqz v0, :cond_1

    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    :cond_1
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 383
    .end local v0           #credentialsFound:Z
    :sswitch_2
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 386
    :cond_2
    iget v3, p0, Llibcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llibcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    .line 387
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Too many redirects"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_3
    const-string v3, "Location"

    invoke-virtual {p0, v3}, Llibcore/net/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, location:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 391
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 393
    :cond_4
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 394
    .local v2, previousUrl:Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 395
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 396
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 398
    :cond_5
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/net/URL;->getEffectivePort()I

    move-result v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getEffectivePort()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 400
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 402
    :cond_6
    sget-object v3, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 519
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    if-nez p1, :cond_1

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public final connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 81
    :try_start_0
    iget-object v3, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->sendRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 84
    throw v0

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, exIo:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[CDS] fix other exception in HttpUrlConnection"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    iput-object v2, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 91
    throw v2
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method final getChunkLength()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    return v0
.end method

.method final getDefaultPort()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 117
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    .line 118
    .local v1, response:Llibcore/net/http/HttpEngine;
    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 120
    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 124
    .end local v1           #response:Llibcore/net/http/HttpEngine;
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method final getFixedContentLength()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fieldName"

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    .line 148
    .local v1, rawHeaders:Llibcore/net/http/RawHeaders;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 152
    .end local v1           #rawHeaders:Llibcore/net/http/RawHeaders;
    :goto_0
    return-object v2

    .line 148
    .restart local v1       #rawHeaders:Llibcore/net/http/RawHeaders;
    :cond_0
    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 151
    .end local v1           #rawHeaders:Llibcore/net/http/RawHeaders;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
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
    .line 166
    :try_start_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHttpEngine()Llibcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v2, p0, Ljava/net/URLConnection;->doInput:Z

    if-nez v2, :cond_0

    .line 182
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    .line 193
    .local v0, response:Llibcore/net/http/HttpEngine;
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 194
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_1
    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v1

    .line 198
    .local v1, result:Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 199
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_2
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Llibcore/net/http/HttpURLConnectionImpl;->connect()V

    .line 207
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 208
    .local v0, result:Ljava/io/OutputStream;
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v1}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, connectToAddress:Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method final getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
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
    .line 173
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

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
    .line 501
    invoke-direct {p0}, Llibcore/net/http/HttpURLConnectionImpl;->getResponse()Llibcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;
    .locals 6
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Llibcore/net/http/HttpEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V

    return-object v0
.end method

.method final processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z
    .locals 6
    .parameter "responseCode"
    .parameter "response"
    .parameter "successorRequestHeaders"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x197

    .line 418
    if-eq p1, v4, :cond_0

    const/16 v3, 0x191

    if-eq p1, v3, :cond_0

    .line 419
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 423
    :cond_0
    if-ne p1, v4, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 426
    .local v0, challengeHeader:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Llibcore/net/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Llibcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, credentials:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 428
    const/4 v3, 0x0

    .line 436
    :goto_1
    return v3

    .line 423
    .end local v0           #challengeHeader:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_1
    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 432
    .restart local v0       #challengeHeader:Ljava/lang/String;
    .restart local v1       #credentials:Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    const-string v2, "Proxy-Authorization"

    .line 435
    .local v2, fieldName:Ljava/lang/String;
    :goto_2
    invoke-virtual {p3, v2, v1}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x1

    goto :goto_1

    .line 432
    .end local v2           #fieldName:Ljava/lang/String;
    :cond_3
    const-string v2, "Authorization"

    goto :goto_2
.end method

.method final setProxy(Ljava/net/Proxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 493
    iput-object p1, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 494
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 531
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 534
    :try_start_0
    iget-object v2, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v2}, Llibcore/net/http/HttpEngine;->getConnection()Llibcore/net/http/HttpConnection;

    move-result-object v1

    .line 536
    .local v1, httpConnect:Llibcore/net/http/HttpConnection;
    if-eqz v1, :cond_0

    .line 537
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[CDS] setReadTimeout in HttpUrlConnectionImpl"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v1, p1}, Llibcore/net/http/HttpConnection;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v1           #httpConnect:Llibcore/net/http/HttpConnection;
    :cond_0
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 509
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    if-nez p1, :cond_1

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
