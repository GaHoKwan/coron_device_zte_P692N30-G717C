.class public Lcom/sohu/inputmethod/sogou/HorizontalScrollView;
.super Lcom/sohu/util/ScrollViewUtil;
.source "SourceFile"


# instance fields
.field private a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

.field private f:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    .line 30
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()V

    .line 31
    new-instance v0, Lapj;

    invoke-direct {v0, p0}, Lapj;-><init>(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->i:I

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(II)V

    .line 529
    return-void
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setFocusable(Z)V

    .line 47
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:I

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:I

    .line 54
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:I

    .line 55
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setCanScrollhorizontal(Z)V

    .line 57
    return-void
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 463
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()F

    move-result p1

    .line 468
    :cond_2
    float-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    .line 75
    return-void
.end method

.method public a(FF)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 479
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    .line 480
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    .line 481
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o()Z

    move-result v0

    .line 483
    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 485
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    .line 491
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_6

    .line 492
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    move v0, v1

    .line 520
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 494
    float-to-int v0, p1

    .line 495
    add-float v4, p1, p2

    float-to-int v4, v4

    .line 497
    if-gt v3, v0, :cond_2

    iget v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:I

    add-int/2addr v5, v3

    if-gt v4, v5, :cond_2

    move v0, v2

    .line 498
    goto :goto_0

    .line 499
    :cond_2
    if-ge v3, v0, :cond_3

    .line 500
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    .line 501
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:I

    sub-int v0, v4, v0

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b()Z

    move-result v3

    if-nez v3, :cond_5

    .line 507
    if-lez v0, :cond_4

    .line 508
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    .line 509
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    :cond_4
    move v0, v2

    .line 511
    goto :goto_0

    .line 513
    :cond_5
    if-ltz v0, :cond_6

    .line 514
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollTo(II)V

    .line 515
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()V

    .line 516
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m()V

    move v0, v2

    .line 517
    goto :goto_0

    :cond_6
    move v0, v1

    .line 520
    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 452
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-nez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    if-gez p1, :cond_2

    .line 456
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->g()V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->h()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v1

    .line 103
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 104
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 106
    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b(Landroid/graphics/Canvas;II)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 114
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setScrollDrawRect(IIII)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    const v0, 0x3f4ccccd

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x3f80

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-nez v2, :cond_2

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 433
    :cond_1
    :goto_0
    return v0

    .line 357
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 358
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    if-nez v3, :cond_1

    .line 362
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 367
    packed-switch v2, :pswitch_data_0

    .line 433
    :cond_4
    :goto_1
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 370
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 372
    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:I

    .line 373
    if-le v2, v4, :cond_5

    move v2, v0

    .line 376
    :goto_2
    if-eqz v2, :cond_4

    .line 378
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 379
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    .line 380
    iget v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    .line 381
    iput v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    .line 383
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f()V

    .line 384
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a()V

    .line 385
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v2

    if-nez v2, :cond_4

    .line 386
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-boolean v2, v2, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Z

    if-eqz v2, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->dO:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->dO:I

    goto :goto_1

    :cond_5
    move v2, v1

    .line 373
    goto :goto_2

    .line 397
    :pswitch_1
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    .line 398
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:F

    .line 399
    iput v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b:F

    .line 400
    iput v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    .line 401
    iput v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    .line 402
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    .line 403
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Ljava/lang/Runnable;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v2, :cond_4

    .line 410
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 412
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:I

    if-ge v2, v3, :cond_7

    :cond_6
    move v2, v0

    .line 413
    :goto_3
    if-eqz v2, :cond_8

    .line 414
    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 415
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    :cond_7
    move v2, v1

    .line 412
    goto :goto_3

    .line 417
    :cond_8
    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    goto/16 :goto_1

    .line 426
    :pswitch_2
    iput v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 429
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f()V

    .line 430
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g()V

    goto/16 :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 125
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-nez v0, :cond_2

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;->onMeasure(II)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:I

    if-lez v1, :cond_3

    .line 134
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:I

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingRight()I

    move-result v6

    sub-int v6, v1, v6

    .line 138
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingBottom()I

    move-result v7

    sub-int v7, v1, v7

    .line 140
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 141
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 143
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 145
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 149
    :goto_1
    iget-boolean v8, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b:Z

    if-eqz v8, :cond_4

    const/high16 v8, -0x8000

    if-ne v5, v8, :cond_4

    move v0, v1

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setScrollViewWidth(I)V

    .line 154
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v1, v7}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setScrollViewHeight(I)V

    .line 155
    invoke-virtual {p0, v4, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setMeasuredDimension(II)V

    .line 157
    iput v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:I

    .line 159
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->h:I

    if-ne v0, v3, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c()I

    move-result v0

    .line 161
    if-lez v0, :cond_6

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:Z

    .line 164
    :cond_5
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_1

    .line 165
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    if-eqz v0, :cond_1

    .line 166
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    if-lez v0, :cond_7

    .line 167
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    invoke-virtual {p0, v0, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollTo(II)V

    .line 169
    :goto_3
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    goto :goto_0

    :cond_6
    move v0, v2

    .line 161
    goto :goto_2

    .line 168
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->k:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d(I)Z

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/16 v6, 0x3e8

    const/high16 v9, 0x41c8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 189
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->h()V

    .line 193
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    .line 194
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:F

    .line 195
    iput v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b:F

    .line 196
    iput v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    .line 197
    iput v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    goto :goto_0

    .line 202
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->o()Z

    move-result v0

    .line 209
    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->cR:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->cR:I

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setHasScrolled(Z)V

    .line 214
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->requestLayout()V

    goto :goto_0

    .line 219
    :cond_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v3

    .line 229
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 230
    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    .line 231
    float-to-int v4, v0

    invoke-virtual {p0, v4, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->scrollBy(II)V

    .line 232
    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    .line 233
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    .line 235
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()V

    .line 236
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->m()V

    goto/16 :goto_0

    .line 244
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    if-ne v0, v1, :cond_b

    .line 245
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_9

    .line 247
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_4

    .line 249
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g()V

    .line 250
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->b(II)V

    .line 251
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 252
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    goto/16 :goto_0

    .line 256
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g()V

    .line 258
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()V

    .line 259
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 260
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    goto/16 :goto_0

    .line 266
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c()V

    .line 312
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g()V

    .line 313
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()V

    .line 314
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 315
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    goto/16 :goto_0

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lazg;

    .line 270
    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:I

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Lazg;->a(IF)V

    .line 272
    invoke-virtual {v0}, Lazg;->a()F

    move-result v0

    float-to-int v4, v0

    .line 273
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:F

    sub-float v0, v3, v0

    float-to-int v5, v0

    .line 275
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b:I

    .line 276
    iget v6, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    iget v7, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:F

    iget v8, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g:F

    add-float/2addr v7, v8

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v6

    iput v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    .line 278
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_8

    move v0, v1

    .line 281
    :goto_2
    if-eqz v0, :cond_6

    int-to-float v0, v5

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v3, v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    .line 282
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->s:Z

    if-nez v0, :cond_6

    .line 283
    invoke-virtual {p0, v5, v4}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b(II)V

    .line 284
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b()V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 278
    goto :goto_2

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lazg;

    .line 291
    iget v4, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:I

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Lazg;->a(IF)V

    .line 294
    invoke-virtual {v0}, Lazg;->a()F

    move-result v0

    float-to-int v4, v0

    .line 295
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    .line 297
    iget v3, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b:I

    .line 298
    iget v5, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v5

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    .line 299
    iget v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_a

    move v0, v1

    .line 302
    :goto_3
    if-eqz v0, :cond_6

    .line 303
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->b(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 299
    goto :goto_3

    .line 307
    :cond_b
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c()V

    goto/16 :goto_1

    .line 319
    :pswitch_3
    iput v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->e:I

    .line 320
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->g()V

    .line 321
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Z

    goto/16 :goto_0

    .line 189
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
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;->scrollTo(II)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(III)I

    move-result v1

    .line 339
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v2, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(III)I

    move-result v0

    .line 342
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 343
    :cond_2
    invoke-super {p0, v1, v0}, Lcom/sohu/util/ScrollViewUtil;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCanScrollhorizontal(Z)V
    .locals 1
    .parameter

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 446
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->d:Z

    .line 447
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->setCanScrollhorizontal(Z)V

    .line 449
    :cond_0
    return-void
.end method

.method public setCandidateView(Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    .line 442
    return-void
.end method

.method public setScrollAdjust(I)V
    .locals 1
    .parameter

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->f:Z

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->j:I

    .line 475
    iput p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->k:I

    .line 476
    return-void
.end method

.method public setTheme(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/high16 v0, 0x420c

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->c:I

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->setPadding(IIII)V

    .line 86
    return-void
.end method
