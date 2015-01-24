.class public Lcom/android/mipop/paintpad/a/g;
.super Lcom/android/mipop/paintpad/a/b;


# instance fields
.field private gL:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mipop/paintpad/a/b;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/g;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aM:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/g;->aO:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aM:F

    :goto_0
    iput v0, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aO:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/g;->aM:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aO:F

    :goto_1
    iput v0, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aN:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/g;->aP:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aN:F

    :goto_2
    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aP:F

    iget v2, p0, Lcom/android/mipop/paintpad/a/g;->aN:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aP:F

    :goto_3
    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/g;->gL:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aO:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aM:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aP:F

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/a/g;->aN:F

    goto :goto_3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/a/g;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/g;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/a/g;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/g;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
