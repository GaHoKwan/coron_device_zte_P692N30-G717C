.class public final Llibcore/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/net/ExtendedResponseCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpResponseCache$2;,
        Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;,
        Llibcore/net/http/HttpResponseCache$EntryCacheResponse;,
        Llibcore/net/http/HttpResponseCache$Entry;,
        Llibcore/net/http/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Llibcore/io/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .parameter "directory"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 79
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Llibcore/io/DiskLruCache;->open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    .line 80
    return-void
.end method

.method private abortQuietly(Llibcore/io/DiskLruCache$Editor;)V
    .locals 1
    .parameter "editor"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p1}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$408(Llibcore/net/http/HttpResponseCache;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$508(Llibcore/net/http/HttpResponseCache;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$600(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;
    .locals 1
    .parameter "httpConnection"

    .prologue
    .line 212
    instance-of v0, p1, Llibcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Llibcore/net/http/HttpURLConnectionImpl;

    .end local p1
    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 214
    .restart local p1
    :cond_0
    instance-of v0, p1, Llibcore/net/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    .line 215
    check-cast p1, Llibcore/net/http/HttpsURLConnectionImpl;

    .end local p1
    invoke-virtual {p1}, Llibcore/net/http/HttpsURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 217
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2
    .parameter "snapshot"

    .prologue
    .line 511
    new-instance v0, Llibcore/net/http/HttpResponseCache$1;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Llibcore/net/http/HttpResponseCache$1;-><init>(Ljava/io/InputStream;Llibcore/io/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 84
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 85
    .local v2, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 86
    .local v1, md5bytes:[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 87
    .end local v1           #md5bytes:[B
    .end local v2           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 6
    .parameter "uri"
    .parameter "requestMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, key:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v5, v2}, Llibcore/io/DiskLruCache;->get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v3

    .line 99
    .local v3, snapshot:Llibcore/io/DiskLruCache$Snapshot;
    if-nez v3, :cond_0

    .line 113
    .end local v3           #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :goto_0
    return-object v4

    .line 102
    .restart local v3       #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :cond_0
    new-instance v1, Llibcore/net/http/HttpResponseCache$Entry;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v1, entry:Llibcore/net/http/HttpResponseCache$Entry;
    invoke-virtual {v1, p1, p2, p3}, Llibcore/net/http/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-virtual {v3}, Llibcore/io/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 103
    .end local v1           #entry:Llibcore/net/http/HttpResponseCache$Entry;
    .end local v3           #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #entry:Llibcore/net/http/HttpResponseCache$Entry;
    .restart local v3       #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :cond_1
    #calls: Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z
    invoke-static {v1}, Llibcore/net/http/HttpResponseCache$Entry;->access$000(Llibcore/net/http/HttpResponseCache$Entry;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v4, v1, v3}, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Llibcore/io/DiskLruCache$Snapshot;)V

    goto :goto_0

    :cond_2
    new-instance v4, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v4, v1, v3}, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Llibcore/io/DiskLruCache$Snapshot;)V

    goto :goto_0
.end method

.method public getCache()Llibcore/io/DiskLruCache;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 12
    .parameter "uri"
    .parameter "urlConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 119
    instance-of v10, p2, Ljava/net/HttpURLConnection;

    if-nez v10, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v9

    :cond_1
    move-object v3, p2

    .line 123
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 124
    .local v3, httpConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, requestMethod:Ljava/lang/String;
    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, key:Ljava/lang/String;
    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "PUT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 131
    :cond_2
    :try_start_0
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v10

    goto :goto_0

    .line 136
    :cond_3
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    invoke-direct {p0, v3}, Llibcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;

    move-result-object v4

    .line 146
    .local v4, httpEngine:Llibcore/net/http/HttpEngine;
    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v7

    .line 152
    .local v7, response:Llibcore/net/http/ResponseHeaders;
    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->hasVaryAll()Z

    move-result v10

    if-nez v10, :cond_0

    .line 156
    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v10

    invoke-virtual {v10}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v10

    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Llibcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Llibcore/net/http/RawHeaders;

    move-result-object v8

    .line 158
    .local v8, varyHeaders:Llibcore/net/http/RawHeaders;
    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v8, v3}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 159
    .local v2, entry:Llibcore/net/http/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 161
    .local v1, editor:Llibcore/io/DiskLruCache$Editor;
    :try_start_1
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v2, v1}, Llibcore/net/http/HttpResponseCache$Entry;->writeTo(Llibcore/io/DiskLruCache$Editor;)V

    .line 166
    new-instance v10, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v10, p0, v1}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v1}, Llibcore/net/http/HttpResponseCache;->abortQuietly(Llibcore/io/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackResponse(Ljava/net/ResponseSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    .line 236
    sget-object v0, Llibcore/net/http/HttpResponseCache$2;->$SwitchMap$java$net$ResponseSource:[I

    invoke-virtual {p1}, Ljava/net/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :pswitch_0
    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :pswitch_1
    :try_start_2
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 10
    .parameter "conditionalCacheHit"
    .parameter "httpConnection"

    .prologue
    .line 180
    invoke-direct {p0, p2}, Llibcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;

    move-result-object v3

    .line 181
    .local v3, httpEngine:Llibcore/net/http/HttpEngine;
    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->getUri()Ljava/net/URI;

    move-result-object v6

    .line 182
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v4

    .line 183
    .local v4, response:Llibcore/net/http/ResponseHeaders;
    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v8

    invoke-virtual {v8}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v4}, Llibcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Llibcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Llibcore/net/http/RawHeaders;

    move-result-object v7

    .line 185
    .local v7, varyHeaders:Llibcore/net/http/RawHeaders;
    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, v6, v7, p2}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 186
    .local v2, entry:Llibcore/net/http/HttpResponseCache$Entry;
    instance-of v8, p1, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;

    if-eqz v8, :cond_1

    check-cast p1, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;

    .end local p1
    #getter for: Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;
    invoke-static {p1}, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->access$100(Llibcore/net/http/HttpResponseCache$EntryCacheResponse;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v5

    .line 189
    .local v5, snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :goto_0
    const/4 v1, 0x0

    .line 191
    .local v1, editor:Llibcore/io/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v5}, Llibcore/io/DiskLruCache$Snapshot;->edit()Llibcore/io/DiskLruCache$Editor;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v2, v1}, Llibcore/net/http/HttpResponseCache$Entry;->writeTo(Llibcore/io/DiskLruCache$Editor;)V

    .line 194
    invoke-virtual {v1}, Llibcore/io/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 186
    .end local v1           #editor:Llibcore/io/DiskLruCache$Editor;
    .end local v5           #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    .restart local p1
    :cond_1
    check-cast p1, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;

    .end local p1
    #getter for: Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;
    invoke-static {p1}, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->access$200(Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v5

    goto :goto_0

    .line 196
    .restart local v1       #editor:Llibcore/io/DiskLruCache$Editor;
    .restart local v5       #snapshot:Llibcore/io/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v1}, Llibcore/net/http/HttpResponseCache;->abortQuietly(Llibcore/io/DiskLruCache$Editor;)V

    goto :goto_1
.end method
