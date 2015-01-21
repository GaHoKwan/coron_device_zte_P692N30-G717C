.class public Lcom/android/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# static fields
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Gallery2/ImageCacheService"


# instance fields
.field private mCache:Lcom/android/gallery3d/common/BlobCache;

.field private mCacheLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheService;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc80

    const/4 v3, 0x7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    .line 49
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 116
    array-length v1, p0

    .line 117
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 121
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/android/gallery3d/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static makeKey(Lcom/android/gallery3d/data/Path;IJ)[B
    .locals 2
    .parameter "path"
    .parameter "type"
    .parameter "dateModifiedInSec"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearImageData(Lcom/android/gallery3d/data/Path;I)V
    .locals 5
    .parameter "path"
    .parameter "type"

    .prologue
    .line 181
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 182
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 183
    .local v0, cacheKey:J
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v4

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 186
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public clearImageData(Lcom/android/gallery3d/data/Path;IJ)V
    .locals 5
    .parameter "path"
    .parameter "type"
    .parameter "dateModifiedInSec"

    .prologue
    .line 194
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;IJ)[B

    move-result-object v2

    .line 195
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 196
    .local v0, cacheKey:J
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v4

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 199
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public closeCache()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v5, :cond_1

    .line 62
    const-string v5, "Gallery2/ImageCacheService"

    const-string v6, "getImageData: cache file is null!"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    return v4

    .line 66
    :cond_1
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 67
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 69
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 70
    .local v3, request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 71
    iget-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 72
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v5, :cond_2

    .line 74
    monitor-exit v6

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .end local v3           #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 76
    .restart local v3       #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 77
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/android/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 80
    array-length v5, v2

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 81
    iget v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;J)Z
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "buffer"
    .parameter "dateModifiedInSec"

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v5, :cond_1

    .line 132
    const-string v5, "Gallery2/ImageCacheService"

    const-string v6, "getImageData: cache file is null!"

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return v4

    .line 135
    :cond_1
    invoke-static {p1, p2, p4, p5}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;IJ)[B

    move-result-object v2

    .line 136
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 138
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 139
    .local v3, request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 140
    iget-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 141
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v5, :cond_2

    .line 143
    monitor-exit v6

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v3           #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 145
    .restart local v3       #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 146
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :try_start_4
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/android/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 149
    array-length v5, v2

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 150
    iget v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 151
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public openCache()V
    .locals 6

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mContext:Landroid/content/Context;

    const-string v2, "imgcache"

    const/16 v3, 0x1388

    const/high16 v4, 0xc80

    const/4 v5, 0x7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    .line 231
    :cond_0
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putImageData(Lcom/android/gallery3d/data/Path;I[B)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 91
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v4, :cond_0

    .line 92
    const-string v4, "Gallery2/ImageCacheService"

    const-string v5, "putImageData: cache file is null!"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v3

    .line 96
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 97
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 102
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 105
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public putImageData(Lcom/android/gallery3d/data/Path;I[BJ)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "value"
    .parameter "dateModifiedInSec"

    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v4, :cond_0

    .line 161
    const-string v4, "Gallery2/ImageCacheService"

    const-string v5, "putImageData: cache file is null!"

    invoke-static {v4, v5}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p1, p2, p4, p5}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;IJ)[B

    move-result-object v3

    .line 165
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 166
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 174
    :catch_0
    move-exception v4

    goto :goto_1
.end method
