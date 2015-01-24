.class public abstract Lcom/android/mipop/paintpad/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field public aM:F

.field public aN:F

.field public aO:F

.field public aP:F

.field protected aQ:Landroid/graphics/Paint;

.field protected aR:Z

.field protected aS:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->aR:Z

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->a:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/BlurMaskFilter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->a:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(FFLandroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/a/b;->reset()V

    iput p1, p0, Lcom/android/mipop/paintpad/a/b;->aM:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/b;->aN:F

    iput p1, p0, Lcom/android/mipop/paintpad/a/b;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/b;->aP:F

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/BlurMaskFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->a:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
.end method

.method public b(FFLandroid/graphics/Canvas;)V
    .locals 3

    const/high16 v2, 0x4080

    iget v0, p0, Lcom/android/mipop/paintpad/a/b;->aO:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/a/b;->aP:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->aR:Z

    :cond_1
    iput p1, p0, Lcom/android/mipop/paintpad/a/b;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/b;->aP:F

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v7, 0x1e

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int v0, v4

    add-int/lit8 v0, v0, 0xe

    :goto_0
    int-to-float v5, v0

    const/high16 v6, 0x4040

    div-float v6, v4, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, p1}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aS:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    const/high16 v5, 0x4000

    div-float v5, v4, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/b;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/b;->aQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1
.end method

.method public c(FFLandroid/graphics/Canvas;)Z
    .locals 1

    iput p1, p0, Lcom/android/mipop/paintpad/a/b;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/b;->aP:F

    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/a/b;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/a/b;->aR:Z

    return v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/paintpad/a/b;->aM:F

    iput v0, p0, Lcom/android/mipop/paintpad/a/b;->aN:F

    iput v0, p0, Lcom/android/mipop/paintpad/a/b;->aO:F

    iput v0, p0, Lcom/android/mipop/paintpad/a/b;->aP:F

    return-void
.end method
