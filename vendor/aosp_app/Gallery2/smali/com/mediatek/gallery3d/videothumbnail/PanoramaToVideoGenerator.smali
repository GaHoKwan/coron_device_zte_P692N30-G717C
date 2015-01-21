.class public Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;
.source "PanoramaToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FRAME_COUNT:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaToVideoGenerator"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFrameDegreeGap:F

.field private mFrameHeight:I

.field private mFrameSkip:F

.field private mFrameWidth:I

.field private mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

.field private mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

.field private mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)Lcom/android/gallery3d/ui/RawTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;Lcom/android/gallery3d/ui/RawTexture;)Lcom/android/gallery3d/ui/RawTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameDegreeGap:F

    return v0
.end method


# virtual methods
.method public deInit(Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 2
    .parameter "item"
    .parameter "videoType"

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->freeResources()V

    .line 111
    :cond_2
    return-void
.end method

.method public getBitmapAtFrame(Lcom/android/gallery3d/data/MediaItem;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "item"
    .parameter "videoType"
    .parameter "frameIndex"

    .prologue
    .line 114
    int-to-float v2, p3

    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameSkip:F

    mul-float/2addr v2, v3

    float-to-int p3, v2

    .line 115
    new-instance v2, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-direct {v2, p0, p3}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;-><init>(Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;I)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    .line 116
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 117
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 118
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    monitor-enter v3

    .line 119
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 121
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "Gallery2/PanoramaToVideoGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getBitmapAtFrame> InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v2, "Gallery2/PanoramaToVideoGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getBitmapAtFrame> item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frameIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    .line 132
    return-object v0
.end method

.method public init(Lcom/android/gallery3d/data/MediaItem;ILcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;)V
    .locals 10
    .parameter "item"
    .parameter "videoType"
    .parameter "config"

    .prologue
    const/16 v9, 0x2d

    const/4 v3, 0x1

    const v8, 0x42855555

    const/high16 v7, 0x3f80

    .line 42
    sget-boolean v1, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_1
    if-nez p2, :cond_2

    const/16 v6, 0x200

    .line 47
    .local v6, targetSize:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->decodePanoramaBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 49
    const-string v1, "Gallery2/PanoramaToVideoGenerator"

    const-string v2, "<init> mBitmap == null, decode fail"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    return-void

    .line 44
    .end local v6           #targetSize:I
    :cond_2
    const/16 v6, 0x400

    goto :goto_0

    .line 52
    .restart local v6       #targetSize:I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->resizeBitmapToProperRatio(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, pconfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    if-nez p2, :cond_4

    .line 58
    const/16 v1, 0xc8

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 59
    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 61
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .end local v0           #pconfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iget v4, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    const/high16 v5, 0x3fc0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIIIF)V

    .line 64
    .restart local v0       #pconfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    const/16 v1, 0x7d00

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 65
    iput v8, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    .line 76
    :goto_2
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 77
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 80
    new-instance v1, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    .line 81
    iget v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameWidth:I

    .line 82
    iget v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameHeight:I

    .line 83
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameDegreeGap:F

    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameDegreeGap:F

    .line 84
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    if-le v1, v9, :cond_5

    .line 85
    iput v9, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 86
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    int-to-float v1, v1

    const/high16 v2, 0x4234

    div-float/2addr v1, v2

    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameSkip:F

    .line 94
    :goto_3
    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 95
    const-string v1, "Gallery2/PanoramaToVideoGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<init> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] , frameCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 67
    :cond_4
    const/16 v1, 0x280

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    .line 68
    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/mediatek/gallery3d/panorama/PanoramaHelper;->getPanoramaScreenNailWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    .line 70
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .end local v0           #pconfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameWidth:I

    iget v4, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameHeight:I

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;-><init>(IIIIF)V

    .line 73
    .restart local v0       #pconfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;
    const v1, 0x1312d00

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->bitRate:I

    .line 74
    iput v8, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameInterval:F

    goto/16 :goto_2

    .line 91
    :cond_5
    iget v1, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mFrameTotalCount:I

    iput v1, p3, Lcom/mediatek/gallery3d/videothumbnail/BitmapStreamToVideoGenerator$VideoConfig;->frameCount:I

    .line 92
    iput v7, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mFrameSkip:F

    goto :goto_3
.end method

.method public onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 2
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->mTask:Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator$PanoramaFrameTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaToVideoGenerator;->deInit(Lcom/android/gallery3d/data/MediaItem;I)V

    .line 142
    return-void

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
