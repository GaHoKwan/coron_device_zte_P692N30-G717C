.class public Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;
.super Ljava/lang/Object;
.source "PanoramaScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static final DEFAULT_DEGREE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaScreenNail"


# instance fields
.field private mColor:I

.field private mColorPanorama:Z

.field private mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

.field private mLastDegree:F

.field private mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(ILcom/mediatek/gallery3d/panorama/PanoramaConfig;)V
    .locals 2
    .parameter "color"
    .parameter "config"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColorPanorama:Z

    .line 25
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 32
    iput p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColorPanorama:Z

    .line 34
    iput-object p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .line 35
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;-><init>(ILcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V
    .locals 2
    .parameter "bitmap"
    .parameter "config"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColorPanorama:Z

    .line 25
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 27
    iput-object p2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    .line 28
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;-><init>(Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/panorama/PanoramaConfig;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIIIF)V

    .line 55
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIIIF)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "degree"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 82
    :cond_0
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    cmpl-float v0, v0, p6

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0, p1, v1, p6}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->drawOnTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)V

    .line 84
    iput p6, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 87
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 60
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 4
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"
    .parameter "degree"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 93
    :cond_0
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    int-to-float v2, p4

    invoke-virtual {v0, p1, v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->drawOnTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;F)V

    .line 95
    int-to-float v0, p4

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 98
    return-void
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v0, v0, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mConfig:Lcom/mediatek/gallery3d/panorama/PanoramaConfig;

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaConfig;->mCanvasScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isColorPanorma()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColorPanorama:Z

    return v0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->freeResources()V

    .line 71
    :cond_1
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 72
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mColorPanorama:Z

    .line 102
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mLastDegree:F

    .line 103
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaScreenNail;->mPanoramaDrawer:Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaDrawer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method
