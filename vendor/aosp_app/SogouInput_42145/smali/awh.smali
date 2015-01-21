.class public Lawh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 21
    sget-boolean v1, Lcom/sohu/inputmethod/sogou/SogouIME;->b:Z

    if-nez v1, :cond_0

    .line 33
    :goto_0
    return p0

    .line 23
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 24
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 26
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 27
    add-int/lit8 v3, v1, -0x5a

    .line 28
    add-int/lit8 v2, v2, -0x5a

    .line 29
    add-int/lit8 v1, v5, -0x5a

    .line 30
    if-gez v3, :cond_1

    move v3, v0

    .line 31
    :cond_1
    if-gez v2, :cond_2

    move v2, v0

    .line 32
    :cond_2
    if-gez v1, :cond_3

    .line 33
    :goto_1
    invoke-static {v4, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 32
    goto :goto_1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 13
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 17
    :cond_0
    :goto_0
    return-object p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 15
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->b:Z

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Laox;->a:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
