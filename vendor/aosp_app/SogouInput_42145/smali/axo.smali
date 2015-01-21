.class public Laxo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    div-int/lit8 v0, p0, 0x2

    .line 41
    if-ge v0, p3, :cond_1

    sub-int v1, p1, p3

    if-le v0, v1, :cond_1

    .line 42
    sub-int v0, p1, p3

    sub-int v1, p0, v0

    .line 43
    div-int/lit8 v0, p2, 0x2

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, p5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    sub-int v0, p0, v0

    .line 44
    if-le v1, v0, :cond_2

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    if-le v0, p3, :cond_0

    .line 47
    div-int/lit8 v0, p2, 0x2

    iget v1, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 48
    if-lt p3, v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12
    if-nez p0, :cond_1

    .line 15
    :cond_0
    :goto_0
    return p1

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    const/high16 v1, 0x43c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 15
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 28
    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 29
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    if-nez p0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return p1

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 21
    const/high16 v1, 0x4361

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 22
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return p1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 35
    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 36
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method
