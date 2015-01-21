.class public abstract Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
.source "BitmapStreamToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;,
        Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/BitmapStreamToVideoGenerator"

.field private static final sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xe0

    const/16 v5, 0xf

    const/high16 v4, 0x4348

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    new-instance v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    .line 50
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v2

    const v1, 0x8000

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 52
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v2

    iput v5, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->framesBetweenIFrames:I

    .line 54
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 56
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v2

    iput v6, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 58
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v2

    iput v6, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 62
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v3

    const/high16 v1, 0x2

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 64
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->framesBetweenIFrames:I

    .line 66
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v3

    iput v4, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 68
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v3

    const/16 v1, 0x280

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 70
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v0, v0, v3

    const/16 v1, 0x1e0

    iput v1, v0, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;-><init>()V

    .line 156
    return-void
.end method


# virtual methods
.method public abstract deInit(Lcom/android/gallery3d/data/MediaItem;I)V
.end method

.method public generate(Lcom/android/gallery3d/data/LocalMediaItem;I)I
    .locals 8
    .parameter "item"
    .parameter "videoType"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    .line 106
    sget-object v7, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->sPredefinedVideoConfigs:[Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    aget-object v7, v7, p2

    invoke-static {v7}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->copy(Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;

    move-result-object v1

    .line 107
    .local v1, config:Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->init(Lcom/android/gallery3d/data/MediaItem;ILcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)V

    .line 108
    iget v7, v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    if-gtz v7, :cond_0

    .line 109
    const-string v5, "Gallery2/BitmapStreamToVideoGenerator"

    const-string v6, "frame count never appropriately initialized!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 153
    :goto_0
    return v4

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    move v4, v5

    .line 116
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, p1, p2, v6}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 127
    new-instance v3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;

    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFilePathForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;-><init>(Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;Ljava/lang/String;)V

    .line 130
    .local v3, myEncoder:Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;
    invoke-virtual {v3, v0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->addFrame(Landroid/graphics/Bitmap;)V

    .line 131
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    iget v7, v1, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    if-ge v2, v7, :cond_5

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 135
    invoke-virtual {v3}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->close()V

    move v4, v5

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    if-nez v0, :cond_4

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 141
    invoke-virtual {v3}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->close()V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v3, v0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->addFrame(Landroid/graphics/Bitmap;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    .line 148
    invoke-virtual {v3, v0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->addFrame(Landroid/graphics/Bitmap;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    invoke-virtual {v3}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$BitmapToVideoEncoder;->close()V

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    move v4, v6

    .line 153
    goto :goto_0
.end method

.method public abstract getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;
.end method

.method public abstract init(Lcom/android/gallery3d/data/MediaItem;ILcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)V
.end method
