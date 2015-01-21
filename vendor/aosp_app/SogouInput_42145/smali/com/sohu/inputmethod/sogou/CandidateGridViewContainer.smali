.class public Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Laoa;
.implements Ljava/util/Observer;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageButton;

.field private a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/VerticalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    return-object v0
.end method

.method private a(Lawc;Lawe;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    invoke-virtual {p2}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 255
    if-eqz v5, :cond_0

    .line 256
    sget-object v0, Laxr;->i:[I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 257
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_4

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 261
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 268
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 274
    :goto_1
    if-eqz v2, :cond_3

    .line 275
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 280
    :goto_2
    invoke-static {v5}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->n:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->n:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    sget-object v1, Lawd;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->a(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 314
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 315
    :goto_4
    div-int/lit8 v1, v0, 0x8

    .line 316
    div-int/lit8 v2, v0, 0x7

    .line 317
    sget-boolean v3, Laox;->a:Z

    if-eqz v3, :cond_6

    .line 319
    div-int/lit8 v0, v0, 0xc

    .line 322
    :goto_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v3, v2, 0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setViewHeight(I)V

    .line 331
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setPadding(IIII)V

    .line 343
    return-void

    :cond_1
    move-object v0, v1

    .line 264
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v4

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 271
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto/16 :goto_1

    .line 277
    :cond_3
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto/16 :goto_2

    .line 285
    :cond_4
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 286
    invoke-static {v5}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 314
    :cond_5
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 426
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 430
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Z)V

    .line 374
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Z)V

    .line 379
    return-void
.end method

.method public a(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Z)V

    .line 384
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Z)V

    .line 385
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    if-nez v0, :cond_0

    .line 71
    const v0, 0x7f0701b9

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    .line 72
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(I)V

    .line 73
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setCanScrollVertical(Z)V

    .line 74
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setDrawFadingEnable(Z)V

    .line 75
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMeasureEarlier(Z)V

    .line 76
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setOverScrollMode(I)V

    .line 77
    const v0, 0x7f0701b2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    .line 78
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(I)V

    .line 79
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setCanScrollhorizontal(Z)V

    .line 80
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setUpdateWhenUp(Z)V

    .line 81
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setMeasureEarlier(Z)V

    .line 82
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setOverScrollMode(I)V

    .line 85
    const v0, 0x7f0701b4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/view/View;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/view/View;

    new-instance v1, Laog;

    invoke-direct {v1, p0}, Laog;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    const v0, 0x7f0701b5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    new-instance v1, Laoh;

    invoke-direct {v1, p0}, Laoh;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_1
    const v0, 0x7f0701b8

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 117
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    new-instance v1, Laoi;

    invoke-direct {v1, p0}, Laoi;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_2
    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    .line 132
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    new-instance v1, Laoj;

    invoke-direct {v1, p0}, Laoj;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_3
    const v0, 0x7f0701b7

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    .line 151
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 153
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 154
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    new-instance v1, Laok;

    invoke-direct {v1, p0}, Laok;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    :cond_4
    const v0, 0x7f0701b6

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 190
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    new-instance v1, Laol;

    invoke-direct {v1, p0}, Laol;-><init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    :cond_5
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:I

    .line 251
    return-void
.end method

.method public setFilterEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 414
    return-void
.end method

.method public setFilterVisible(I)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 422
    return-void
.end method

.method public setFiltered(Z)V
    .locals 1
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 418
    return-void
.end method

.method public setLockEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 406
    return-void
.end method

.method public setLockVisible(I)V
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 410
    return-void
.end method

.method public setLocked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 402
    return-void
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 398
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 365
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->b()Lawc;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:Landroid/content/Context;

    invoke-static {v1}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a:I

    invoke-virtual {v1, v2}, Laxc;->a(I)Lawe;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lawc;Lawe;)V

    .line 369
    :cond_0
    return-void
.end method
