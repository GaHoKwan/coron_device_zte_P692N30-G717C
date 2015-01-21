.class public Lcom/sohu/inputmethod/platform/PlatformScrollView;
.super Lcom/sohu/util/ScrollViewUtilWithScrollBar;
.source "SourceFile"


# instance fields
.field private a:Lcom/sohu/inputmethod/platform/PlatformView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private k:I

.field private l:I

.field private final m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:Z

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->m:I

    .line 48
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()V

    .line 49
    new-instance v0, Lyy;

    invoke-direct {v0, p0}, Lyy;-><init>(Lcom/sohu/inputmethod/platform/PlatformScrollView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollX()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v1

    .line 183
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingRight()I

    move-result v3

    sub-int v6, v2, v3

    .line 184
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v3

    sub-int v7, v2, v3

    .line 186
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 187
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    .line 188
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v6

    .line 189
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v7

    .line 192
    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Landroid/graphics/Canvas;II)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 198
    iget-object v8, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v8, v0, v1, v6, v7}, Lcom/sohu/inputmethod/platform/PlatformView;->setScrollDrawRect(IIII)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-object v0, p0

    move-object v1, p1

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Landroid/graphics/Canvas;IIII)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 204
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Landroid/graphics/Canvas;)V

    .line 205
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredHeight()I

    move-result v0

    .line 700
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    .line 59
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setFocusable(Z)V

    .line 62
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setDescendantFocusability(I)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setWillNotDraw(Z)V

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:I

    .line 66
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setCanScrollVertical(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setTheme()V

    .line 70
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    .line 74
    return-void
.end method

.method protected a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    const/16 v2, 0xfa

    const/16 v3, 0x9c4

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e()Z

    .line 528
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 456
    if-le v0, v3, :cond_4

    .line 458
    if-ltz p2, :cond_3

    move v0, v3

    :goto_1
    move p2, v0

    move v0, v3

    .line 466
    :cond_1
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 477
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 479
    int-to-float v2, v2

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const v4, 0x3e0f5c29

    mul-float/2addr v2, v4

    .line 481
    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->k:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_b

    .line 482
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->k:I

    int-to-float v2, v2

    move v4, v2

    .line 484
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v2

    .line 486
    if-gtz p2, :cond_6

    .line 487
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()F

    move-result v4

    .line 495
    :cond_2
    :goto_4
    const/high16 v5, 0x41f0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_7

    .line 499
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e()Z

    goto :goto_0

    .line 458
    :cond_3
    const/16 v0, -0x9c4

    goto :goto_1

    .line 459
    :cond_4
    if-ge v0, v2, :cond_1

    .line 464
    if-ltz p2, :cond_5

    move v0, v2

    :goto_5
    move p2, v0

    move v0, v2

    goto :goto_2

    :cond_5
    const/16 v0, -0xfa

    goto :goto_5

    .line 491
    :cond_6
    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 492
    int-to-float v4, v2

    goto :goto_4

    .line 502
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 517
    const/high16 v5, 0x447a

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x5

    .line 519
    if-nez v5, :cond_9

    .line 520
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 524
    :cond_8
    :goto_6
    if-lez p2, :cond_a

    neg-float v0, v4

    .line 526
    :goto_7
    float-to-int v4, v0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(IIIII)V

    .line 527
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->invalidate()V

    goto/16 :goto_0

    .line 521
    :cond_9
    if-le v5, v3, :cond_8

    move v5, v3

    .line 522
    goto :goto_6

    :cond_a
    move v0, v4

    .line 524
    goto :goto_7

    :cond_b
    move v4, v2

    goto :goto_3
.end method

.method public a(Landroid/graphics/Canvas;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 224
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v0

    .line 119
    if-lez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const-string v0, "abortAnimation abortAnimation"

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 684
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Z

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 430
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v2

    .line 431
    if-ltz v2, :cond_2

    if-le v2, v1, :cond_0

    if-lez v2, :cond_0

    .line 432
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {p0}, Laox;->a(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setBackGroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    iget-object v0, v0, Lazb;->a:Laxl;

    invoke-virtual {v0, v1}, Laxl;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 139
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    iput-object v1, v0, Lazb;->a:Laxl;

    .line 140
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    .line 142
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 144
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h()V

    .line 534
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v2

    .line 536
    if-gez v2, :cond_0

    .line 537
    neg-int v4, v2

    .line 545
    :goto_0
    const/16 v5, 0x190

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(IIIII)V

    .line 546
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 541
    if-le v2, v0, :cond_1

    if-lez v2, :cond_1

    .line 542
    sub-int v4, v0, v2

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v0, "scrollView dispatchDraw66666666666666666666666"

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 658
    :cond_1
    :goto_0
    return v0

    .line 586
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 587
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    if-nez v3, :cond_1

    .line 591
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Landroid/view/MotionEvent;)V

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 596
    packed-switch v2, :pswitch_data_0

    .line 658
    :cond_4
    :goto_1
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 599
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 601
    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:I

    .line 602
    if-le v2, v3, :cond_5

    move v2, v0

    .line 604
    :goto_2
    if-eqz v2, :cond_4

    .line 605
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 606
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    .line 607
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    .line 608
    iput v5, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    .line 609
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f()V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 602
    goto :goto_2

    .line 616
    :pswitch_1
    iput v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:F

    .line 617
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    .line 618
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:F

    .line 619
    iput v5, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    .line 620
    iput v5, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    .line 621
    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Z

    .line 629
    iget-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:Z

    if-eqz v2, :cond_4

    .line 630
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:I

    if-ge v2, v3, :cond_7

    :cond_6
    move v2, v0

    .line 632
    :goto_3
    if-eqz v2, :cond_8

    .line 633
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 634
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 631
    goto :goto_3

    .line 636
    :cond_8
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    goto :goto_1

    .line 644
    :pswitch_2
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazg;

    .line 645
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lazg;->a(IF)V

    .line 647
    invoke-virtual {v2}, Lazg;->a()F

    .line 648
    invoke-virtual {v2}, Lazg;->b()F

    .line 649
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:F

    sub-float v2, v3, v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 650
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 651
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 653
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f()V

    .line 654
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->g()V

    goto/16 :goto_1

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v0

    .line 250
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-nez v0, :cond_2

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->onMeasure(II)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 255
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 256
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 258
    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:I

    if-lez v4, :cond_3

    .line 259
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:I

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 262
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 264
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 265
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 266
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 268
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 271
    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    .line 273
    :cond_4
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->o:I

    .line 274
    iput v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->n:I

    .line 275
    invoke-virtual {p0, v3, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setMeasuredDimension(II)V

    .line 277
    iput v5, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->k:I

    .line 279
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:I

    if-ne v0, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b()I

    move-result v0

    .line 282
    if-lez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Z

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    const-string v0, "onTouchEvent------MotionEvent"

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v1

    .line 292
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 298
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Z)V

    .line 302
    iput v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:F

    .line 303
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    .line 304
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:F

    .line 305
    iput v6, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    .line 306
    iput v6, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    goto :goto_0

    .line 310
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:Z

    if-eqz v0, :cond_0

    .line 313
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v4

    .line 319
    iget-boolean v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Z

    if-nez v3, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v3

    .line 321
    cmpl-float v5, v0, v6

    if-ltz v5, :cond_4

    .line 322
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()F

    move-result v0

    .line 337
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 338
    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    .line 339
    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->scrollBy(II)V

    .line 341
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    iget v2, v2, Lazb;->d:I

    if-eq v2, v1, :cond_3

    .line 342
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    invoke-virtual {v2}, Lazb;->a()Z

    .line 343
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazb;

    iput v1, v2, Lazb;->d:I

    .line 345
    :cond_3
    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    .line 346
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    goto :goto_0

    .line 327
    :cond_4
    int-to-float v5, v3

    add-float/2addr v5, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 328
    neg-int v0, v3

    int-to-float v0, v0

    goto :goto_1

    .line 355
    :pswitch_2
    const-string v0, "onTouchEvent------ACTION_UP"

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 358
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    if-ne v0, v1, :cond_b

    .line 359
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:Z

    if-eqz v0, :cond_7

    .line 361
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->g()V

    .line 365
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    goto/16 :goto_0

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 371
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->g()V

    .line 373
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 375
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e()Z

    goto/16 :goto_0

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c()V

    .line 406
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->g()V

    .line 407
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 408
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Z

    goto/16 :goto_0

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lazg;

    .line 382
    const/16 v3, 0x3e8

    iget v5, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v5}, Lazg;->a(IF)V

    .line 384
    invoke-virtual {v0}, Lazg;->b()F

    move-result v0

    float-to-int v3, v0

    .line 385
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:F

    sub-float v0, v4, v0

    float-to-int v5, v0

    .line 387
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:I

    .line 388
    iget v6, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    iget v7, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->d:F

    iget v8, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->h:F

    add-float/2addr v7, v8

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v6

    iput v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    .line 390
    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:F

    const/high16 v6, 0x41c8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_9

    move v0, v1

    .line 393
    :goto_3
    if-eqz v0, :cond_a

    .line 394
    invoke-virtual {p0, v5, v3}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(II)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 390
    goto :goto_3

    .line 396
    :cond_a
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e()Z

    goto :goto_2

    .line 401
    :cond_b
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 402
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c()V

    goto :goto_2

    .line 411
    :pswitch_3
    const-string v0, "scroll onTouchEvent------ACTION_CANCEL"

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 412
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:I

    .line 413
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 414
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c()V

    .line 416
    :cond_c
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Z

    .line 417
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->g()V

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 554
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Z

    if-eqz v0, :cond_2

    .line 555
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->scrollTo(II)V

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/PlatformView;->getWidth()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(III)I

    move-result v0

    .line 558
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/platform/PlatformView;->getHeight()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(III)I

    move-result v1

    .line 559
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 560
    :cond_3
    invoke-super {p0, v0, v1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCanScrollVertical(Z)V
    .locals 1
    .parameter

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->e:Z

    .line 672
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 673
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setScrollbarFadingEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->setCanScrollVertical(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public setDrawFadingEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->f:Z

    .line 78
    return-void
.end method

.method public setPlatformView(Lcom/sohu/inputmethod/platform/PlatformView;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Lcom/sohu/inputmethod/platform/PlatformView;

    .line 667
    return-void
.end method

.method public setTheme()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setBackGroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 240
    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->l:I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShadowHeight==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformScrollView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->a(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->setScrollBarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void
.end method
