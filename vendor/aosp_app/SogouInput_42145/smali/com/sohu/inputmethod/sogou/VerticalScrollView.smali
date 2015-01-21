.class public Lcom/sohu/inputmethod/sogou/VerticalScrollView;
.super Lcom/sohu/util/ScrollViewUtilWithScrollBar;
.source "SourceFile"


# instance fields
.field private a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z

.field private k:I

.field private l:I

.field private final m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    .line 33
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:Z

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->m:I

    .line 38
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g:Z

    .line 43
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()V

    .line 44
    new-instance v0, Lavc;

    invoke-direct {v0, p0}, Lavc;-><init>(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    return-object v0
.end method

.method private a(FFFF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    .line 463
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->n:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 467
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->l()Z

    .line 468
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e()Z

    .line 469
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    return v0
.end method


# virtual methods
.method public a()F
    .locals 4

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 837
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v1, :cond_0

    .line 839
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 842
    :cond_0
    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/sohu/inputmethod/sogou/VerticalCandidateView;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    .line 58
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:I

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setFocusable(Z)V

    .line 61
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setDescendantFocusability(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setWillNotDraw(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:I

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g:I

    .line 66
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setCanScrollVertical(Z)V

    .line 67
    const/high16 v0, 0x4396

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->n:I

    .line 69
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    .line 73
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

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Z)V

    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e()Z

    .line 576
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 504
    if-le v0, v3, :cond_5

    .line 506
    if-ltz p2, :cond_4

    move v0, v3

    :goto_1
    move p2, v0

    move v0, v3

    .line 514
    :cond_2
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 525
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 527
    int-to-float v2, v2

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const v4, 0x3e0f5c29

    mul-float/2addr v2, v4

    .line 529
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->k:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    .line 530
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->k:I

    int-to-float v2, v2

    move v4, v2

    .line 532
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    .line 534
    if-gtz p2, :cond_7

    .line 535
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()F

    move-result v4

    .line 543
    :cond_3
    :goto_4
    const/high16 v5, 0x41f0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_8

    .line 547
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e()Z

    goto :goto_0

    .line 506
    :cond_4
    const/16 v0, -0x9c4

    goto :goto_1

    .line 507
    :cond_5
    if-ge v0, v2, :cond_2

    .line 512
    if-ltz p2, :cond_6

    move v0, v2

    :goto_5
    move p2, v0

    move v0, v2

    goto :goto_2

    :cond_6
    const/16 v0, -0xfa

    goto :goto_5

    .line 539
    :cond_7
    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 540
    int-to-float v4, v2

    goto :goto_4

    .line 550
    :cond_8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 565
    const/high16 v5, 0x447a

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x5

    .line 567
    if-nez v5, :cond_a

    .line 568
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 572
    :cond_9
    :goto_6
    if-lez p2, :cond_b

    neg-float v0, v4

    .line 574
    :goto_7
    float-to-int v4, v0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(IIIII)V

    .line 575
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->invalidate()V

    goto/16 :goto_0

    .line 569
    :cond_a
    if-le v5, v3, :cond_9

    move v5, v3

    .line 570
    goto :goto_6

    :cond_b
    move v0, v4

    .line 572
    goto :goto_7

    :cond_c
    move v4, v2

    goto :goto_3
.end method

.method public a(Landroid/graphics/Canvas;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v0

    .line 118
    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->l:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->l:I

    sub-int v1, p5, v1

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setForceUpdateArrowStatus(Z)V

    .line 732
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 734
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    if-nez v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 485
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    .line 486
    if-ltz v2, :cond_2

    if-le v2, v1, :cond_0

    .line 487
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)Z
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x9c4

    const/16 v7, 0x82

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 776
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    if-eqz v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v1

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->k:I

    int-to-float v0, v0

    .line 786
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    .line 788
    if-ne p1, v7, :cond_5

    .line 789
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v3, v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(FZ)F

    move-result v3

    .line 790
    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 791
    sub-float/2addr v0, v3

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()F

    move-result v0

    .line 796
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v3, v6, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(ZZ)V

    .line 809
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 812
    const/high16 v3, 0x447a

    const v4, 0x44bb8000

    div-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 815
    if-nez v3, :cond_7

    .line 816
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v5, v3

    .line 820
    :cond_4
    :goto_2
    if-ne p1, v7, :cond_8

    .line 822
    :goto_3
    float-to-int v4, v0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(IIIII)V

    .line 823
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->invalidate()V

    move v1, v6

    .line 824
    goto :goto_0

    .line 799
    :cond_5
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v3, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(FZ)F

    move-result v3

    .line 800
    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    .line 801
    sub-float/2addr v0, v3

    .line 803
    :cond_6
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3

    .line 804
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, v1, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(ZZ)V

    .line 805
    int-to-float v0, v2

    goto :goto_1

    .line 817
    :cond_7
    if-gt v3, v5, :cond_4

    move v5, v3

    goto :goto_2

    .line 820
    :cond_8
    neg-float v0, v0

    goto :goto_3
.end method

.method public final a(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s()V

    .line 753
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(I)Z

    move-result v0

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 255
    .line 256
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 261
    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-static {p0}, Laox;->a(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setBackGroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    iget-object v0, v0, Lazb;->a:Laxl;

    invoke-virtual {v0, v1}, Laxl;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    iput-object v1, v0, Lazb;->a:Laxl;

    .line 139
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    .line 141
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 142
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 143
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 737
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    if-gez p1, :cond_2

    .line 741
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->i()V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->j()V

    goto :goto_0
.end method

.method public final b(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 768
    :goto_0
    return v0

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s()V

    .line 766
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(I)Z

    move-result v0

    goto :goto_0

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->b(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h()V

    .line 582
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    .line 584
    if-gez v2, :cond_0

    .line 585
    neg-int v4, v2

    .line 593
    :goto_0
    const/16 v5, 0x190

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(IIIII)V

    .line 594
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 589
    if-le v2, v0, :cond_1

    .line 590
    sub-int v4, v0, v2

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 244
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    .line 245
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:I

    if-ne v2, v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()I

    move-result v2

    .line 247
    if-lez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    .line 251
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:I

    if-nez v1, :cond_0

    .line 249
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 177
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v1

    .line 155
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingRight()I

    move-result v3

    sub-int v6, v2, v3

    .line 156
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v3

    sub-int v7, v2, v3

    .line 158
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 159
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    .line 160
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v6

    .line 161
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v7

    .line 164
    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b(Landroid/graphics/Canvas;II)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 170
    iget-object v8, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v8, v0, v1, v6, v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setScrollDrawRect(IIII)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-object v0, p0

    move-object v1, p1

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Landroid/graphics/Canvas;IIII)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k:Z

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d()Z

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 84
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

    .line 631
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 707
    :cond_1
    :goto_0
    return v0

    .line 633
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 634
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    if-nez v3, :cond_1

    .line 638
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 643
    packed-switch v2, :pswitch_data_0

    .line 707
    :cond_4
    :goto_1
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 646
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 648
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:I

    .line 649
    if-le v2, v3, :cond_5

    move v2, v0

    .line 651
    :goto_2
    if-eqz v2, :cond_4

    .line 652
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 653
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    .line 654
    iget v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    .line 655
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    .line 656
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->a()V

    .line 657
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f()V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 649
    goto :goto_2

    .line 664
    :pswitch_1
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:F

    .line 665
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    .line 666
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:F

    .line 667
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    .line 668
    iput v5, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    .line 669
    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    .line 670
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Ljava/lang/Runnable;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v2, :cond_4

    .line 678
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 679
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:I

    if-ge v2, v3, :cond_7

    :cond_6
    move v2, v0

    .line 680
    :goto_3
    if-eqz v2, :cond_8

    .line 681
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 682
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 679
    goto :goto_3

    .line 684
    :cond_8
    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    goto :goto_1

    .line 692
    :pswitch_2
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazg;

    .line 693
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lazg;->a(IF)V

    .line 695
    invoke-virtual {v2}, Lazg;->a()F

    move-result v5

    .line 696
    invoke-virtual {v2}, Lazg;->b()F

    move-result v2

    .line 697
    iget v6, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    .line 698
    iget v6, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    .line 699
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(FFFF)Z

    .line 700
    iput v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 702
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f()V

    .line 703
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g()V

    goto/16 :goto_1

    .line 643
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

    .line 201
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v0

    .line 202
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_2

    .line 203
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->onMeasure(II)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 207
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 208
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 210
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:I

    if-lez v1, :cond_3

    .line 211
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:I

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingRight()I

    move-result v6

    sub-int v6, v1, v6

    .line 214
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v7

    sub-int v7, v1, v7

    .line 216
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 217
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 218
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 220
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 223
    invoke-virtual {v1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 227
    :goto_1
    iget-boolean v8, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Z

    if-eqz v8, :cond_4

    const/high16 v8, -0x8000

    if-ne v5, v8, :cond_4

    move v0, v1

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setScrollViewWidth(I)V

    .line 231
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1, v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setScrollViewHeight(I)V

    .line 232
    invoke-virtual {p0, v4, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setMeasuredDimension(II)V

    .line 234
    iput v7, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->k:I

    .line 236
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:I

    if-ne v0, v3, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()I

    move-result v0

    .line 239
    if-lez v0, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/16 v7, 0x3e8

    const/high16 v9, 0x41c8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 268
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 276
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Z)V

    .line 280
    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:F

    .line 281
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    .line 282
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:F

    .line 283
    iput v6, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    .line 284
    iput v6, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    goto :goto_0

    .line 288
    :pswitch_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v0, :cond_0

    .line 291
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->s:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n()Z

    move-result v0

    .line 296
    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setHasScrolled(Z)V

    .line 298
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->requestLayout()V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v4

    .line 308
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    if-nez v3, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v3

    .line 310
    cmpl-float v5, v0, v6

    if-ltz v5, :cond_5

    .line 311
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()F

    move-result v0

    .line 326
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 327
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    .line 328
    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->scrollBy(II)V

    .line 330
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    iget v2, v2, Lazb;->d:I

    if-eq v2, v1, :cond_4

    .line 331
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    invoke-virtual {v2}, Lazb;->a()Z

    .line 332
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazb;

    iput v1, v2, Lazb;->d:I

    .line 334
    :cond_4
    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    .line 335
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    .line 337
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()V

    .line 338
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q()V

    goto/16 :goto_0

    .line 316
    :cond_5
    int-to-float v5, v3

    add-float/2addr v5, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 317
    neg-int v0, v3

    int-to-float v0, v0

    goto :goto_1

    .line 346
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    if-ne v0, v1, :cond_11

    .line 347
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    if-eqz v0, :cond_f

    .line 348
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v0, :cond_6

    .line 349
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->q()V

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->r()V

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 353
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g()V

    .line 354
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()V

    .line 355
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 356
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    .line 360
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e()Z

    goto/16 :goto_0

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 365
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v5, v0, Lamo;->dM:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lamo;->dM:I

    .line 371
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c()V

    .line 433
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g()V

    .line 434
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()V

    .line 435
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 436
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    goto/16 :goto_0

    .line 367
    :cond_a
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v5, v0, Lamo;->dN:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lamo;->dN:I

    goto :goto_2

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazg;

    .line 375
    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:I

    int-to-float v5, v5

    invoke-virtual {v0, v7, v5}, Lazg;->a(IF)V

    .line 377
    invoke-virtual {v0}, Lazg;->a()F

    move-result v5

    .line 378
    invoke-virtual {v0}, Lazg;->b()F

    move-result v6

    .line 379
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 380
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:F

    sub-float v3, v4, v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 382
    invoke-direct {p0, v0, v3, v5, v6}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(FFFF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 383
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g()V

    .line 384
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()V

    .line 385
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 386
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    goto/16 :goto_0

    .line 391
    :cond_c
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:I

    .line 393
    iget v5, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    iget v7, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:F

    iget v8, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->h:F

    add-float/2addr v7, v8

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    .line 395
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 397
    :goto_4
    if-eqz v0, :cond_e

    .line 398
    float-to-int v0, v3

    float-to-int v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(II)V

    goto :goto_3

    :cond_d
    move v0, v2

    .line 395
    goto :goto_4

    .line 404
    :cond_e
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e()Z

    goto :goto_3

    .line 409
    :cond_f
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lazg;

    .line 410
    iget v3, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->d:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v3}, Lazg;->a(IF)V

    .line 413
    invoke-virtual {v0}, Lazg;->b()F

    move-result v0

    float-to-int v3, v0

    .line 414
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:F

    sub-float v0, v4, v0

    float-to-int v0, v0

    .line 416
    iget v4, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:I

    .line 418
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    .line 420
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v4, :cond_10

    move v0, v1

    .line 423
    :goto_5
    if-eqz v0, :cond_9

    .line 424
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b(I)V

    goto/16 :goto_3

    :cond_10
    move v0, v2

    .line 420
    goto :goto_5

    .line 428
    :cond_11
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 429
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c()V

    goto/16 :goto_3

    .line 440
    :pswitch_3
    iput v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:I

    .line 441
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 442
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c()V

    .line 444
    :cond_12
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Z

    .line 445
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->l()V

    .line 446
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->g()V

    goto/16 :goto_0

    .line 276
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
    .line 599
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 602
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Z

    if-eqz v0, :cond_2

    .line 603
    invoke-super {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->scrollTo(II)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->getWidth()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(III)I

    move-result v0

    .line 606
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->h()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(III)I

    move-result v1

    .line 607
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 608
    :cond_3
    invoke-super {p0, v0, v1}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCanScrollVertical(Z)V
    .locals 1
    .parameter

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->e:Z

    .line 721
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 723
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setCanScrollVertical(Z)V

    .line 725
    :cond_0
    return-void
.end method

.method public setCandidateView(Lcom/sohu/inputmethod/sogou/VerticalCandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    .line 716
    return-void
.end method

.method public setDrawFadingEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->f:Z

    .line 77
    return-void
.end method

.method public setTheme(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setBackGroudDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 186
    sget-object v0, Laxr;->j:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c:Landroid/graphics/drawable/Drawable;

    .line 188
    sget-object v0, Laxr;->g:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->b:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 191
    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->l:I

    .line 194
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setScrollBarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->setPadding(IIII)V

    .line 196
    return-void
.end method
