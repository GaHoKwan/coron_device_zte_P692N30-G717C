.class public Lcom/mediatek/gallery3d/mpo/MpoRequest;
.super Lcom/mediatek/gallery3d/data/ImageRequest;
.source "MpoRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/MpoRequest"


# instance fields
.field private mMavlistener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/gallery3d/data/ImageRequest;-><init>()V

    return-void
.end method

.method private retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "mpoDecoderWrapper"

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 165
    .local v0, frameCount:I
    const/4 v2, 0x1

    invoke-static {v2, v0, v3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZIZ)I

    move-result v1

    .line 166
    .local v1, frameIndex:I
    invoke-static {p1, p4, v1}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 170
    .end local v0           #frameCount:I
    .end local v1           #frameIndex:I
    :cond_0
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v2, :cond_2

    .line 171
    :cond_1
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 172
    .restart local v0       #frameCount:I
    invoke-static {v3, v0, v3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZIZ)I

    move-result v1

    .line 173
    .restart local v1       #frameIndex:I
    invoke-static {p1, p4, v1}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 176
    .end local v0           #frameCount:I
    .end local v1           #frameIndex:I
    :cond_2
    return-void
.end method

.method private retrieveMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V
    .locals 2
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "mpoDecoderWrapper"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "Gallery2/MpoRequest"

    const-string v1, "retrieveMpoFrames:job cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MpoRequest;->mMavlistener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-static {p1, p2, p4, v0}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "mpoDecoderWrapper"

    .prologue
    .line 122
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "Gallery2/MpoRequest"

    const-string v5, "retrieveThumbData:job cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v2, 0x0

    .line 127
    .local v2, isMav:Z
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->getMtkMpoType()I

    move-result v4

    const v5, 0x20003

    if-ne v4, v5, :cond_2

    .line 128
    const/4 v2, 0x1

    .line 129
    const-string v4, "Gallery2/MpoRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveThumbData, isMav: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 133
    .local v0, frameCount:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v4

    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v5

    iget v6, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v7, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSizeByType(IIII)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    iget-boolean v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 139
    iget-boolean v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-eqz v4, :cond_3

    .line 140
    const/4 v4, 0x1

    invoke-static {v4, v0, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZIZ)I

    move-result v1

    .line 141
    .local v1, frameIndex:I
    invoke-static {p1, p4, v1, v3}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 143
    iget-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v6, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 148
    .end local v1           #frameIndex:I
    :cond_3
    iget-boolean v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v4, :cond_4

    iget-boolean v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v4, :cond_0

    .line 151
    :cond_4
    const/4 v4, 0x0

    invoke-static {v4, v0, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZIZ)I

    move-result v1

    .line 152
    .restart local v1       #frameIndex:I
    invoke-static {p1, p4, v1, v3}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 154
    iget-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v6, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 57
    const-string v2, "Gallery2/MpoRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc, parmas, cr, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {p3, p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->createMpoDecoderWrapper(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    move-result-object v1

    .line 63
    .local v1, mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    .line 70
    :cond_0
    return-object v0

    .line 66
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    :cond_1
    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "mpoDecoderWrapper"

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 76
    :cond_0
    const-string v1, "Gallery2/MpoRequest"

    const-string v2, "request:got null params or decoder!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-object v0

    .line 79
    :cond_2
    invoke-virtual {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 80
    const-string v1, "Gallery2/MpoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request:invalid frame count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_4
    const-string v1, "Gallery2/MpoRequest"

    invoke-virtual {p2, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 92
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v1, :cond_6

    .line 94
    :cond_5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V

    .line 97
    :cond_6
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-nez v1, :cond_7

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v1, :cond_7

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v1, :cond_8

    .line 99
    :cond_7
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V

    .line 102
    :cond_8
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    if-eqz v1, :cond_9

    .line 103
    const-string v1, "Gallery2/MpoRequest"

    const-string v2, "request: no GifDecoder can be generated from mpo"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_9
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoTotalCount:Z

    if-eqz v1, :cond_a

    .line 107
    invoke-virtual {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v1

    iput v1, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->mpoTotalCount:I

    .line 110
    :cond_a
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inMpoFrames:Z

    if-eqz v1, :cond_b

    .line 112
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->retrieveMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V

    .line 115
    :cond_b
    const-string v1, "Gallery2/MpoRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    .line 31
    const-string v2, "Gallery2/MpoRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc,parmas,filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->createMpoDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    move-result-object v1

    .line 39
    .local v1, mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    :cond_2
    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 2
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 51
    const-string v0, "Gallery2/MpoRequest"

    const-string v1, "request:no support for buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MpoRequest;->mMavlistener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 192
    return-void
.end method
