.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/ImageCacheRequest"


# instance fields
.field private final cacheBitmap:Ljava/lang/String;

.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDateModifiedInSec:J

.field protected mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I

.field private final originBitmap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"
    .parameter "dateModifiedInSec"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, "_CacheBitmap"

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->cacheBitmap:Ljava/lang/String;

    .line 174
    const-string v0, "_OriginBitmap"

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->originBitmap:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 47
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 48
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 49
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 50
    iput-wide p5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    .line 51
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method

.method private dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .parameter "bitmap"
    .parameter "source"

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, dumpStart:J
    iget v5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 179
    const-string v2, "MicroTNail"

    .line 183
    .local v2, fileType:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 184
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v3, :cond_0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, string:Ljava/lang/String;
    const-string v5, "Gallery2/ImageCacheRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1, v4}, Lcom/mediatek/gallery3d/util/MtkUtils;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 188
    const-string v5, "Gallery2/ImageCacheRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Dump Bitmap time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v4           #string:Ljava/lang/String;
    :cond_0
    return-void

    .line 181
    .end local v2           #fileType:Ljava/lang/String;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const-string v2, "TNail"

    .restart local v2       #fileType:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "jc"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 63
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    .line 66
    .local v5, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    const-wide/16 v3, 0x2000

    :try_start_0
    const-string v6, ">>>>ImageCacheRequest-getImageData"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;J)Z

    move-result v18

    .line 68
    .local v18, found:Z
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-eqz v3, :cond_0

    const/16 v18, 0x0

    .line 72
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/16 v17, 0x0

    .line 106
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 167
    :cond_1
    :goto_0
    return-object v17

    .line 73
    :cond_2
    if-eqz v18, :cond_7

    .line 74
    const-wide/16 v3, 0x2000

    :try_start_1
    const-string v6, ">>>>ImageCacheRequest-decodeFromCache"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 75
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 78
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 79
    iget-object v7, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 88
    .local v17, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v3, :cond_3

    .line 89
    if-nez v17, :cond_6

    .line 90
    const-string v3, "Gallery2/ImageCacheRequest"

    const-string v4, "decode orig failed replace new bitmap to dump"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 v3, 0xc8

    const/16 v4, 0xc8

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 92
    const-string v3, "_CacheBitmap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 93
    const/16 v17, 0x0

    .line 99
    :cond_3
    :goto_2
    if-nez v17, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 100
    const-string v3, "Gallery2/ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode cached failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 83
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_2
    iget-object v7, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v17

    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 95
    :cond_6
    const-string v3, "_CacheBitmap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 106
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #found:Z
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    .restart local v18       #found:Z
    :cond_7
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 108
    const-wide/16 v3, 0x2000

    const-string v6, ">>>>ImageCacheRequest-decodeFromOriginal"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 110
    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 114
    :cond_8
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v3, :cond_9

    .line 115
    if-nez v17, :cond_a

    .line 116
    const-string v3, "Gallery2/ImageCacheRequest"

    const-string v4, "decode orig failed replace new bitmap to dump"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v3, 0xc8

    const/16 v4, 0xc8

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 118
    const-string v3, "_OriginBitmap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 119
    const/16 v17, 0x0

    .line 126
    :cond_9
    :goto_3
    if-nez v17, :cond_b

    .line 127
    const-string v3, "Gallery2/ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode orig failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string v3, "_OriginBitmap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->dumpBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_3

    .line 131
    :cond_b
    const-wide/16 v3, 0x2000

    const-string v6, ">>>>ImageCacheRequest-resizeAndCrop"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 133
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 140
    :goto_4
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 141
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 135
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndKeepScale(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_4

    .line 138
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_4

    .line 144
    :cond_e
    const/4 v14, 0x0

    .line 145
    .local v14, array:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 146
    .local v19, object:Lcom/android/gallery3d/data/MediaObject;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPanorama3DSupported()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    if-eqz v19, :cond_f

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_f

    check-cast v19, Lcom/android/gallery3d/data/MediaItem;

    .end local v19           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/MediaItem;->isPanorama()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 150
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v14

    .line 158
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 152
    :cond_f
    const-wide/16 v3, 0x2000

    const-string v6, ">>>>ImageCacheRequest-compressToBytes"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 153
    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 154
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_5

    .line 162
    :cond_10
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-nez v3, :cond_1

    .line 163
    const-wide/16 v3, 0x2000

    const-string v6, ">>>>ImageCacheRequest-writeToCache"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[BJ)V

    .line 165
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
