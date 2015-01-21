.class public Lxr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILandroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v10, 0x3ff0

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    .line 50
    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 51
    iget v5, p1, Landroid/graphics/RectF;->right:F

    float-to-double v5, v5

    .line 52
    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    .line 53
    cmpl-double v9, v1, v10

    if-gtz v9, :cond_0

    cmpl-double v9, v3, v10

    if-gtz v9, :cond_0

    cmpl-double v9, v5, v10

    if-gtz v9, :cond_0

    cmpl-double v9, v7, v10

    if-lez v9, :cond_1

    .line 54
    :cond_0
    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 55
    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 56
    double-to-int v1, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 57
    double-to-int v1, v7

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    :goto_0
    return-object v0

    .line 59
    :cond_1
    int-to-double v9, p0

    mul-double/2addr v1, v9

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 60
    int-to-double v1, p0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 61
    int-to-double v1, p0

    mul-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 62
    int-to-double v1, p0

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
