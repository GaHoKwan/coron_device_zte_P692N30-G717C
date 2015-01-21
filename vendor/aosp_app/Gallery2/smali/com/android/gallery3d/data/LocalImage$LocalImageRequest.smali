.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V
    .locals 7
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"
    .parameter "dateModifiedInSec"

    .prologue
    .line 312
    invoke-static {p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V

    .line 314
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 320
    const-string v0, "Gallery2/LocalImage"

    const-string v1, "onDecodeOriginal:got null mLocalFilePath"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v6, 0x0

    .line 387
    :goto_0
    return-object v6

    .line 323
    :cond_0
    const-wide/16 v0, 0x2000

    const-string v2, ">>>>LocalImage-onDecodeOriginal"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 324
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 325
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 326
    invoke-static {p2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 329
    .local v5, targetSize:I
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 332
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    move-object v9, v0

    check-cast v9, Lcom/android/gallery3d/data/MediaItem;

    .line 334
    .local v9, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 335
    invoke-static {v9, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaMicroThumbnail(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 341
    .end local v9           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 342
    const-wide/16 v0, 0x2000

    const-string v2, ">>>>LocalImage-onDecodeOriginal-decodeFromExif"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 343
    const/4 v7, 0x0

    .line 344
    .local v7, exif:Landroid/media/ExifInterface;
    const/4 v11, 0x0

    .line 346
    .local v11, thumbData:[B
    const-wide/16 v0, 0x2000

    :try_start_0
    const-string v2, ">>>>LocalImage-new ExifInterface"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    new-instance v8, Landroid/media/ExifInterface;

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v7           #exif:Landroid/media/ExifInterface;
    .local v8, exif:Landroid/media/ExifInterface;
    const-wide/16 v0, 0x2000

    :try_start_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 349
    if-eqz v8, :cond_2

    .line 350
    const-wide/16 v0, 0x2000

    const-string v2, ">>>>LocalImage-exif.getThumbnail"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v11

    .line 352
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v7, v8

    .line 357
    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v11, :cond_3

    .line 358
    invoke-static {p1, v11, v4, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 360
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 361
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 362
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 354
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 355
    .local v10, t:Ljava/lang/Throwable;
    :goto_2
    const-string v0, "Gallery2/LocalImage"

    const-string v1, "fail to get exif thumb"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 366
    .end local v10           #t:Ljava/lang/Throwable;
    :cond_3
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v11           #thumbData:[B
    :cond_4
    const-wide/16 v0, 0x2000

    const-string v2, ">>>>LocalImage-onDecodeOriginal-decodeOriginEx"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    #calls: Lcom/android/gallery3d/data/LocalImage;->decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalImage;->access$000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 372
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    if-eqz v6, :cond_5

    .line 375
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackGround(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_0

    .line 379
    :cond_5
    const-wide/16 v0, 0x2000

    const-string v2, ">>>>LocalImage-onDecodeOriginal-decodeThumbnail"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v0, v4, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 382
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackGround(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 386
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 387
    invoke-static {v6}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_0

    .line 354
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    .restart local v11       #thumbData:[B
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
