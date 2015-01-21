.class public Lcom/sohu/inputmethod/multimedia/ProgressImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-wide v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a:J

    .line 12
    iput-wide v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->b:J

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-wide v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a:J

    .line 12
    iput-wide v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->b:J

    .line 16
    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-wide p3, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a:J

    .line 24
    iput-wide p1, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->b:J

    .line 25
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->invalidate()V

    .line 26
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    iget-wide v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 41
    int-to-long v3, v1

    int-to-long v5, v1

    iget-wide v7, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->b:J

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a:J

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 42
    invoke-virtual {p1, v9, v9, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 43
    const v1, -0x66fbe3d0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method
