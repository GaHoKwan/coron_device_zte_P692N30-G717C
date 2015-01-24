.class public Lcom/android/mipop/paintpad/a/a;
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

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/a;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6

    iget v1, p0, Lcom/android/mipop/paintpad/a/a;->aM:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/a;->aN:F

    iget v3, p0, Lcom/android/mipop/paintpad/a/a;->aO:F

    iget v4, p0, Lcom/android/mipop/paintpad/a/a;->aP:F

    move-object v0, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/a;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/a/a;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/a;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
