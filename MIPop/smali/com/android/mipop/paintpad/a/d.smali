.class public Lcom/android/mipop/paintpad/a/d;
.super Lcom/android/mipop/paintpad/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/paintpad/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/d;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x4000

    iget v0, p0, Lcom/android/mipop/paintpad/a/d;->aO:F

    iget v1, p0, Lcom/android/mipop/paintpad/a/d;->aM:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/a/d;->aO:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/d;->aM:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/a/d;->aP:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/d;->aN:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/a/d;->aP:F

    iget v3, p0, Lcom/android/mipop/paintpad/a/d;->aN:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    div-float/2addr v0, v5

    iget v1, p0, Lcom/android/mipop/paintpad/a/d;->aM:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/d;->aO:F

    iget v3, p0, Lcom/android/mipop/paintpad/a/d;->aM:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/a/d;->aN:F

    iget v3, p0, Lcom/android/mipop/paintpad/a/d;->aP:F

    iget v4, p0, Lcom/android/mipop/paintpad/a/d;->aN:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/a/d;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/d;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/a/d;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/d;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
