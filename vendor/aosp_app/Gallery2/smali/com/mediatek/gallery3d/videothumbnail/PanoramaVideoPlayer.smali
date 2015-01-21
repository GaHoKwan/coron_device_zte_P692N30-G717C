.class public Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
.source "PanoramaVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaVideoPlayer"

.field private static mLastRequestRenderTime:J


# instance fields
.field private mCurrentDegree:F

.field private mCurrentFrame:I

.field private mFirstRender:Z

.field private mFrameCount:I

.field private mFrameDegreeGap:F

.field private mFrameTimeGap:I

.field private mHandler:Landroid/os/Handler;

.field private mPanoramaForward:Z

.field private mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mPanoramaForward:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFirstRender:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->autoPanoramaPlayback()V

    return-void
.end method

.method private autoPanoramaPlayback()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mPanoramaForward:Z

    if-eqz v2, :cond_3

    .line 112
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    .line 113
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameCount:I

    if-lt v2, v3, :cond_0

    .line 114
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    .line 115
    iput-boolean v6, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mPanoramaForward:Z

    .line 124
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameDegreeGap:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentDegree:F

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, now:J
    sget-wide v2, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mLastRequestRenderTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameTimeGap:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->requestRender()V

    .line 129
    sput-wide v0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mLastRequestRenderTime:J

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameTimeGap:I

    int-to-long v3, v3

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    :cond_2
    return-void

    .line 118
    .end local v0           #now:J
    :cond_3
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    .line 119
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    if-gez v2, :cond_0

    .line 120
    iget v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mPanoramaForward:Z

    goto :goto_0
.end method

.method private stopPanoramaPlayback()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v2, "Gallery2/PanoramaVideoPlayer"

    const-string v3, "<prepare>"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getMicroThumbnailEntry(Lcom/android/gallery3d/data/MediaItem;)Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;

    move-result-object v0

    .line 48
    .local v0, entry:Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;
    if-nez v0, :cond_0

    .line 49
    const-string v2, "Gallery2/PanoramaVideoPlayer"

    const-string v3, "<prepare> entry == null, return false"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return v1

    .line 52
    :cond_0
    new-instance v2, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    iget-object v3, v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-direct {v2, v3, v4}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    .line 53
    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameCount:I

    .line 54
    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTimeGap:I

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameTimeGap:I

    .line 55
    iget-object v2, v0, Lcom/mediatek/gallery3d/panorama/PanoramaHelper$PanoramaMicroThumbnailEntry;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameDegreeGap:F

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mFrameDegreeGap:F

    .line 56
    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentFrame:I

    .line 58
    new-instance v1, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;-><init>(Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "Gallery2/PanoramaVideoPlayer"

    const-string v1, "<release>"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->recycle()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    .line 81
    :cond_0
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;II)Z
    .locals 9
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    int-to-float v0, p2

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v0, v1

    .line 105
    .local v7, newHeight:F
    int-to-float v0, p3

    sub-float/2addr v0, v7

    const/high16 v1, 0x4000

    div-float v8, v0, v1

    .line 106
    .local v8, newY:F
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mScreenNail:Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v5, v7

    iget v6, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->mCurrentDegree:F

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIIIF)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "Gallery2/PanoramaVideoPlayer"

    const-string v1, "<start>"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->autoPanoramaPlayback()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 97
    const-string v0, "Gallery2/PanoramaVideoPlayer"

    const-string v1, "<stop>"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->stopPanoramaPlayback()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
