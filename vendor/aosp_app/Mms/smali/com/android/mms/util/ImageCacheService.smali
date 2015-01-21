.class public Lcom/android/mms/util/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ImageCacheService$ImageData;
    }
.end annotation


# static fields
.field public static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0x1400000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1f4

.field private static final IMAGE_CACHE_VERSION:I = 0x3

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "ImageCacheService"

.field private static sCrcTable:[J


# instance fields
.field private mCache:Lcom/android/mms/util/BlobCache;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 35
    new-array v6, v8, [J

    sput-object v6, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 135
    int-to-long v2, v0

    .line 136
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 137
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL

    .line 138
    .local v4, x:J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v4           #x:J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 140
    :cond_1
    sget-object v6, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "imgcache"

    const/16 v1, 0x1f4

    const/high16 v2, 0x140

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/mms/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/mms/util/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    .line 45
    iput-object p1, p0, Lcom/android/mms/util/ImageCacheService;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .parameter "in"

    .prologue
    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const-wide/16 v0, 0x0

    .line 128
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/android/mms/util/ImageCacheService;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .parameter "buffer"

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    .line 146
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 147
    sget-object v4, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-wide v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 154
    .local v6, result:[B
    const/4 v4, 0x0

    .line 155
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 156
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 157
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 106
    array-length v1, p0

    .line 107
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 111
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Ljava/lang/String;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/CacheManager;->clear(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public getImageData(Ljava/lang/String;I)Lcom/android/mms/util/ImageCacheService$ImageData;
    .locals 8
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v6, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    if-nez v6, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v5

    .line 61
    :cond_1
    invoke-static {p1, p2}, Lcom/android/mms/util/ImageCacheService;->makeKey(Ljava/lang/String;I)[B

    move-result-object v2

    .line 62
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v0

    .line 64
    .local v0, cacheKey:J
    const/4 v4, 0x0

    .line 65
    .local v4, value:[B
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    iget-object v6, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    invoke-virtual {v6, v0, v1}, Lcom/android/mms/util/BlobCache;->lookup(J)[B

    move-result-object v4

    .line 67
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v4, :cond_0

    .line 69
    :try_start_2
    invoke-static {v2, v4}, Lcom/android/mms/util/ImageCacheService;->isSameKey([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    array-length v3, v2

    .line 71
    .local v3, offset:I
    new-instance v6, Lcom/android/mms/util/ImageCacheService$ImageData;

    invoke-direct {v6, v4, v3}, Lcom/android/mms/util/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 67
    .end local v3           #offset:I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public putImageData(Ljava/lang/String;I[B)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 80
    iget-object v4, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    if-nez v4, :cond_0

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p1, p2}, Lcom/android/mms/util/ImageCacheService;->makeKey(Ljava/lang/String;I)[B

    move-result-object v3

    .line 84
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v1

    .line 85
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v5, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    monitor-enter v5

    .line 90
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/mms/util/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
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

    .line 91
    :catch_0
    move-exception v4

    goto :goto_1
.end method
