.class public Lcom/android/mipop/paintpad/a/f;
.super Lcom/android/mipop/paintpad/a/b;


# instance fields
.field gc:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/a/b;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->aQ:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bk()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->aQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->aQ:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public a(FFLandroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/f;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b(FFLandroid/graphics/Canvas;)V
    .locals 6

    const/high16 v2, 0x4080

    const/high16 v5, 0x4000

    iget v0, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/f;->aR:Z

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    iget v3, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/a/f;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c(FFLandroid/graphics/Canvas;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->gc:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/a/f;->aO:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/f;->aP:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/a/f;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/f;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/f;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method
