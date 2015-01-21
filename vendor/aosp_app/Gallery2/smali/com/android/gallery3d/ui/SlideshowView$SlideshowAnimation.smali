.class Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
.super Lcom/android/gallery3d/anim/CanvasAnimation;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideshowAnimation"
.end annotation


# instance fields
.field private mCurrentScale:F

.field private final mHeight:I

.field private final mMovingVector:Landroid/graphics/PointF;

.field private mProgress:F

.field private mSubType:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V
    .locals 5
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "random"

    .prologue
    const/high16 v4, 0x3f00

    const v3, 0x3e4ccccd

    .line 234
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {p0}, Lcom/android/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mSubType:I

    .line 232
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mCurrentScale:F

    .line 235
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    .line 236
    iput p3, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    .line 237
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    .line 240
    const/16 v0, 0xdac

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/Animation;->setDuration(I)V

    .line 241
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 245
    iget-object v9, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    .line 246
    .local v8, viewWidth:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->this$0:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v7

    .line 248
    .local v7, viewHeight:I
    int-to-float v9, v8

    iget v10, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v7

    iget v11, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 252
    .local v2, initScale:F
    iget v9, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mSubType:I

    if-eqz v9, :cond_0

    .line 254
    int-to-float v9, v8

    int-to-float v10, v7

    iget v11, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mWidth:I

    iget v12, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mHeight:I

    iget v13, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mSubType:I

    invoke-static {v9, v10, v11, v12, v13}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMinimalScale(FFIII)F

    move-result v3

    .line 256
    .local v3, minScale:F
    iget v9, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mSubType:I

    invoke-static {v9}, Lcom/mediatek/gallery3d/util/MediatekFeature;->minScaleLimit(I)F

    move-result v6

    .line 257
    .local v6, tempScaleLimit:F
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    move v5, v6

    .line 258
    .local v5, scaleLimit:F
    :goto_0
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 261
    .end local v3           #minScale:F
    .end local v5           #scaleLimit:F
    .end local v6           #tempScaleLimit:F
    :cond_0
    const/high16 v9, 0x3f80

    const v10, 0x3e4ccccd

    iget v11, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v4, v2, v9

    .line 264
    .local v4, scale:F
    iput v4, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mCurrentScale:F

    .line 266
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 267
    .local v0, centerX:F
    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 269
    .local v1, centerY:F
    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 270
    const/4 v9, 0x0

    invoke-interface {p1, v4, v4, v9}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 271
    return-void

    .line 257
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    .end local v4           #scale:F
    .restart local v3       #minScale:F
    .restart local v6       #tempScaleLimit:F
    :cond_1
    const/high16 v5, 0x4000

    goto :goto_0
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x2

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mCurrentScale:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 280
    iput p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mProgress:F

    .line 281
    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 284
    iput p1, p0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->mSubType:I

    .line 285
    return-void
.end method
