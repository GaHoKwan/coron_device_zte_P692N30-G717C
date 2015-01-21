.class Lcom/android/gallery3d/app/Bookmarker;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# static fields
.field private static final BOOKMARK_CACHE_FILE:Ljava/lang/String; = "bookmark"

.field private static final BOOKMARK_CACHE_MAX_BYTES:I = 0x2800

.field private static final BOOKMARK_CACHE_MAX_ENTRIES:I = 0x64

.field private static final BOOKMARK_CACHE_VERSION:I = 0x1

.field private static final HALF_MINUTE:I = 0x7530

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/Bookmarker"

.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2361
    iput-object p1, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    .line 2362
    return-void
.end method


# virtual methods
.method public getBookmark(Landroid/net/Uri;)Lcom/android/gallery3d/app/BookmarkerInfo;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 2424
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v9, "bookmark"

    const/16 v10, 0x64

    const/16 v11, 0x2800

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 2428
    .local v1, cache:Lcom/android/gallery3d/common/BlobCache;
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v2

    .line 2429
    .local v2, data:[B
    if-nez v2, :cond_1

    .line 2431
    const-string v8, "Gallery2/Bookmarker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBookmark("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") data=null. uri.hashCode()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #data:[B
    :cond_0
    :goto_0
    return-object v7

    .line 2436
    .restart local v1       #cache:Lcom/android/gallery3d/common/BlobCache;
    .restart local v2       #data:[B
    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2439
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-static {v3}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    .line 2440
    .local v6, uriString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 2441
    .local v0, bookmark:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 2443
    .local v4, duration:I
    const-string v8, "Gallery2/Bookmarker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBookmark("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") uriString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bookmark="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2450
    const/16 v8, 0x7530

    if-lt v0, v8, :cond_0

    const v8, 0x1d4c0

    if-lt v4, v8, :cond_0

    add-int/lit16 v8, v4, -0x7530

    if-gt v0, v8, :cond_0

    .line 2462
    new-instance v8, Lcom/android/gallery3d/app/BookmarkerInfo;

    invoke-direct {v8, v0, v4}, Lcom/android/gallery3d/app/BookmarkerInfo;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 2465
    .end local v0           #bookmark:I
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #data:[B
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v4           #duration:I
    .end local v6           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2466
    .local v5, t:Ljava/lang/Throwable;
    const-string v8, "Gallery2/Bookmarker"

    const-string v9, "getBookmark failed"

    invoke-static {v8, v9, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBookmark(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 2366
    const-string v4, "Gallery2/Bookmarker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBookmark("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    if-gtz p3, :cond_0

    .line 2387
    :goto_0
    return-void

    .line 2373
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v5, "bookmark"

    const/16 v6, 0x64

    const/16 v7, 0x2800

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 2377
    .local v1, cache:Lcom/android/gallery3d/common/BlobCache;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2378
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2379
    .local v2, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2381
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2382
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 2383
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2384
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 2385
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Gallery2/Bookmarker"

    const-string v5, "setBookmark failed"

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBookmark(Landroid/net/Uri;IIIIII)V
    .locals 10
    .parameter "uri"
    .parameter "bookmark"
    .parameter "duration"
    .parameter "audioIdx"
    .parameter "subtitleIdx"
    .parameter "audioDlgListIdx"
    .parameter "subtitleDlgListIdx"

    .prologue
    .line 2393
    const-string v5, "Gallery2/Bookmarker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBookmark("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    if-gtz p3, :cond_0

    .line 2419
    :goto_0
    return-void

    .line 2401
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v6, "bookmark"

    const/16 v7, 0x64

    const/16 v8, 0x2800

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v2

    .line 2405
    .local v2, cache:Lcom/android/gallery3d/common/BlobCache;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2406
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2407
    .local v3, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2409
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2410
    invoke-virtual {v3, p4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2411
    invoke-virtual {v3, p5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2412
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2413
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2414
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 2415
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2416
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v3           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 2417
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "Gallery2/Bookmarker"

    const-string v6, "setBookmark failed"

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
