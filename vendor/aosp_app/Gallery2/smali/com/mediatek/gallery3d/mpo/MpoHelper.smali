.class public Lcom/mediatek/gallery3d/mpo/MpoHelper;
.super Ljava/lang/Object;
.source "MpoHelper.java"


# static fields
.field public static final BASE_ANGLE:F = 12.5f

.field public static final FILE_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MPO"

.field public static final NS2S:F = 1.0E-9f

.field public static final OFFSET:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Gallery2/MpoHelper"

.field public static final TH:F = 0.0010f

.field private static sMavOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 88
    :try_start_0
    const-string v1, "Gallery2/MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v2

    .line 94
    :goto_0
    return-object v1

    .line 90
    :cond_1
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeUri"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 94
    goto :goto_0
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 75
    :try_start_0
    const-string v1, "Gallery2/MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-nez p1, :cond_0

    move-object v1, v2

    .line 81
    :goto_0
    return-object v1

    .line 77
    :cond_0
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeFile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 81
    goto :goto_0
.end method

.method public static decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 408
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 409
    :cond_0
    const-string v1, "Gallery2/MpoHelper"

    const-string v2, "decodeFrame:invalid paramters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    .line 417
    :cond_1
    :goto_0
    return-object v0

    .line 412
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 423
    :cond_0
    const-string v4, "Gallery2/MpoHelper"

    const-string v5, "decodeFrameSafe:invalid paramters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    .line 443
    :cond_1
    return-object v0

    .line 429
    :cond_2
    const/4 v0, 0x0

    .line 430
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 431
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    :cond_3
    const-string v4, "Gallery2/MpoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:try for sample size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 440
    :goto_1
    if-nez v0, :cond_1

    .line 441
    iget v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Gallery2/MpoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:out of memory when decoding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    .locals 22
    .parameter "jc"
    .parameter "params"
    .parameter "mpoDecoderWrapper"
    .parameter "listener"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 260
    :cond_0
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrames:got null decoder or params!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v18, 0x0

    .line 324
    :cond_1
    :goto_0
    return-object v18

    .line 263
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 264
    invoke-static/range {p0 .. p2}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->retrieveMicroMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)[Landroid/graphics/Bitmap;

    move-result-object v18

    goto :goto_0

    .line 266
    :cond_3
    move-object/from16 v0, p1

    iget v5, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayWidth:I

    .line 267
    .local v5, targetDisplayWidth:I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inTargetDisplayHeight:I

    .line 268
    .local v6, targetDisplayHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v14

    .line 269
    .local v14, frameCount:I
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v16

    .line 270
    .local v16, frameWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v15

    .line 271
    .local v15, frameHeight:I
    const-string v2, "Gallery2/MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mpo frame width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-lez v5, :cond_4

    if-lez v6, :cond_4

    if-eqz v14, :cond_4

    if-eqz v16, :cond_4

    if-nez v15, :cond_5

    .line 277
    :cond_4
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrames:got invalid parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v18, 0x0

    goto :goto_0

    .line 282
    :cond_5
    const/16 v18, 0x0

    .local v18, mpoFrames:[Landroid/graphics/Bitmap;
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 284
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 319
    :cond_6
    :goto_1
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrame:job cancelled, recycle decoded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static/range {v18 .. v18}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 322
    const/16 v18, 0x0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v13

    .line 287
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrames:out memory when decode mpo frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    mul-int v21, v5, v6

    .line 293
    .local v21, targetDisplayPixelCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    sget-object v2, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 294
    sget-object v2, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v2, v2, v17

    sget-object v3, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v3, v3, v17

    mul-int v20, v2, v3

    .line 296
    .local v20, pixelCount:I
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 293
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 299
    :cond_7
    if-eqz p0, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 300
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrames:job cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_8
    const-string v2, "Gallery2/MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMpoFrames:try display ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_1
    sget-object v2, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v10, v2, v17

    sget-object v2, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v11, v2, v17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 314
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "decodeMpoFrame: we finished decoding process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    :catch_1
    move-exception v19

    .line 311
    .local v19, oom:Ljava/lang/OutOfMemoryError;
    const-string v2, "Gallery2/MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMpoFrames:out of memory again:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 194
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sput-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_0
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 198
    .local v9, width:I
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 199
    .local v3, height:I
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v0, v10, v11

    .line 200
    .local v0, aspectRatio:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 201
    .local v2, bmpWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 202
    .local v1, bmpHeight:I
    if-ge v1, v2, :cond_1

    const/4 v4, 0x1

    .line 203
    .local v4, heightSmaller:Z
    :goto_0
    if-eqz v4, :cond_2

    move v10, v1

    :goto_1
    div-int/lit8 v6, v10, 0x5

    .line 204
    .local v6, scaleResult:I
    if-eqz v4, :cond_3

    .line 205
    move v3, v6

    .line 206
    int-to-float v10, v6

    mul-float/2addr v10, v0

    float-to-int v9, v10

    .line 211
    :goto_2
    sub-int v10, v2, v9

    div-int/lit8 v5, v10, 0x2

    .line 212
    .local v5, left:I
    sub-int v10, v1, v3

    div-int/lit8 v8, v10, 0x2

    .line 213
    .local v8, top:I
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    add-int v11, v5, v9

    add-int v12, v8, v3

    invoke-virtual {v10, v5, v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    .local v7, tmpCanvas:Landroid/graphics/Canvas;
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    return-void

    .line 202
    .end local v4           #heightSmaller:Z
    .end local v5           #left:I
    .end local v6           #scaleResult:I
    .end local v7           #tmpCanvas:Landroid/graphics/Canvas;
    .end local v8           #top:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4       #heightSmaller:Z
    :cond_2
    move v10, v2

    .line 203
    goto :goto_1

    .line 208
    .restart local v6       #scaleResult:I
    :cond_3
    move v9, v6

    .line 209
    int-to-float v10, v9

    div-float/2addr v10, v0

    float-to-int v3, v10

    goto :goto_2
.end method

.method public static getInclusionFromData(Landroid/os/Bundle;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 219
    const/high16 v0, 0x1

    return v0
.end method

.method public static getMavWhereClause(I)Ljava/lang/String;
    .locals 2
    .parameter "mavInclusion"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, whereClause:Ljava/lang/String;
    const/high16 v1, 0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 225
    const-string v0, "mpo_type!=131075"

    .line 227
    :cond_0
    return-object v0
.end method

.method public static getMpoWhereClause(Z)Ljava/lang/String;
    .locals 1
    .parameter "showAllMpo"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, mpoFilter:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 101
    const-string v0, "mime_type!=\'image/mpo\'"

    .line 103
    :cond_0
    return-object v0
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"

    .prologue
    const/4 v2, 0x0

    .line 448
    if-eqz p1, :cond_0

    if-gez p2, :cond_2

    .line 449
    :cond_0
    const-string v3, "Gallery2/MpoHelper"

    const-string v4, "getRegionDecoder:got null decoder or frameIndex!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    :goto_0
    return-object v2

    .line 452
    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 453
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v3, 0xa0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v5

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 458
    invoke-static {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 461
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 465
    :cond_3
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public static getWhereClause(I)Ljava/lang/String;
    .locals 9
    .parameter "mtkInclusion"

    .prologue
    const v8, 0x20003

    const v7, 0x20002

    const v6, 0x20001

    .line 107
    and-int/lit16 v4, p0, 0x3c0

    if-nez v4, :cond_1

    .line 108
    const/4 v1, 0x0

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    const/4 v1, 0x0

    .line 111
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "mime_type=\'image/mpo\'"

    .line 113
    .local v2, whereClauseEx:Ljava/lang/String;
    const-string v3, "mime_type=\'image/mpo\'"

    .line 115
    .local v3, whereClauseIn:Ljava/lang/String;
    const/4 v0, 0x0

    .line 117
    .local v0, subWhereClause:Ljava/lang/String;
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_8

    .line 118
    and-int/lit8 v4, p0, 0x40

    if-eqz v4, :cond_2

    .line 120
    if-nez v0, :cond_5

    const-string v0, "mpo_type=131075"

    .line 125
    :cond_2
    :goto_1
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_3

    .line 127
    if-nez v0, :cond_6

    const-string v0, "mpo_type=131074"

    .line 132
    :cond_3
    :goto_2
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_4

    .line 133
    if-nez v0, :cond_7

    const-string v0, "mpo_type=131073"

    .line 139
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 145
    :cond_8
    and-int/lit8 v4, p0, 0x40

    if-nez v4, :cond_9

    .line 147
    if-nez v0, :cond_c

    const-string v0, "mpo_type!=131075"

    .line 152
    :cond_9
    :goto_4
    and-int/lit16 v4, p0, 0x80

    if-nez v4, :cond_a

    .line 154
    if-nez v0, :cond_d

    const-string v0, "mpo_type!=131074"

    .line 159
    :cond_a
    :goto_5
    and-int/lit16 v4, p0, 0x100

    if-nez v4, :cond_b

    .line 160
    if-nez v0, :cond_e

    const-string v0, "mpo_type!=131073"

    .line 166
    :cond_b
    :goto_6
    if-eqz v0, :cond_f

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 147
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 154
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 160
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 169
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static playMpo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 185
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.action.VIEW_MPO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, i:Landroid/content/Intent;
    const-string v2, "image/mpo"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Gallery2/MpoHelper"

    const-string v3, "Unable to open mpo file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static recycleBitmapArray([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmapArray"

    .prologue
    .line 394
    if-nez p0, :cond_1

    .line 404
    :cond_0
    return-void

    .line 397
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 398
    aget-object v1, p0, v0

    if-nez v1, :cond_2

    .line 397
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private static retrieveMicroMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)[Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"
    .parameter "params"
    .parameter "mpoDecoderWrapper"

    .prologue
    const/4 v5, 0x0

    .line 231
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    const-string v6, "Gallery2/MpoHelper"

    const-string v7, "retrieveThumbData:job cancelled"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 254
    :cond_0
    :goto_0
    return-object v3

    .line 235
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 236
    .local v0, frameCount:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    new-array v3, v0, [Landroid/graphics/Bitmap;

    .line 238
    .local v3, mpoFrames:[Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v6

    invoke-virtual {p2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v7

    iget v8, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v9, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v6, v7, v8, v9}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSizeByType(IIII)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 241
    iget-boolean v6, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 242
    iget-boolean v6, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoFrames:Z

    if-eqz v6, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 244
    invoke-static {p0, p2, v1, v4}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 246
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    move-object v3, v5

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    iget v6, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v7, p1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v6, v7}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    .locals 17
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "params"
    .parameter "targetDisplayWidth"
    .parameter "targetDisplayHeight"
    .parameter "listener"

    .prologue
    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v5

    .line 333
    .local v5, frameCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v7

    .line 334
    .local v7, frameWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v6

    .line 336
    .local v6, frameHeight:I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    move/from16 v9, p3

    .line 339
    .local v9, initTargetSize:I
    :goto_0
    int-to-float v14, v9

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float v12, v14, v15

    .line 341
    .local v12, scale:F
    invoke-static {v12}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v14

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    invoke-static {v11, v14}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 345
    new-array v10, v5, [Landroid/graphics/Bitmap;

    .line 346
    .local v10, mpoFrames:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 348
    .local v3, decodeFailed:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_0

    .line 349
    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 350
    const-string v14, "Gallery2/MpoHelper"

    const-string v15, "tryDecodeMpoFrames:job cancelled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    .line 385
    :cond_2
    const-string v14, "Gallery2/MpoHelper"

    const-string v15, "tryDecodeMpoFrames:job cancelled or decode failed, recycle decoded"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v10}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 388
    const/4 v10, 0x0

    .line 390
    .end local v10           #mpoFrames:[Landroid/graphics/Bitmap;
    :cond_3
    return-object v10

    .end local v3           #decodeFailed:Z
    .end local v8           #i:I
    .end local v9           #initTargetSize:I
    .end local v12           #scale:F
    :cond_4
    move/from16 v9, p4

    .line 337
    goto :goto_0

    .line 353
    .restart local v3       #decodeFailed:Z
    .restart local v8       #i:I
    .restart local v9       #initTargetSize:I
    .restart local v10       #mpoFrames:[Landroid/graphics/Bitmap;
    .restart local v12       #scale:F
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v11}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 354
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_6

    .line 355
    const-string v14, "Gallery2/MpoHelper"

    const-string v15, "tryDecodeMpoFrames:got null frame"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v3, 0x1

    .line 357
    goto :goto_2

    .line 359
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v14, v15, v0, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->largerDisplayScale(IIII)F

    move-result v13

    .line 362
    .local v13, scaleDown:F
    const/high16 v14, 0x3f80

    cmpg-float v14, v13, v14

    if-gez v14, :cond_9

    .line 363
    const/4 v14, 0x1

    invoke-static {v2, v13, v14}, Lcom/mediatek/gallery3d/data/DecodeHelper;->resizeBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v10, v8

    .line 367
    :goto_3
    aget-object v14, v10, v8

    if-eqz v14, :cond_7

    .line 368
    const-string v14, "Gallery2/MpoHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tryDecodeMpoFrames:got mpoFrames["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_7
    if-eqz p5, :cond_8

    .line 375
    const-string v14, "CGW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update mav progress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setProgress(I)V

    .line 348
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 365
    :cond_9
    aput-object v2, v10, v8
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 379
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #scaleDown:F
    :catch_0
    move-exception v4

    .line 380
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "Gallery2/MpoHelper"

    const-string v15, "tryDecodeMpoFrames:out of memory, recycle decoded"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {v10}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 382
    throw v4
.end method
