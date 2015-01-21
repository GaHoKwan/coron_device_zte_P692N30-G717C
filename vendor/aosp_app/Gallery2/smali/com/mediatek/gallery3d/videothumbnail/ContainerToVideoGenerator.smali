.class public Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.source "ContainerToVideoGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/ContainerToVideoGenerator"


# instance fields
.field private mAnimationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mTargetSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 27
    return-void
.end method

.method private decoderBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "videoType"

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mTargetSize:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deInit(Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 95
    return-void
.end method

.method public getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "item"
    .parameter "videoType"
    .parameter "frameIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, outputBitmap:Landroid/graphics/Bitmap;
    const-string v3, "Gallery2/ContainerToVideoGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " videoType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frameIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->decoderBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v3, v4

    .line 78
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Gallery2/ContainerToVideoGenerator"

    const-string v5, "getBitmapAtFrame decoderBitmap exception"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 68
    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    if-nez p2, :cond_2

    .line 74
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mTargetSize:I

    invoke-static {v0, v3, v7}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_1
    move-object v3, v2

    .line 78
    goto :goto_0

    .line 75
    :cond_2
    if-ne v7, p2, :cond_1

    .line 76
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mTargetSize:I

    invoke-static {v0, v3, v7}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public init(Lcom/android/gallery3d/data/MediaItem;ILcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)V
    .locals 3
    .parameter "item"
    .parameter "videoType"
    .parameter "config"

    .prologue
    const/high16 v2, 0x43c8

    .line 31
    const-string v0, "Gallery2/ContainerToVideoGenerator"

    const-string v1, " init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getAnimationArray(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mAnimationItems:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mAnimationItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 42
    if-nez p2, :cond_2

    .line 44
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mTargetSize:I

    .line 45
    iput v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 46
    const/16 v0, 0x7d00

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 53
    :goto_1
    const-string v0, "Gallery2/ContainerToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frameCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_2
    const/16 v0, 0x280

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/ContainerToVideoGenerator;->mTargetSize:I

    .line 50
    iput v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 51
    const v0, 0x16e360

    iput v0, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    goto :goto_1
.end method

.method public onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 0
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 101
    return-void
.end method
