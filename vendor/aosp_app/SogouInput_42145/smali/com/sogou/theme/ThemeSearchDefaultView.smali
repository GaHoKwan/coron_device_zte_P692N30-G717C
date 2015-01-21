.class public Lcom/sogou/theme/ThemeSearchDefaultView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/util/SparseArray;

.field private a:Lit;

.field private a:Ljava/util/ArrayList;

.field private a:Z

.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bg_theme_search_green"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bg_theme_search_blue"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bg_theme_search_pink"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bg_theme_search_yellow"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    .line 36
    iput-object v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Lit;

    .line 37
    iput-object v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    .line 38
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:I

    .line 39
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->b:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->c:I

    .line 44
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    .line 45
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->h:I

    .line 48
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    .line 60
    iput-object p1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:F

    .line 62
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:F

    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->e:I

    .line 63
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:F

    const/high16 v1, 0x41a0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->f:I

    .line 64
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:F

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->d:I

    .line 65
    invoke-direct {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->b()V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[I

    .line 73
    iput-boolean v5, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Z

    .line 74
    invoke-virtual {p0, v4}, Lcom/sogou/theme/ThemeSearchDefaultView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->setWillNotDraw(Z)V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/util/SparseArray;

    .line 77
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 277
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method private a(FF)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 264
    const/4 v1, -0x1

    .line 265
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 266
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 268
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 272
    :goto_1
    return v0

    .line 266
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 272
    goto :goto_1
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[I

    aget v0, v0, p1

    .line 243
    iget-boolean v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Z

    if-eqz v1, :cond_1

    .line 244
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 245
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 246
    iget v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->c:I

    if-ne v0, v1, :cond_0

    .line 247
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->c:I

    rem-int/lit8 v0, v0, 0x4

    .line 249
    :cond_0
    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->c:I

    .line 250
    iget-object v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[I

    aput v0, v1, p1

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "drawable"

    const-string v4, "com.sohu.inputmethod.sogou"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 254
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sogou/theme/ThemeSearchDefaultView;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    const-string v3, "color"

    const-string v4, "com.sohu.inputmethod.sogou"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 257
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 258
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    return-object v1

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 193
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->f:I

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    .line 194
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->h:I

    .line 195
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 196
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    iget v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->h:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 205
    iget-object v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 206
    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->e:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 207
    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->e:I

    add-int/2addr v2, v1

    .line 208
    add-int v3, p3, v0

    iget v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->e:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:I

    if-le v3, v4, :cond_0

    .line 209
    iget p3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->f:I

    iput p3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    .line 210
    iget v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->h:I

    iget v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->d:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->e:I

    add-int p4, v3, v4

    iput p4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->h:I

    .line 212
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p3, v0

    add-int v5, p4, v2

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    iget-boolean v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Z

    if-eqz v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, p5, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    :cond_1
    invoke-direct {p0, p5}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(I)[I

    move-result-object v5

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 217
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    iget-object v4, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v4

    div-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    iget v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->f:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->g:I

    .line 222
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 104
    iget-object v5, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 111
    :cond_0
    return-void

    .line 105
    :cond_1
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    iget-object v5, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p2, :cond_0

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 233
    sget-object v0, Laxr;->i:[I

    .line 234
    iget v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    if-ne v1, p1, :cond_0

    .line 235
    sget-object v0, Laxr;->g:[I

    .line 238
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->u()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->v()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Ljava/lang/String;I)V

    .line 86
    invoke-direct {p0, v1, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Ljava/lang/String;I)V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b047e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-direct {p0, v0, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Ljava/lang/String;I)V

    .line 96
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Z

    .line 97
    return-void

    .line 87
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-direct {p0, v0, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, v1, v3}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sogou/theme/ThemeSearchDefaultView;->b()V

    .line 125
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(Landroid/graphics/Canvas;)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Z

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 171
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 172
    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->b:I

    if-eq v1, v2, :cond_1

    .line 173
    :cond_0
    iget v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 174
    iget v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->b:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 175
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sogou/theme/ThemeSearchDefaultView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/sogou/theme/ThemeSearchDefaultView;->a(FF)I

    move-result v0

    .line 134
    if-ne v0, v3, :cond_1

    .line 138
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    .line 162
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_1
    iput v0, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    goto :goto_0

    .line 154
    :pswitch_2
    if-eq v0, v3, :cond_0

    iget v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    if-ne v1, v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Lit;

    iget-object v2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lit;->a(Ljava/lang/String;)V

    .line 156
    iput v3, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->i:I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setKeywordListener(Lit;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:Lit;

    .line 115
    return-void
.end method

.method public setViewSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput p1, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->a:I

    .line 119
    iput p2, p0, Lcom/sogou/theme/ThemeSearchDefaultView;->b:I

    .line 121
    return-void
.end method
