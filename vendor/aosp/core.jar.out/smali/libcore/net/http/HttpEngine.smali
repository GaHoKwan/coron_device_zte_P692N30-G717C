.class public Llibcore/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field private static final GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse; = null

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

.field protected connection:Llibcore/net/http/HttpConnection;

.field private connectionReleased:Z

.field private httpMinorVersion:I

.field protected final method:Ljava/lang/String;

.field protected final policy:Llibcore/net/http/HttpURLConnectionImpl;

.field private requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

.field private final requestHeaders:Llibcore/net/http/RequestHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field private responseBodyIn:Ljava/io/InputStream;

.field private final responseCache:Ljava/net/ResponseCache;

.field private responseHeaders:Llibcore/net/http/ResponseHeaders;

.field private responseSource:Ljava/net/ResponseSource;

.field sendChunked:Z

.field private sentRequestMillis:J

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Llibcore/net/http/HttpEngine$1;

    invoke-direct {v0}, Llibcore/net/http/HttpEngine$1;-><init>()V

    sput-object v0, Llibcore/net/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V
    .locals 4
    .parameter "policy"
    .parameter "method"
    .parameter "requestHeaders"
    .parameter "connection"
    .parameter "requestBodyOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    .line 136
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 152
    const/4 v1, 0x1

    iput v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 189
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    .line 190
    iput-object p2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    .line 191
    iput-object p4, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 192
    iput-object p5, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    .line 195
    :try_start_0
    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    new-instance v1, Llibcore/net/http/RequestHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3, p3}, Llibcore/net/http/RawHeaders;-><init>(Llibcore/net/http/RawHeaders;)V

    invoke-direct {v1, v2, v3}, Llibcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    .line 201
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getRequestLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    iget v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v1, :cond_0

    const-string v0, "HTTP/1.0"

    .line 731
    .local v0, protocol:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 730
    .end local v0           #protocol:Ljava/lang/String;
    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    .line 566
    :goto_0
    return-object v0

    .line 552
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    new-instance v0, Llibcore/net/http/ChunkedInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 557
    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    goto :goto_0

    .line 566
    :cond_2
    new-instance v0, Llibcore/net/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_0
.end method

.method private hasRequestBody()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "transferStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->stripContentEncoding()V

    .line 540
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->stripContentLength()V

    .line 541
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v5, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    .line 253
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v5, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v8, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v8}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v8}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 259
    .local v0, candidate:Ljava/net/CacheResponse;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 264
    .local v4, responseHeadersMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 265
    invoke-virtual {p0, v0}, Llibcore/net/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 268
    :cond_2
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-static {v4}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v3

    .line 273
    .local v3, rawResponseHeaders:Llibcore/net/http/RawHeaders;
    new-instance v5, Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v5, v6, v3}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 275
    .local v1, now:J
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5, v1, v2, v6}, Llibcore/net/http/ResponseHeaders;->chooseResponseSource(JLlibcore/net/http/RequestHeaders;)Ljava/net/ResponseSource;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    .line 276
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    sget-object v6, Ljava/net/ResponseSource;->CACHE:Ljava/net/ResponseSource;

    if-ne v5, v6, :cond_4

    .line 277
    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 278
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v5, v6}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    .line 279
    :cond_4
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    sget-object v6, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    if-ne v5, v6, :cond_5

    .line 280
    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 281
    :cond_5
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    sget-object v6, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    if-ne v5, v6, :cond_6

    .line 282
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 284
    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "CONNECT"

    if-ne v0, v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v0, v1}, Llibcore/net/http/ResponseHeaders;->isCacheable(Llibcore/net/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v3

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 697
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 700
    :cond_0
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 701
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {p0, v4}, Llibcore/net/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 704
    :cond_1
    iget v3, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-lez v3, :cond_2

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 705
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "Keep-Alive"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 708
    :cond_2
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 709
    const/4 v3, 0x1

    iput-boolean v3, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    .line 710
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 713
    :cond_3
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 714
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 717
    :cond_4
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v1

    .line 718
    .local v1, ifModifiedSince:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    .line 719
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 722
    :cond_5
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 723
    .local v0, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v0, :cond_6

    .line 724
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 727
    :cond_6
    return-void
.end method

.method private readHeaders(Llibcore/net/http/RawHeaders;)V
    .locals 4
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    :goto_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v2}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    invoke-virtual {p1, v1}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 626
    .local v0, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    .line 627
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 629
    :cond_1
    return-void
.end method

.method private readResponseHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    :cond_0
    new-instance v0, Llibcore/net/http/RawHeaders;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 573
    .local v0, headers:Llibcore/net/http/RawHeaders;
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    .line 575
    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 576
    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 577
    return-void
.end method

.method private requestString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 735
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 736
    .local v1, url:Ljava/net/URL;
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, fileOnly:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 741
    const-string v0, "/"

    goto :goto_0

    .line 742
    :cond_2
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->connect()V

    .line 293
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 297
    :cond_2
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    .line 298
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 299
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    .line 301
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->initRequestBodyOut()V

    .line 304
    :cond_3
    return-void
.end method

.method private setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1
    .parameter "headers"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    .line 369
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getHttpMinorVersion()I

    move-result v0

    iput v0, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 370
    if-eqz p2, :cond_1

    .line 371
    invoke-direct {p0, p2}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 373
    :cond_1
    return-void
.end method

.method private writeRequestHeaders(I)V
    .locals 6
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    iget-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 648
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 651
    :cond_0
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    .line 652
    .local v1, headersToSend:Llibcore/net/http/RawHeaders;
    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 654
    .local v0, bytes:[B
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    array-length v2, v0

    add-int/2addr v2, p1

    const v3, 0x8000

    if-gt v2, v3, :cond_1

    .line 655
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    array-length v4, v0

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 658
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 659
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 660
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1
    .parameter "cacheResponse"

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 470
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 474
    :cond_0
    return-void
.end method

.method protected connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->openSocketConnection()Llibcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 313
    :cond_0
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Llibcore/net/http/HttpConnection;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    return-object v0
.end method

.method protected final getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 770
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, agent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #agent:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #agent:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method protected getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 675
    .local v1, fixedContentLength:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 676
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v1}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    .line 684
    :cond_0
    :goto_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    return-object v2

    .line 677
    :cond_1
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->setChunked()V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v2, v2, Llibcore/net/http/RetryableOutputStream;

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v2, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v2}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 681
    .local v0, contentLength:I
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v0}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    goto :goto_0
.end method

.method protected final getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 775
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 776
    .local v0, port:I
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, result:Ljava/lang/String;
    if-lez v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    :cond_0
    return-object v1
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 386
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Llibcore/net/http/RequestHeaders;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    return-object v0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Llibcore/net/http/ResponseHeaders;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 401
    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    return-object v0
.end method

.method protected getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final hasRecycledConnection()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 584
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 587
    .local v0, responseCode:I
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v4, "HEAD"

    if-ne v3, v4, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v1

    .line 591
    :cond_1
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v4, "CONNECT"

    if-eq v3, v4, :cond_3

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 595
    goto :goto_0

    .line 603
    :cond_3
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 604
    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected initRequestBodyOut()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 327
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    .line 328
    .local v0, chunkLength:I
    if-gtz v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    .line 330
    if-ne v0, v3, :cond_1

    .line 331
    const/16 v0, 0x400

    .line 335
    :cond_1
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 336
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No socket to write to; was a POST cached?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_2
    iget v2, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v2, :cond_3

    .line 340
    const/4 v2, 0x0

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    .line 343
    :cond_3
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 344
    .local v1, fixedContentLength:I
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v2, :cond_4

    .line 358
    :goto_0
    return-void

    .line 346
    :cond_4
    if-eq v1, v3, :cond_5

    .line 347
    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 348
    new-instance v2, Llibcore/net/http/FixedLengthOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v1}, Llibcore/net/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 349
    :cond_5
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_6

    .line 350
    invoke-direct {p0, v3}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 351
    new-instance v2, Llibcore/net/http/ChunkedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Llibcore/net/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 352
    :cond_6
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 353
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    invoke-direct {p0, v2}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 354
    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v2, v3}, Llibcore/net/http/RetryableOutputStream;-><init>(I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 356
    :cond_7
    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    invoke-direct {v2}, Llibcore/net/http/RetryableOutputStream;-><init>()V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0
.end method

.method protected final openSocketConnection()Llibcore/net/http/HttpConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Llibcore/net/http/HttpURLConnectionImpl;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->requiresTunnel()Z

    move-result v5

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v6}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Llibcore/net/http/HttpConnection;->connect(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;ZI)Llibcore/net/http/HttpConnection;

    move-result-object v1

    .line 318
    .local v1, result:Llibcore/net/http/HttpConnection;
    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 319
    .local v0, proxy:Ljava/net/Proxy;
    if-eqz v0, :cond_0

    .line 320
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v0}, Llibcore/net/http/HttpURLConnectionImpl;->setProxy(Ljava/net/Proxy;)V

    .line 322
    :cond_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnection;->setSoTimeout(I)V

    .line 323
    return-object v1
.end method

.method public final readResponse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    if-nez v3, :cond_2

    .line 797
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "readResponse() without sendRequest()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 800
    :cond_2
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    invoke-virtual {v3}, Ljava/net/ResponseSource;->requiresConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    iget-wide v3, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 805
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v3, v3, Llibcore/net/http/RetryableOutputStream;

    if-eqz v3, :cond_5

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v3, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v3}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v1

    .line 808
    .local v1, contentLength:I
    :goto_1
    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 811
    .end local v1           #contentLength:I
    :cond_3
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v3, :cond_4

    .line 812
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    invoke-virtual {v3}, Llibcore/net/http/AbstractHttpOutputStream;->close()V

    .line 813
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v3, v3, Llibcore/net/http/RetryableOutputStream;

    if-eqz v3, :cond_4

    .line 814
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v3, Llibcore/net/http/RetryableOutputStream;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v3, v4}, Llibcore/net/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 818
    :cond_4
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 819
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 821
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->readResponseHeaders()V

    .line 822
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-wide v4, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Llibcore/net/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 824
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    sget-object v4, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    if-ne v3, v4, :cond_7

    .line 825
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3, v4}, Llibcore/net/http/ResponseHeaders;->validate(Llibcore/net/http/ResponseHeaders;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 826
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 827
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3, v4}, Llibcore/net/http/ResponseHeaders;->combine(Llibcore/net/http/ResponseHeaders;)Llibcore/net/http/ResponseHeaders;

    move-result-object v0

    .line 828
    .local v0, combinedHeaders:Llibcore/net/http/ResponseHeaders;
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v3}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 829
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v3, v3, Ljava/net/ExtendedResponseCache;

    if-eqz v3, :cond_0

    .line 830
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v2, Ljava/net/ExtendedResponseCache;

    .line 831
    .local v2, httpResponseCache:Ljava/net/ExtendedResponseCache;
    invoke-interface {v2}, Ljava/net/ExtendedResponseCache;->trackConditionalCacheHit()V

    .line 832
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/net/ExtendedResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 805
    .end local v0           #combinedHeaders:Llibcore/net/http/ResponseHeaders;
    .end local v2           #httpResponseCache:Ljava/net/ExtendedResponseCache;
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 836
    :cond_6
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 840
    :cond_7
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 841
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->maybeCache()V

    .line 844
    :cond_8
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getTransferStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method final readTrailers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    .line 616
    return-void
.end method

.method public final release(Z)V
    .locals 4
    .parameter "reusable"

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v1, v2, :cond_0

    .line 483
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 486
    :cond_0
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_6

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    .line 490
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    iget-boolean v1, v1, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-nez v1, :cond_1

    .line 491
    const/4 p1, 0x0

    .line 497
    :cond_1
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->hasConnectionClose()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v2, "CONNECT"

    if-eq v1, v2, :cond_2

    .line 498
    const/4 p1, 0x0

    .line 502
    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v1}, Llibcore/net/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    const/4 p1, 0x0

    .line 506
    :cond_3
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Llibcore/net/http/UnknownLengthHttpInputStream;

    if-eqz v1, :cond_4

    .line 507
    const/4 p1, 0x0

    .line 510
    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    .line 513
    :try_start_0
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_5
    :goto_0
    if-nez p1, :cond_7

    .line 520
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    .line 521
    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    .line 527
    :cond_6
    :goto_1
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/io/IOException;
    const/4 p1, 0x0

    goto :goto_0

    .line 522
    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v1, :cond_6

    .line 523
    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 524
    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_1
.end method

.method protected requiresTunnel()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public final sendRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 218
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->initResponseSource()V

    .line 219
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Ljava/net/ExtendedResponseCache;

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Ljava/net/ExtendedResponseCache;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    invoke-interface {v1, v2}, Ljava/net/ExtendedResponseCache;->trackResponse(Ljava/net/ResponseSource;)V

    .line 229
    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    invoke-virtual {v1}, Ljava/net/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    sget-object v2, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    if-ne v1, v2, :cond_3

    .line 231
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 233
    :cond_3
    sget-object v1, Ljava/net/ResponseSource;->CACHE:Ljava/net/ResponseSource;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    .line 234
    sget-object v1, Llibcore/net/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 235
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    .line 236
    .local v0, rawResponseHeaders:Llibcore/net/http/RawHeaders;
    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 239
    .end local v0           #rawResponseHeaders:Llibcore/net/http/RawHeaders;
    :cond_4
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Ljava/net/ResponseSource;

    invoke-virtual {v1}, Ljava/net/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    .line 241
    :cond_5
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_0

    .line 242
    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_0
.end method
