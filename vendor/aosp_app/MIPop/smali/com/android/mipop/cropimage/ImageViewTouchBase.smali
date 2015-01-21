.class abstract Lcom/android/mipop/cropimage/ImageViewTouchBase;
.super Landroid/widget/ImageView;


# instance fields
.field protected eU:Landroid/graphics/Matrix;

.field protected eV:Landroid/graphics/Matrix;

.field private final eW:Landroid/graphics/Matrix;

.field private final eX:[F

.field protected final eY:Lcom/android/mipop/cropimage/b;

.field eZ:I

.field fa:I

.field fb:F

.field private fc:F

.field private fd:Landroid/content/Context;

.field private fe:Lcom/android/mipop/cropimage/aa;

.field private ff:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eU:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eW:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eX:[F

    new-instance v0, Lcom/android/mipop/cropimage/b;

    invoke-direct {v0, v2}, Lcom/android/mipop/cropimage/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eZ:I

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fa:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fd:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eU:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eW:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eX:[F

    new-instance v0, Lcom/android/mipop/cropimage/b;

    invoke-direct {v0, v2}, Lcom/android/mipop/cropimage/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eZ:I

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fa:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fd:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->init()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v1, p1}, Lcom/android/mipop/cropimage/b;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v1, p2}, Lcom/android/mipop/cropimage/b;->setRotation(I)V

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fe:Lcom/android/mipop/cropimage/aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fe:Lcom/android/mipop/cropimage/aa;

    invoke-interface {v1, v0}, Lcom/android/mipop/cropimage/aa;->c(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/android/mipop/cropimage/b;Landroid/graphics/Matrix;)V
    .locals 10

    const/high16 v9, 0x4000

    const/high16 v8, 0x4040

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/android/mipop/cropimage/b;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Lcom/android/mipop/cropimage/b;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v0, v1, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float v0, v2, v4

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f02000a

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v7, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fc:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v0, v7

    int-to-float v7, v0

    div-float/2addr v7, v1

    int-to-float v8, v0

    div-float/2addr v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3f80

    sub-float v0, v6, v0

    mul-float/2addr v0, v5

    invoke-virtual {p1}, Lcom/android/mipop/cropimage/b;->s()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    div-float/2addr v1, v9

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    div-float/2addr v0, v9

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private init()V
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fd:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fc:F

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eX:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eX:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a(FFF)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fb:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fb:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ai()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(ZZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ai()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v4}, Lcom/android/mipop/cropimage/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->b(FF)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ai()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected ai()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eW:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eU:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eW:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eW:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected b(F)V
    .locals 3

    const/high16 v2, 0x4000

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(FFF)V

    return-void
.end method

.method protected b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected getScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eV:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->b(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eZ:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->fa:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ff:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eY:Lcom/android/mipop/cropimage/b;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->eU:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(Lcom/android/mipop/cropimage/b;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->ai()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
