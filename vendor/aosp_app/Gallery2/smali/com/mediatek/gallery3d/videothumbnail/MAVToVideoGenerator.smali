.class public Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.source "MAVToVideoGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/MAVToVideoGenerator"

.field private static mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

.field private static sDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mFrameCount:I

.field private mTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->sDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public deInit(Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 1
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 63
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    .line 64
    return-void
.end method

.method public getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "item"
    .parameter "videoType"
    .parameter "frameIndex"

    .prologue
    const/4 v5, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, outputBitmap:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mFrameCount:I

    if-ge p3, v3, :cond_0

    move v1, p3

    .line 49
    .local v1, curIndex:I
    :goto_0
    sget-object v3, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    sget-object v4, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->sDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3, v1, v4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 51
    const/4 v3, 0x0

    .line 58
    :goto_1
    return-object v3

    .line 48
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #curIndex:I
    :cond_0
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mFrameCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x2

    sub-int v1, v3, p3

    goto :goto_0

    .line 53
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #curIndex:I
    :cond_1
    if-nez p2, :cond_3

    .line 54
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    invoke-static {v0, v3, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_2
    move-object v3, v2

    .line 58
    goto :goto_1

    .line 55
    :cond_3
    if-ne v5, p2, :cond_2

    .line 56
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    invoke-static {v0, v3, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2
.end method

.method public init(Lcom/android/gallery3d/data/MediaItem;ILcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)V
    .locals 4
    .parameter "item"
    .parameter "videoType"
    .parameter "config"

    .prologue
    const v1, 0x42855555

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->createMpoDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    .line 23
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mFrameCount:I

    .line 24
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mFrameCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 25
    if-nez p2, :cond_1

    .line 27
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    .line 28
    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 29
    const/16 v0, 0x7d00

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 36
    :goto_0
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->sDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v1

    sget-object v2, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v2

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    const-string v0, "Gallery2/MAVToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",targetSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "Gallery2/MAVToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sampleSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->sDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void

    .line 32
    :cond_1
    const/16 v0, 0x280

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/MAVToVideoGenerator;->mTargetSize:I

    .line 33
    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 34
    const v0, 0x16e360

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    goto/16 :goto_0
.end method

.method public onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 0
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 69
    return-void
.end method
