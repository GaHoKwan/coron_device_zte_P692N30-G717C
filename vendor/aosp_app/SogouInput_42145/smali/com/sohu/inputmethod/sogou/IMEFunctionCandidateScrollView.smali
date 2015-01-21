.class public Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;
.super Lcom/sohu/util/ScrollViewUtil;
.source "SourceFile"


# static fields
.field private static f:Z

.field private static g:Z


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    .line 34
    new-instance v0, Lapk;

    invoke-direct {v0, p0}, Lapk;-><init>(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/os/Handler;

    .line 52
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setFocusable(Z)V

    .line 69
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setDescendantFocusability(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setWillNotDraw(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:I

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:I

    .line 78
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setCanScrollhorizontal(Z)V

    .line 81
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    .line 101
    return-void
.end method

.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x9c4

    .line 329
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->h()V

    .line 330
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v1

    .line 338
    if-lez v1, :cond_0

    .line 341
    int-to-float v3, v1

    .line 343
    if-eqz p1, :cond_2

    .line 344
    const/high16 v0, 0x447a

    const v4, 0x44bb8000

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 346
    if-nez v0, :cond_3

    .line 347
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 354
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    neg-int v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 355
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->invalidate()V

    goto :goto_0

    .line 348
    :cond_3
    if-gt v0, v5, :cond_2

    move v5, v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->h()V

    .line 362
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v1, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->h()V

    .line 369
    invoke-virtual {p0, v2, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->scrollTo(II)V

    .line 370
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:Z

    .line 372
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    .line 374
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 138
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollY()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 124
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b(Landroid/graphics/Canvas;II)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 134
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setScrollDrawRect(IIII)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    if-nez v2, :cond_2

    .line 449
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 530
    :cond_1
    :goto_0
    return v0

    .line 451
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 455
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    if-nez v3, :cond_1

    .line 459
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a(Landroid/view/MotionEvent;)V

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 464
    packed-switch v2, :pswitch_data_0

    .line 530
    :cond_5
    :goto_1
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 467
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 469
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:I

    .line 470
    if-le v2, v4, :cond_7

    move v2, v0

    .line 473
    :goto_2
    if-eqz v2, :cond_5

    .line 475
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    .line 476
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    .line 477
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    .line 478
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    .line 479
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->cQ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->cQ:I

    .line 480
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v2, :cond_6

    .line 481
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    .line 482
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    .line 483
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    .line 487
    :cond_6
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h()V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 470
    goto :goto_2

    .line 494
    :pswitch_1
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    .line 495
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:F

    .line 496
    iput v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b:F

    .line 497
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    .line 498
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    .line 506
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:Z

    if-eqz v2, :cond_5

    .line 507
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 509
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:I

    if-ge v2, v3, :cond_9

    :cond_8
    move v2, v0

    .line 510
    :goto_3
    if-eqz v2, :cond_a

    .line 511
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    .line 512
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    :cond_9
    move v2, v1

    .line 509
    goto :goto_3

    .line 514
    :cond_a
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    goto/16 :goto_1

    .line 523
    :pswitch_2
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    .line 527
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g()V

    goto/16 :goto_1

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v0

    .line 145
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    if-nez v0, :cond_2

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;->onMeasure(II)V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 154
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:I

    if-lez v1, :cond_3

    .line 155
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:I

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingRight()I

    move-result v6

    sub-int v6, v1, v6

    .line 159
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    .line 161
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 162
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 163
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 164
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 166
    invoke-virtual {v7, v8, v1}, Landroid/view/View;->measure(II)V

    .line 167
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 170
    :goto_1
    iget-boolean v7, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b:Z

    if-eqz v7, :cond_4

    const/high16 v7, -0x8000

    if-ne v5, v7, :cond_4

    move v0, v1

    .line 176
    :cond_4
    invoke-virtual {p0, v4, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setMeasuredDimension(II)V

    .line 178
    iput v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:I

    .line 180
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->h:I

    if-ne v0, v3, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c()I

    move-result v0

    .line 182
    if-lez v0, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:Z

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    if-eqz v0, :cond_0

    .line 380
    if-gtz p1, :cond_0

    .line 381
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    .line 386
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a(Landroid/view/MotionEvent;)V

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 202
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->h()V

    .line 206
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    if-eqz v0, :cond_3

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->f:Z

    .line 209
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:Z

    .line 211
    :cond_3
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    .line 212
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:F

    .line 213
    iput v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b:F

    .line 214
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    .line 215
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    goto :goto_0

    .line 220
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:Z

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    if-ne v0, v1, :cond_0

    .line 231
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v3

    .line 241
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 242
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    .line 243
    float-to-int v4, v0

    invoke-virtual {p0, v4, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->scrollBy(II)V

    .line 244
    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    .line 245
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    .line 248
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b()V

    goto :goto_0

    .line 256
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    if-ne v0, v1, :cond_9

    .line 257
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:Z

    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g()V

    .line 263
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    goto/16 :goto_0

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g()V

    .line 271
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    goto/16 :goto_0

    .line 275
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c()V

    .line 301
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g()V

    .line 303
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b()V

    .line 304
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    goto/16 :goto_0

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lazg;

    .line 279
    const/16 v4, 0x3e8

    iget v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lazg;->a(IF)V

    .line 281
    invoke-virtual {v0}, Lazg;->a()F

    move-result v0

    float-to-int v4, v0

    .line 282
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:F

    sub-float v0, v3, v0

    float-to-int v5, v0

    .line 284
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b:I

    .line 285
    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    iget v7, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:F

    iget v8, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g:F

    add-float/2addr v7, v8

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v6

    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    .line 287
    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:F

    const/high16 v6, 0x41c8

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_8

    move v0, v1

    .line 290
    :goto_2
    if-eqz v0, :cond_6

    .line 291
    invoke-virtual {p0, v5, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b(II)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 287
    goto :goto_2

    .line 296
    :cond_9
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c()V

    goto :goto_1

    .line 309
    :pswitch_3
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->e:I

    .line 310
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->g()V

    goto/16 :goto_0

    .line 202
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
    .line 425
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 426
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->c:Z

    if-eqz v0, :cond_1

    .line 427
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;->scrollTo(II)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a(III)I

    move-result v1

    .line 432
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v2, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a(III)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 436
    :cond_2
    invoke-super {p0, v1, v0}, Lcom/sohu/util/ScrollViewUtil;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCanScrollhorizontal(Z)V
    .locals 1
    .parameter

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 543
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->d:Z

    .line 544
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setCanScrollhorizontal(Z)V

    .line 546
    :cond_0
    return-void
.end method

.method public setCandidateView(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    .line 539
    return-void
.end method

.method public setTheme(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 110
    return-void
.end method
