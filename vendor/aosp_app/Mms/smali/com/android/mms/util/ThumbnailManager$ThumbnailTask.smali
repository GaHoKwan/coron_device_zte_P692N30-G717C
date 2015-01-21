.class public Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailTask"
.end annotation


# instance fields
.field private final mIsVideo:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V
    .locals 1
    .parameter
    .parameter "uri"
    .parameter "isVideo"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    if-nez p2, :cond_0

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    .line 247
    iput-boolean p3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    return v0
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 473
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "ThumbnailManager"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 408
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private computeSampleSizeLarger(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 533
    div-int v2, p1, p3

    div-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 534
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 536
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method private ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 460
    :goto_0
    return-object v0

    .line 458
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "isVideo"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 322
    iget-object v10, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #calls: Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;
    invoke-static {v10}, Lcom/android/mms/util/ThumbnailManager;->access$500(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;

    move-result-object v2

    .line 324
    .local v2, cacheService:Lcom/android/mms/util/ImageCacheService;
    iget-object v10, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/util/ThumbnailManager;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/mms/util/ThumbnailManager;->access$600(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 325
    .local v8, uriTemp:Landroid/net/Uri;
    new-instance v7, Lcom/android/mms/ui/UriImage;

    iget-object v10, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v8}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 327
    .local v7, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v7}, Lcom/android/mms/ui/UriImage;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, path:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v1, v9

    .line 380
    :cond_0
    :goto_0
    return-object v1

    .line 336
    :cond_1
    invoke-static {v6}, Lcom/android/mms/TempFileProvider;->isTempFile(Ljava/lang/String;)Z

    move-result v4

    .line 338
    .local v4, isTempFile:Z
    const/4 v3, 0x0

    .line 339
    .local v3, data:Lcom/android/mms/util/ImageCacheService$ImageData;
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/UriImage;->getIsResize()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 340
    invoke-virtual {v2, v6, v11}, Lcom/android/mms/util/ImageCacheService;->getImageData(Ljava/lang/String;I)Lcom/android/mms/util/ImageCacheService$ImageData;

    move-result-object v3

    .line 343
    :cond_2
    if-eqz v3, :cond_4

    .line 344
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 346
    iget-object v9, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    iget v10, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    iget-object v11, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    array-length v11, v11

    iget v12, v3, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v11, v12

    invoke-direct {p0, v9, v10, v11, v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/mms/ui/UriImage;->getIsResize()Z

    move-result v9

    if-nez v9, :cond_3

    .line 351
    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/mms/ui/UriImage;->getImageRotationDegree(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v9

    invoke-static {v1, v9}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 356
    :goto_1
    if-nez v1, :cond_0

    .line 357
    const-string v9, "ThumbnailManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decode cached failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_3
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/mms/ui/UriImage;->setIsResize(Z)V

    goto :goto_1

    .line 362
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-eqz p1, :cond_5

    .line 363
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getVideoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 369
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v1, :cond_6

    .line 370
    const-string v10, "ThumbnailManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decode orig failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 371
    goto :goto_0

    .line 366
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    invoke-direct {p0, v8, v11}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 374
    :cond_6
    const/16 v9, 0x280

    invoke-direct {p0, v1, v9, v11}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 376
    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/ui/UriImage;->getIsResize()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 377
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 378
    .local v0, array:[B
    invoke-virtual {v2, v6, v11, v0}, Lcom/android/mms/util/ImageCacheService;->putImageData(Ljava/lang/String;I[B)V

    goto/16 :goto_0
.end method

.method private getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 447
    .local v0, config:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 448
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 450
    :cond_0
    return-object v0
.end method

.method private getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 385
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 388
    .local v0, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/util/ThumbnailManager;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/util/ThumbnailManager;->access$600(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 389
    .local v1, uriTemp:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 391
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 396
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    .end local v1           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 392
    :catch_0
    move-exception v2

    .line 396
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v2

    .line 396
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 399
    :goto_2
    throw v2

    .line 397
    .restart local v1       #uriTemp:Landroid/net/Uri;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1           #uriTemp:Landroid/net/Uri;
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 464
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 467
    const/16 v1, 0x280

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 545
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 546
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "uri"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 480
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 484
    .restart local p2
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 490
    .local v1, inputStream:Ljava/io/InputStream;
    iput-boolean v8, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 491
    invoke-static {v1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 492
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 496
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 502
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v5, v6, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->computeSampleSizeLarger(III)I

    move-result v5

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    iput-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    invoke-static {v1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 507
    .local v2, result:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 509
    if-nez v2, :cond_1

    .line 526
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 498
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 515
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, v2, p3, v8}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 518
    invoke-static {}, Lcom/android/mms/ui/UriImage;->getIsResize()Z

    move-result v4

    if-nez v4, :cond_2

    .line 519
    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    #getter for: Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/util/ThumbnailManager;->access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/mms/ui/UriImage;->getImageRotationDegree(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 520
    .local v3, rotateDegree:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 526
    .end local v3           #rotateDegree:I
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {v7}, Lcom/android/mms/ui/UriImage;->setIsResize(Z)V

    goto :goto_1
.end method

.method private requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 413
    if-nez p4, :cond_0

    .line 414
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 416
    .restart local p4
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scale"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 433
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 434
    .local v1, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 442
    .end local p1
    :goto_0
    return-object p1

    .line 436
    .restart local p1
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 437
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 438
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 439
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 440
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 441
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v3

    .line 442
    goto :goto_0
.end method

.method private resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 423
    .local v2, srcWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 424
    .local v1, srcHeight:I
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 426
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 427
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "targetSize"
    .parameter "recycle"

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 553
    .local v2, srcWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 554
    .local v1, srcHeight:I
    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 556
    .local v0, scale:F
    const/high16 v3, 0x3f00

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 557
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    invoke-direct {p0, v3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getBitmap(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :goto_0
    move-object v2, v0

    .line 271
    .local v2, resultBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v3, v3, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;-><init>(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void

    .line 266
    .end local v2           #resultBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ThumbnailManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load bitmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
