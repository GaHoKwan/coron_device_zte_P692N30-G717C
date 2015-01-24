.class public Lcom/android/mipop/paintpad/a/j;
.super Lcom/android/mipop/paintpad/a/b;


# instance fields
.field private hG:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mipop/paintpad/a/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/a/j;->hG:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/j;->aQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(FFLandroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/a/j;->aR:Z

    iput p1, p0, Lcom/android/mipop/paintpad/a/j;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/j;->aP:F

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/j;->hG:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mipop/paintpad/a/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mipop/paintpad/a/e;-><init>(Lcom/android/mipop/paintpad/a/j;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/a/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/j;->hG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/a/e;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/a/e;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/mipop/paintpad/a/j;->aO:F

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/a/e;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/a/j;->aP:F

    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/a/j;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/mipop/paintpad/a/j;->aO:F

    iget v1, p0, Lcom/android/mipop/paintpad/a/j;->aP:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(FFLandroid/graphics/Canvas;)V
    .locals 2

    iput p1, p0, Lcom/android/mipop/paintpad/a/j;->aO:F

    iput p2, p0, Lcom/android/mipop/paintpad/a/j;->aP:F

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/j;->hG:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mipop/paintpad/a/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mipop/paintpad/a/e;-><init>(Lcom/android/mipop/paintpad/a/j;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/a/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/paintpad/a/j;->aQ:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/a/j;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method
