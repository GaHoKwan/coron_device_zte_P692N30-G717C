.class public Lapf;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Path;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lapi;

.field private a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

.field private a:Z

.field private a:[S

.field private b:I

.field private b:Landroid/graphics/Rect;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

.field private b:Z

.field private c:I

.field private c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lapf;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lapf;->b:Landroid/graphics/Rect;

    .line 74
    iput v2, p0, Lapf;->e:I

    .line 75
    iput v2, p0, Lapf;->f:I

    .line 77
    iput-object v3, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    .line 91
    iput-object p1, p0, Lapf;->a:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lapf;->a:Landroid/view/View;

    .line 93
    iput p3, p0, Lapf;->a:I

    .line 94
    iput p4, p0, Lapf;->d:I

    .line 95
    iput-boolean p5, p0, Lapf;->a:Z

    .line 97
    invoke-virtual {p0, v3}, Lapf;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapf;->setClippingEnabled(Z)V

    .line 100
    const/16 v0, 0x7d5

    new-array v0, v0, [S

    iput-object v0, p0, Lapf;->a:[S

    .line 102
    invoke-virtual {p0}, Lapf;->a()V

    .line 103
    return-void
.end method

.method static synthetic a(Lapf;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lapf;->d:I

    return v0
.end method

.method static synthetic a(Lapf;)Lapi;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lapf;->a:Lapi;

    return-object v0
.end method

.method static synthetic a(Lapf;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lapf;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x7d0

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 410
    .line 411
    if-eqz p1, :cond_4

    move v1, v2

    move v3, v2

    .line 412
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 413
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    move v4, v3

    move v3, v2

    .line 414
    :goto_1
    iget-object v5, v0, Lqo;->a:[F

    array-length v5, v5

    if-ge v3, v5, :cond_0

    if-ge v4, v8, :cond_0

    .line 415
    iget-object v5, p0, Lapf;->a:[S

    iget-object v6, v0, Lqo;->a:[F

    aget v6, v6, v3

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v4

    .line 414
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 418
    :cond_0
    if-gt v4, v8, :cond_2

    .line 419
    iget-object v0, p0, Lapf;->a:[S

    aput-short v7, v0, v4

    .line 420
    iget-object v0, p0, Lapf;->a:[S

    add-int/lit8 v3, v4, 0x1

    aput-short v2, v0, v3

    .line 421
    add-int/lit8 v3, v4, 0x2

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v4, v3

    .line 427
    :cond_2
    :goto_2
    const/16 v0, 0x7d2

    if-gt v4, v0, :cond_3

    .line 428
    iget-object v0, p0, Lapf;->a:[S

    aput-short v7, v0, v4

    .line 429
    iget-object v0, p0, Lapf;->a:[S

    add-int/lit8 v1, v4, 0x1

    aput-short v7, v0, v1

    .line 430
    iget-object v0, p0, Lapf;->a:[S

    add-int/lit8 v1, v4, 0x2

    aput-short v7, v0, v1

    .line 432
    :cond_3
    return-void

    :cond_4
    move v4, v2

    goto :goto_2
.end method

.method static synthetic a(Lapf;)[S
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lapf;->a:[S

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    const v6, 0x7f0b007e

    const/4 v5, 0x5

    const/high16 v4, 0x40a0

    .line 369
    iget-object v0, p0, Lapf;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lapf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0xFFE84900"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lapf;->b:I

    .line 374
    const v2, 0x7f0b007a

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lapf;->c:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lapf;->a:J

    .line 387
    iget-boolean v0, p0, Lapf;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    .line 389
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 391
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget-object v2, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    :goto_1
    return-void

    .line 376
    :catch_0
    move-exception v2

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 379
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    iput v5, p0, Lapf;->c:I

    goto :goto_0

    .line 396
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lapf;->a:Landroid/graphics/Path;

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lapf;->f:I

    return v0
.end method

.method public a()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public a()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const v3, 0x3b03126f

    const/4 v4, 0x0

    .line 112
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lapf;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v2, p0, Lapf;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 114
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v7, v8}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setFadeOffset(J)V

    .line 115
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeType(I)V

    .line 116
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeLengthThreshold(F)V

    .line 117
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeSquarenessTreshold(F)V

    .line 118
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lapf;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lapf;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    .line 122
    new-instance v0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v2, p0, Lapf;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 123
    iget-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v7, v8}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setFadeOffset(J)V

    .line 124
    iget-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeType(I)V

    .line 125
    iget-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeLengthThreshold(F)V

    .line 126
    iget-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeSquarenessTreshold(F)V

    .line 129
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lapf;->a:Landroid/view/View;

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iput-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    .line 151
    iget-object v0, p0, Lapf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lapf;->a:Landroid/graphics/Rect;

    .line 153
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lapf;->b:Landroid/graphics/Rect;

    .line 158
    iget-object v0, p0, Lapf;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lapf;->b:Landroid/graphics/Rect;

    .line 160
    :cond_1
    invoke-virtual {p0, v1}, Lapf;->setContentView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput p1, p0, Lapf;->d:I

    .line 230
    return-void
.end method

.method public a(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-boolean v0, p0, Lapf;->a:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 343
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 344
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 345
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 346
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 347
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 348
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 349
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 354
    :goto_0
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 355
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 356
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 357
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 358
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 359
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 360
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumWidth(I)V

    .line 361
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumHeight(I)V

    .line 362
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    .line 364
    invoke-virtual {p0, p1, p2, p3, p4}, Lapf;->update(IIII)V

    .line 365
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lapf;->a:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {p0}, Lapf;->c()V

    .line 248
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lapf;->a:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 268
    iput-object p1, p0, Lapf;->a:Landroid/view/View;

    .line 269
    invoke-virtual {p0}, Lapf;->a()V

    .line 271
    :cond_0
    iput-boolean p2, p0, Lapf;->a:Z

    .line 272
    invoke-virtual {p0}, Lapf;->b()V

    .line 275
    return-void
.end method

.method public a(Lapi;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lapf;->a:Lapi;

    .line 252
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lapf;->b:Z

    .line 214
    invoke-virtual {p0}, Lapf;->c()V

    .line 215
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lapf;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lapf;->e:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v1

    invoke-virtual {v1}, Lawx;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lapf;->a:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lapf;->c:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iput-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 175
    :goto_0
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b()V

    .line 176
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    new-instance v1, Lapg;

    invoke-direct {v1, p0}, Lapg;-><init>(Lapf;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lqk;)V

    .line 194
    invoke-virtual {p0}, Lapf;->c()V

    .line 196
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a()V

    .line 197
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    new-instance v1, Laph;

    invoke-direct {v1, p0}, Laph;-><init>(Lapf;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lql;)V

    .line 210
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lapf;->b:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iput-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iput p1, p0, Lapf;->f:I

    .line 234
    iget-object v0, p0, Lapf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lapf;->e:I

    .line 235
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lapf;->d:I

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Lapf;->f()V

    .line 260
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget v1, p0, Lapf;->b:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureColor(I)V

    .line 261
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget v1, p0, Lapf;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGestureStrokeWidth(F)V

    .line 262
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-wide v1, p0, Lapf;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setFadeOffset(J)V

    .line 263
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setDashRectPath(Landroid/graphics/Path;)V

    .line 264
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-boolean v0, p0, Lapf;->a:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iget-object v1, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 286
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    iget-object v1, p0, Lapf;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->addView(Landroid/view/View;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 293
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 294
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 295
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 296
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 297
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 298
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 300
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 301
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 302
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 303
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 304
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 305
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumWidth(I)V

    .line 306
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumHeight(I)V

    .line 307
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    .line 338
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v0}, Lapf;->setHeight(I)V

    .line 313
    iget-object v0, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lapf;->setWidth(I)V

    .line 324
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 327
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 328
    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 329
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 330
    iget-object v1, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 331
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumWidth(I)V

    .line 332
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lapf;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setMinimumHeight(I)V

    .line 333
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    .line 335
    iget-object v0, p0, Lapf;->a:Landroid/view/View;

    const/16 v1, 0x33

    iget-object v2, p0, Lapf;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lapf;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lapf;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 437
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 439
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lapf;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setVisibility(I)V

    .line 441
    :cond_0
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lapf;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lapf;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :cond_0
    return-void
.end method
