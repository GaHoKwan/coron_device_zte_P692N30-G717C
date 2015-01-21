.class public Lcom/android/mipop/cropimage/CropView;
.super Landroid/widget/ImageView;


# instance fields
.field private aY:I

.field private aZ:I

.field private cb:I

.field private cm:F

.field private dM:Lcom/android/mipop/cropimage/a;

.field private dN:Lcom/android/mipop/cropimage/p;

.field private dO:J

.field private dP:Lcom/android/mipop/cropimage/w;

.field private dQ:I

.field private dR:I

.field private dS:Z

.field private dT:I

.field private dU:F

.field private dV:I

.field private dW:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    new-instance v0, Lcom/android/mipop/cropimage/y;

    invoke-direct {v0, p1}, Lcom/android/mipop/cropimage/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropView;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dU:F

    const/high16 v0, 0x4170

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dU:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mipop/cropimage/CropView;->setPadding(IIII)V

    return-void
.end method

.method private X()V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dV:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dW:I

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mipop/cropimage/w;->a(FII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    invoke-interface {v0}, Lcom/android/mipop/cropimage/w;->clear()V

    return-void
.end method

.method public W()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/mipop/cropimage/w;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public Y()V
    .locals 6

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    instance-of v0, v0, Lcom/android/mipop/cropimage/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->dV:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->dW:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    invoke-interface {v1, v0}, Lcom/android/mipop/cropimage/w;->a([Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/mipop/cropimage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->dM:Lcom/android/mipop/cropimage/a;

    return-void
.end method

.method public a(Lcom/android/mipop/cropimage/w;)V
    .locals 4

    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->cm:F

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mipop/cropimage/w;->a(FII)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dW:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dV:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/w;->d(II)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    return-void
.end method

.method public g(I)V
    .locals 4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dU:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    invoke-interface {v0, p1}, Lcom/android/mipop/cropimage/w;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropView;->X()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dW:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dV:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/w;->d(II)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->Y()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    :goto_0
    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    :goto_2
    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    sub-int/2addr v0, v1

    :goto_3
    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_4
    return v4

    :cond_1
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->cb:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dT:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    goto :goto_3

    :pswitch_0
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->aY:I

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->aZ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mipop/cropimage/CropView;->dO:J

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/w;->a(II)V

    goto :goto_4

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->aY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->aY:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->aZ:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->aZ:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    :cond_5
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/w;->b(II)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    goto :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mipop/cropimage/CropView;->dO:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dM:Lcom/android/mipop/cropimage/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dM:Lcom/android/mipop/cropimage/a;

    invoke-interface {v0}, Lcom/android/mipop/cropimage/a;->a()V

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dP:Lcom/android/mipop/cropimage/w;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->dQ:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->dR:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/w;->c(II)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    goto/16 :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropView;->dS:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dN:Lcom/android/mipop/cropimage/p;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->dN:Lcom/android/mipop/cropimage/p;

    invoke-interface {v0}, Lcom/android/mipop/cropimage/p;->O()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->V()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
