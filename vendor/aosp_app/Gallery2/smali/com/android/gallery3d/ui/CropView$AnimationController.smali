.class Lcom/android/gallery3d/ui/CropView$AnimationController;
.super Lcom/android/gallery3d/anim/Animation;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationController"
.end annotation


# instance fields
.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mStartScale:F

.field private mStartX:I

.field private mStartY:I

.field private mTargetScale:F

.field private mTargetX:I

.field private mTargetY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/CropView;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 308
    const/16 v0, 0x4e2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/Animation;->setDuration(I)V

    .line 309
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 310
    return-void
.end method

.method private calculateTarget(Landroid/graphics/RectF;)V
    .locals 14
    .parameter "highlight"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v12, 0x3f00

    .line 401
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 402
    .local v7, width:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v8

    int-to-float v2, v8

    .line 404
    .local v2, height:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 405
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 406
    .local v5, minScale:F
    const v8, 0x3f19999a

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float v9, v7, v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    div-float v10, v2, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8, v5, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    .line 409
    .local v6, scale:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 411
    .local v0, centerX:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/RectF;->top:F

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 414
    .local v1, centerY:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_1

    .line 415
    mul-float v8, v7, v12

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 416
    .local v3, limitX:I
    iget v8, p1, Landroid/graphics/RectF;->left:F

    iget v9, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 418
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v0, v3, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 422
    .end local v3           #limitX:I
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v8, v2

    if-lez v8, :cond_2

    .line 423
    mul-float v8, v2, v12

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 424
    .local v4, limitY:I
    iget v8, p1, Landroid/graphics/RectF;->top:F

    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 426
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v1, v4, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 430
    .end local v4           #limitY:I
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    .line 431
    iput v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    .line 432
    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    .line 434
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    .end local v5           #minScale:F
    .end local v6           #scale:F
    :cond_0
    return-void

    .line 420
    .restart local v0       #centerX:I
    .restart local v1       #centerY:I
    .restart local v5       #minScale:F
    .restart local v6       #scale:F
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    div-int/lit8 v0, v8, 0x2

    goto :goto_0

    .line 428
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    goto :goto_1
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    return v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 315
    const/high16 v0, 0x4000

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 318
    return-void
.end method

.method public inverseMapPoint(Landroid/graphics/PointF;)V
    .locals 6
    .parameter "point"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 349
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 350
    .local v0, s:F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 352
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 354
    return-void
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 12
    .parameter "input"
    .parameter "output"

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v9, 0x4000

    .line 357
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v2, v10, v11

    .line 358
    .local v2, offsetX:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v3, v10, v11

    .line 359
    .local v3, offsetY:F
    iget v7, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 360
    .local v7, x:I
    iget v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 361
    .local v8, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 365
    .local v5, s:F
    iget v10, p1, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    int-to-float v11, v7

    sub-float/2addr v10, v11

    mul-float/2addr v10, v5

    add-float v1, v2, v10

    .line 366
    .local v1, left:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v9

    if-gez v10, :cond_0

    move v1, v9

    .line 367
    :cond_0
    iget v10, p1, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    int-to-float v11, v8

    sub-float/2addr v10, v11

    mul-float/2addr v10, v5

    add-float v6, v3, v10

    .line 368
    .local v6, top:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v9

    if-gez v10, :cond_1

    move v6, v9

    .line 369
    :cond_1
    iget v10, p1, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    int-to-float v11, v7

    sub-float/2addr v10, v11

    mul-float/2addr v10, v5

    add-float v4, v2, v10

    .line 370
    .local v4, right:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v9

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v4, v10, v9

    .line 371
    :cond_2
    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    int-to-float v11, v8

    sub-float/2addr v10, v11

    mul-float/2addr v10, v5

    add-float v0, v3, v10

    .line 372
    .local v0, bottom:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v0, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v9

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v0, v10, v9

    .line 373
    :cond_3
    invoke-virtual {p2, v1, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 375
    return-object p2
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 380
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 381
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 382
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 384
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->forceStop()V

    .line 386
    :cond_0
    return-void
.end method

.method public parkNow(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->forceStop()V

    .line 343
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 344
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 345
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    .line 346
    return-void
.end method

.method public startParkingAnimation(Landroid/graphics/RectF;)V
    .locals 11
    .parameter "highlight"

    .prologue
    const/high16 v10, 0x4280

    const v9, 0x3f4ccccd

    const v8, 0x3ecccccd

    .line 321
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v6}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, p1, v7}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 322
    .local v3, r:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    .line 323
    .local v4, width:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 325
    .local v1, height:I
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 326
    .local v5, wr:F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 327
    .local v2, hr:F
    const/16 v0, 0x40

    .line 328
    .local v0, d:I
    cmpl-float v6, v5, v8

    if-ltz v6, :cond_0

    cmpg-float v6, v5, v9

    if-gez v6, :cond_0

    cmpl-float v6, v2, v8

    if-ltz v6, :cond_0

    cmpg-float v6, v2, v9

    if-gez v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-int/lit8 v7, v4, -0x40

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v7, v1, -0x40

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 334
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 335
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    .line 336
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/Animation;->start()V

    goto :goto_0
.end method
