.class public abstract Lavf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field public I:I

.field protected J:I

.field public K:I

.field protected L:I

.field protected a:Landroid/content/Context;

.field public a:Landroid/view/View;

.field protected a:Landroid/widget/Scroller;

.field public a:Lavh;

.field protected a:Lazg;

.field protected a:Ljava/lang/Runnable;

.field public b:Landroid/graphics/Rect;

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected o:Z

.field public p:I

.field protected p:Z

.field public q:I

.field protected q:Z

.field public r:I

.field protected r:Z

.field public s:I

.field protected s:Z

.field protected t:I

.field protected t:Z

.field protected u:I

.field protected u:Z

.field protected v:I

.field public v:Z

.field protected w:I

.field protected w:Z

.field protected x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v1, p0, Lavf;->o:Z

    .line 141
    iput-boolean v1, p0, Lavf;->p:Z

    .line 171
    iput-boolean v1, p0, Lavf;->r:Z

    .line 176
    iput-boolean v1, p0, Lavf;->s:Z

    .line 181
    iput-boolean v1, p0, Lavf;->t:Z

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lavf;->a:Lazg;

    .line 209
    const/16 v0, 0x258

    iput v0, p0, Lavf;->G:I

    .line 214
    iput-boolean v1, p0, Lavf;->u:Z

    .line 274
    iput v1, p0, Lavf;->I:I

    .line 361
    iput v1, p0, Lavf;->K:I

    .line 381
    iput-boolean v1, p0, Lavf;->v:Z

    .line 386
    const/4 v0, 0x2

    iput v0, p0, Lavf;->L:I

    .line 441
    iput-object p2, p0, Lavf;->a:Landroid/view/View;

    .line 442
    invoke-virtual {p0, p1}, Lavf;->b(Landroid/content/Context;)V

    .line 443
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1471
    const/4 v0, 0x0

    .line 1472
    iget-boolean v1, p0, Lavf;->t:Z

    if-eqz v1, :cond_1

    .line 1473
    iget v0, p0, Lavf;->v:I

    iget v1, p0, Lavf;->t:I

    iget v2, p0, Lavf;->z:I

    sub-int/2addr v1, v2

    iget v2, p0, Lavf;->y:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lavf;->C:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 1480
    :cond_0
    :goto_0
    return v0

    .line 1475
    :cond_1
    iget-boolean v1, p0, Lavf;->r:Z

    if-eqz v1, :cond_0

    .line 1477
    iget v0, p0, Lavf;->w:I

    iget v1, p0, Lavf;->u:I

    iget v2, p0, Lavf;->B:I

    sub-int/2addr v1, v2

    iget v2, p0, Lavf;->A:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lavf;->D:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public a(IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1651
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1652
    iget-boolean v0, p0, Lavf;->v:Z

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lavf;->a:Lavh;

    iget v0, v0, Lavh;->a:I

    add-int/2addr v0, p5

    invoke-virtual {p0, v0}, Lavf;->b(I)Z

    .line 1654
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Laxl;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2135
    invoke-virtual {p2, p3, p4, p5, p6}, Laxl;->setBounds(IIII)V

    .line 2136
    invoke-virtual {p2, p1}, Laxl;->draw(Landroid/graphics/Canvas;)V

    .line 2137
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-object v0, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 671
    :cond_0
    if-eqz p1, :cond_2

    .line 672
    iput-object p1, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    .line 673
    iget-object v0, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 681
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lavf;->q:Z

    .line 682
    invoke-virtual {p0}, Lavf;->l()V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 677
    iput-object v1, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1326
    iget-object v0, p0, Lavf;->a:Lazg;

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Lazg;

    const/16 v1, 0xa

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lazg;-><init>(II)V

    iput-object v0, p0, Lavf;->a:Lazg;

    .line 1329
    :cond_0
    iget-object v0, p0, Lavf;->a:Lazg;

    invoke-virtual {v0, p1}, Lazg;->a(Landroid/view/MotionEvent;)V

    .line 1330
    return-void
.end method

.method public a([I)V
    .locals 1
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method

.method protected a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 1491
    invoke-virtual {p0}, Lavf;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 924
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lavf;->t:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lavf;->u:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIIIZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    iget v0, p0, Lavf;->p:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lavf;->r:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lavf;->q:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lavf;->s:I

    if-ne v0, p4, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 646
    :cond_0
    iput p1, p0, Lavf;->p:I

    .line 647
    iput p3, p0, Lavf;->q:I

    .line 648
    iput p2, p0, Lavf;->r:I

    .line 649
    iput p4, p0, Lavf;->s:I

    .line 650
    iget-object v0, p0, Lavf;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 651
    sub-int v0, p3, p1

    iput v0, p0, Lavf;->t:I

    .line 652
    sub-int v0, p4, p2

    iput v0, p0, Lavf;->u:I

    .line 653
    iget v0, p0, Lavf;->w:I

    if-eqz v0, :cond_1

    iget v0, p0, Lavf;->v:I

    if-nez v0, :cond_2

    .line 654
    :cond_1
    iget v0, p0, Lavf;->t:I

    iget v1, p0, Lavf;->u:I

    invoke-virtual {p0, v0, v1}, Lavf;->c(II)V

    .line 655
    :cond_2
    if-eqz p5, :cond_3

    .line 656
    invoke-virtual {p0}, Lavf;->m()V

    .line 657
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(IZ)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1844
    iget-boolean v2, p0, Lavf;->v:Z

    if-nez v2, :cond_1

    .line 1879
    :cond_0
    :goto_0
    return v0

    .line 1846
    :cond_1
    iget-object v2, p0, Lavf;->a:Lavh;

    .line 1848
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lavh;->a:Z

    if-eqz v3, :cond_0

    .line 1852
    iget-object v0, v2, Lavh;->a:Laxl;

    if-nez v0, :cond_2

    .line 1853
    new-instance v0, Laxl;

    invoke-direct {v0}, Laxl;-><init>()V

    iput-object v0, v2, Lavh;->a:Laxl;

    .line 1857
    :cond_2
    if-eqz p2, :cond_3

    .line 1859
    invoke-virtual {p0}, Lavf;->l()V

    .line 1862
    :cond_3
    iget v0, v2, Lavh;->d:I

    if-nez v0, :cond_4

    .line 1867
    const/16 v0, 0x2ee

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1872
    :cond_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 1873
    iput-wide v3, v2, Lavh;->a:J

    .line 1874
    iput v1, v2, Lavh;->d:I

    .line 1878
    iget-object v0, p0, Lavf;->a:Lavh;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lavh;->a(J)V

    move v0, v1

    .line 1879
    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 1449
    const/4 v0, 0x0

    iget v1, p0, Lavf;->w:I

    iget v2, p0, Lavf;->u:I

    iget v3, p0, Lavf;->B:I

    sub-int/2addr v2, v3

    iget v3, p0, Lavf;->A:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 564
    iget v0, p0, Lavf;->v:I

    iget v1, p0, Lavf;->w:I

    invoke-virtual {p0, v0, v1}, Lavf;->c(II)V

    .line 566
    return-void
.end method

.method public b(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 528
    :cond_0
    iget v0, p0, Lavf;->p:I

    add-int/2addr v0, p1

    iget v1, p0, Lavf;->C:I

    sub-int/2addr v0, v1

    .line 529
    iget v1, p0, Lavf;->r:I

    add-int/2addr v1, p2

    iget v2, p0, Lavf;->D:I

    sub-int/2addr v1, v2

    .line 530
    iget v2, p0, Lavf;->p:I

    add-int/2addr v2, p3

    iget v3, p0, Lavf;->C:I

    sub-int/2addr v2, v3

    .line 531
    iget v3, p0, Lavf;->r:I

    add-int/2addr v3, p4

    iget v4, p0, Lavf;->D:I

    sub-int/2addr v3, v4

    .line 533
    iget-object v4, p0, Lavf;->a:Landroid/view/View;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lavf;->a:Landroid/content/Context;

    .line 453
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lavf;->b:Landroid/graphics/Rect;

    .line 454
    invoke-virtual {p0, p1}, Lavf;->c(Landroid/content/Context;)V

    .line 455
    new-instance v0, Lavg;

    invoke-direct {v0, p0}, Lavg;-><init>(Lavf;)V

    iput-object v0, p0, Lavf;->a:Ljava/lang/Runnable;

    .line 463
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 600
    iget-object v0, p0, Lavf;->d:Landroid/graphics/drawable/Drawable;

    .line 601
    if-eqz v0, :cond_1

    .line 603
    iget v1, p0, Lavf;->C:I

    .line 604
    iget v2, p0, Lavf;->D:I

    .line 606
    iget-boolean v3, p0, Lavf;->q:Z

    if-eqz v3, :cond_0

    .line 607
    iget v3, p0, Lavf;->t:I

    iget v4, p0, Lavf;->u:I

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 608
    iput-boolean v5, p0, Lavf;->q:Z

    .line 611
    :cond_0
    or-int v3, v1, v2

    if-nez v3, :cond_2

    .line 612
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 614
    :cond_2
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 2146
    if-eqz p1, :cond_0

    iget-object v0, p0, Lavf;->a:Lavh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavf;->a:Lavh;

    iget-object v0, v0, Lavh;->a:Laxl;

    if-nez v0, :cond_1

    .line 2149
    :cond_0
    :goto_0
    return-void

    .line 2148
    :cond_1
    iget-object v0, p0, Lavf;->a:Lavh;

    iget-object v0, v0, Lavh;->a:Laxl;

    invoke-static {p1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxl;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1832
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lavf;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 937
    and-int/lit16 v1, v0, 0xff

    .line 940
    if-nez v1, :cond_0

    .line 941
    iput-boolean v4, p0, Lavf;->p:Z

    .line 946
    :cond_0
    iget-boolean v0, p0, Lavf;->p:Z

    if-eqz v0, :cond_3

    .line 947
    invoke-virtual {p0, p1}, Lavf;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 966
    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 969
    :cond_1
    iput-boolean v4, p0, Lavf;->p:Z

    .line 971
    :cond_2
    return v0

    .line 949
    :cond_3
    invoke-virtual {p0, p1}, Lavf;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 950
    if-eqz v0, :cond_4

    .line 951
    iput-boolean v5, p0, Lavf;->p:Z

    .line 952
    invoke-virtual {p0, p1}, Lavf;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 954
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 955
    iget v0, p0, Lavf;->C:I

    int-to-float v0, v0

    .line 956
    iget v3, p0, Lavf;->D:I

    int-to-float v3, v3

    .line 957
    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 958
    invoke-virtual {p0, v2}, Lavf;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 960
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public c()I
    .locals 4

    .prologue
    .line 1460
    const/4 v0, 0x0

    iget v1, p0, Lavf;->v:I

    iget v2, p0, Lavf;->t:I

    iget v3, p0, Lavf;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lavf;->z:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final c(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 576
    iget v2, p0, Lavf;->v:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lavf;->w:I

    if-ne v2, p2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iput p1, p0, Lavf;->v:I

    .line 579
    iput p2, p0, Lavf;->w:I

    .line 582
    iget v2, p0, Lavf;->L:I

    if-ne v2, v0, :cond_0

    .line 584
    iget-boolean v2, p0, Lavf;->t:Z

    if-eqz v2, :cond_2

    .line 585
    invoke-virtual {p0}, Lavf;->c()I

    move-result v2

    .line 589
    :goto_1
    if-lez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lavf;->w:Z

    goto :goto_0

    .line 586
    :cond_2
    iget-boolean v2, p0, Lavf;->r:Z

    if-eqz v2, :cond_4

    .line 587
    invoke-virtual {p0}, Lavf;->b()I

    move-result v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 589
    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public c(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    .line 473
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lavf;->E:I

    .line 476
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lavf;->H:I

    .line 477
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lavf;->J:I

    .line 479
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2036
    iget-boolean v2, p0, Lavf;->v:Z

    if-nez v2, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2038
    :cond_1
    iget-object v3, p0, Lavf;->a:Lavh;

    .line 2039
    if-eqz v3, :cond_0

    .line 2041
    iget v2, v3, Lavh;->d:I

    .line 2043
    if-eqz v2, :cond_0

    .line 2049
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 2051
    iget-object v2, v3, Lavh;->a:[F

    if-nez v2, :cond_2

    .line 2052
    new-array v2, v0, [F

    iput-object v2, v3, Lavh;->a:[F

    .line 2055
    :cond_2
    iget-object v2, v3, Lavh;->a:[F

    .line 2058
    iget-object v4, v3, Lavh;->a:Landroid/graphics/Interpolator;

    invoke-virtual {v4, v2}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v4

    sget-object v5, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v4, v5, :cond_4

    .line 2060
    iput v1, v3, Lavh;->d:I

    :goto_1
    move v7, v0

    .line 2075
    :goto_2
    iget v1, p0, Lavf;->t:I

    iget v2, p0, Lavf;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lavf;->z:I

    sub-int v4, v1, v2

    .line 2077
    iget v1, p0, Lavf;->u:I

    iget v2, p0, Lavf;->A:I

    sub-int/2addr v1, v2

    iget v2, p0, Lavf;->B:I

    sub-int v6, v1, v2

    .line 2079
    iget-object v2, v3, Lavh;->a:Laxl;

    .line 2081
    iget v5, p0, Lavf;->C:I

    .line 2082
    iget v8, p0, Lavf;->D:I

    .line 2086
    invoke-virtual {v2, v0}, Laxl;->a(Z)I

    move-result v1

    .line 2087
    if-gtz v1, :cond_3

    .line 2088
    iget v1, v3, Lavh;->c:I

    .line 2091
    :cond_3
    invoke-virtual {p0}, Lavf;->d()I

    move-result v3

    invoke-virtual {p0}, Lavf;->e()I

    move-result v9

    invoke-virtual {p0}, Lavf;->f()I

    move-result v10

    invoke-virtual {v2, v3, v9, v10, v0}, Laxl;->a(IIIZ)V

    .line 2094
    iget v0, p0, Lavf;->K:I

    packed-switch v0, :pswitch_data_0

    .line 2098
    iget v0, p0, Lavf;->y:I

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    sub-int v3, v0, v1

    .line 2104
    :goto_3
    iget v0, p0, Lavf;->A:I

    add-int v4, v8, v0

    .line 2105
    add-int v5, v3, v1

    .line 2106
    add-int/2addr v6, v8

    move-object v0, p0

    move-object v1, p1

    .line 2107
    invoke-virtual/range {v0 .. v6}, Lavf;->a(Landroid/graphics/Canvas;Laxl;IIII)V

    .line 2108
    if-eqz v7, :cond_0

    .line 2109
    invoke-virtual {p0, v3, v4, v5, v6}, Lavf;->b(IIII)V

    goto :goto_0

    .line 2062
    :cond_4
    iget-object v4, v3, Lavh;->a:Laxl;

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4, v1}, Laxl;->setAlpha(I)V

    goto :goto_1

    .line 2072
    :cond_5
    iget-object v2, v3, Lavh;->a:Laxl;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Laxl;->setAlpha(I)V

    move v7, v1

    goto :goto_2

    .line 2101
    :pswitch_0
    iget v0, p0, Lavf;->y:I

    add-int v3, v5, v0

    goto :goto_3

    .line 2094
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 982
    iget-boolean v0, p0, Lavf;->t:Z

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p0, p1}, Lavf;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 987
    :goto_0
    return v0

    .line 984
    :cond_0
    iget-boolean v0, p0, Lavf;->r:Z

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {p0, p1}, Lavf;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 987
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1975
    iget v0, p0, Lavf;->w:I

    return v0
.end method

.method public d(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1297
    iget v0, p0, Lavf;->C:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lavf;->D:I

    if-eq v0, p2, :cond_1

    .line 1300
    :cond_0
    iput p1, p0, Lavf;->C:I

    .line 1301
    iput p2, p0, Lavf;->D:I

    .line 1302
    invoke-virtual {p0}, Lavf;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1303
    invoke-virtual {p0}, Lavf;->l()V

    .line 1306
    :cond_1
    return-void
.end method

.method public d(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 707
    const/4 v0, 0x0

    .line 709
    iget v2, p0, Lavf;->y:I

    if-eq v2, p1, :cond_0

    .line 711
    iput p1, p0, Lavf;->y:I

    move v0, v1

    .line 713
    :cond_0
    iget v2, p0, Lavf;->A:I

    if-eq v2, p2, :cond_1

    .line 715
    iput p2, p0, Lavf;->A:I

    move v0, v1

    .line 717
    :cond_1
    iget v2, p0, Lavf;->z:I

    if-eq v2, p3, :cond_2

    .line 719
    iput p3, p0, Lavf;->z:I

    move v0, v1

    .line 721
    :cond_2
    iget v2, p0, Lavf;->B:I

    if-eq v2, p4, :cond_3

    .line 723
    iput p4, p0, Lavf;->B:I

    move v0, v1

    .line 726
    :cond_3
    if-gtz p1, :cond_4

    if-gtz p2, :cond_4

    if-gtz p3, :cond_4

    if-lez p4, :cond_5

    .line 727
    :cond_4
    iput-boolean v1, p0, Lavf;->o:Z

    .line 729
    :cond_5
    if-eqz v0, :cond_6

    .line 730
    invoke-virtual {p0}, Lavf;->m()V

    .line 732
    :cond_6
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lavf;->D:I

    return v0
.end method

.method public e(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1316
    iget v0, p0, Lavf;->C:I

    add-int/2addr v0, p1

    iget v1, p0, Lavf;->D:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lavf;->d(II)V

    .line 1317
    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1009
    invoke-virtual {p0, p1}, Lavf;->a(Landroid/view/MotionEvent;)V

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1015
    packed-switch v0, :pswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    return v1

    .line 1018
    :pswitch_0
    invoke-virtual {p0}, Lavf;->p()V

    .line 1019
    iput v3, p0, Lavf;->h:F

    .line 1020
    iput v4, p0, Lavf;->j:F

    .line 1021
    iput v4, p0, Lavf;->i:F

    .line 1022
    iput v6, p0, Lavf;->l:F

    .line 1023
    iput v6, p0, Lavf;->k:F

    goto :goto_0

    .line 1027
    :pswitch_1
    iget-boolean v0, p0, Lavf;->r:Z

    if-eqz v0, :cond_0

    .line 1030
    iget v0, p0, Lavf;->I:I

    if-ne v0, v1, :cond_0

    .line 1043
    invoke-virtual {p0}, Lavf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget v0, p0, Lavf;->j:F

    iget v3, p0, Lavf;->l:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v4

    .line 1047
    iget-boolean v3, p0, Lavf;->w:Z

    if-nez v3, :cond_1

    .line 1048
    iget v3, p0, Lavf;->D:I

    .line 1049
    cmpl-float v5, v0, v6

    if-ltz v5, :cond_3

    .line 1050
    invoke-virtual {p0, v0}, Lavf;->a(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1051
    invoke-virtual {p0}, Lavf;->a()F

    move-result v0

    .line 1065
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 1066
    iget v3, p0, Lavf;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    iput v3, p0, Lavf;->k:F

    .line 1067
    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Lavf;->e(II)V

    .line 1069
    iget-object v2, p0, Lavf;->a:Lavh;

    iget v2, v2, Lavh;->d:I

    if-eq v2, v1, :cond_2

    .line 1070
    iget-object v2, p0, Lavf;->a:Lavh;

    invoke-virtual {v2}, Lavh;->a()Z

    .line 1071
    iget-object v2, p0, Lavf;->a:Lavh;

    iput v1, v2, Lavh;->d:I

    .line 1073
    :cond_2
    iput v4, p0, Lavf;->j:F

    .line 1074
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lavf;->l:F

    .line 1076
    invoke-virtual {p0}, Lavf;->k()V

    .line 1077
    invoke-virtual {p0}, Lavf;->g()V

    goto :goto_0

    .line 1055
    :cond_3
    int-to-float v5, v3

    add-float/2addr v5, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1056
    neg-int v0, v3

    int-to-float v0, v0

    goto :goto_1

    .line 1085
    :pswitch_2
    iget v0, p0, Lavf;->I:I

    if-ne v0, v1, :cond_9

    .line 1086
    iget-boolean v0, p0, Lavf;->r:Z

    if-eqz v0, :cond_5

    .line 1087
    invoke-virtual {p0}, Lavf;->g()V

    .line 1088
    invoke-virtual {p0}, Lavf;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1089
    invoke-virtual {p0}, Lavf;->q()V

    .line 1090
    invoke-virtual {p0}, Lavf;->k()V

    .line 1091
    iput v2, p0, Lavf;->I:I

    .line 1092
    iput-boolean v2, p0, Lavf;->u:Z

    .line 1094
    invoke-virtual {p0}, Lavf;->j()Z

    goto/16 :goto_0

    .line 1105
    :cond_4
    invoke-virtual {p0}, Lavf;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1106
    invoke-virtual {p0}, Lavf;->r()V

    .line 1144
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lavf;->q()V

    .line 1145
    invoke-virtual {p0}, Lavf;->k()V

    .line 1146
    iput v2, p0, Lavf;->I:I

    .line 1147
    iput-boolean v2, p0, Lavf;->u:Z

    goto/16 :goto_0

    .line 1108
    :cond_6
    iget-object v0, p0, Lavf;->a:Lazg;

    .line 1109
    const/16 v3, 0x3e8

    iget v5, p0, Lavf;->H:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v5}, Lazg;->a(IF)V

    .line 1112
    invoke-virtual {v0}, Lazg;->b()F

    move-result v3

    .line 1114
    iget v0, p0, Lavf;->i:F

    sub-float v0, v4, v0

    float-to-int v0, v0

    int-to-float v5, v0

    .line 1124
    iget v0, p0, Lavf;->G:I

    .line 1126
    iget v6, p0, Lavf;->k:F

    iget v7, p0, Lavf;->j:F

    iget v8, p0, Lavf;->l:F

    add-float/2addr v7, v8

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v6

    iput v4, p0, Lavf;->k:F

    .line 1128
    iget v4, p0, Lavf;->k:F

    const/high16 v6, 0x41c8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 1130
    :goto_3
    if-eqz v0, :cond_8

    .line 1131
    float-to-int v0, v5

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Lavf;->f(II)V

    goto :goto_2

    :cond_7
    move v0, v2

    .line 1128
    goto :goto_3

    .line 1134
    :cond_8
    invoke-virtual {p0}, Lavf;->j()Z

    goto :goto_2

    .line 1139
    :cond_9
    invoke-virtual {p0}, Lavf;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1140
    invoke-virtual {p0}, Lavf;->r()V

    goto :goto_2

    .line 1151
    :pswitch_3
    iput v2, p0, Lavf;->I:I

    .line 1152
    invoke-virtual {p0}, Lavf;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1153
    invoke-virtual {p0}, Lavf;->r()V

    .line 1155
    :cond_a
    iput-boolean v2, p0, Lavf;->u:Z

    .line 1156
    invoke-virtual {p0}, Lavf;->k()V

    .line 1157
    invoke-virtual {p0}, Lavf;->q()V

    goto/16 :goto_0

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected f()I
    .locals 2

    .prologue
    .line 2023
    iget v0, p0, Lavf;->u:I

    iget v1, p0, Lavf;->A:I

    sub-int/2addr v0, v1

    iget v1, p0, Lavf;->B:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 888
    return-void
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 751
    iget v0, p0, Lavf;->x:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 752
    :goto_0
    iput p1, p0, Lavf;->x:I

    .line 754
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lavf;->l()V

    .line 756
    :cond_0
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    const/16 v2, 0xfa

    const/16 v3, 0x9c4

    .line 1563
    invoke-virtual {p0}, Lavf;->p()V

    .line 1564
    invoke-virtual {p0}, Lavf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lavf;->u:I

    if-nez v0, :cond_2

    .line 1565
    :cond_0
    invoke-virtual {p0}, Lavf;->j()Z

    .line 1638
    :cond_1
    :goto_0
    return-void

    .line 1569
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1570
    if-le v0, v3, :cond_7

    .line 1572
    if-ltz p2, :cond_6

    move v0, v3

    :goto_1
    move p2, v0

    move v0, v3

    .line 1580
    :cond_3
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1591
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lavf;->u:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1593
    int-to-float v2, v2

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const v4, 0x3e0f5c29

    mul-float/2addr v2, v4

    .line 1595
    iget v4, p0, Lavf;->F:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    .line 1596
    iget v2, p0, Lavf;->F:I

    int-to-float v2, v2

    move v4, v2

    .line 1598
    :goto_3
    iget v2, p0, Lavf;->D:I

    .line 1600
    if-gtz p2, :cond_9

    .line 1601
    invoke-virtual {p0, v4}, Lavf;->a(F)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1602
    invoke-virtual {p0}, Lavf;->a()F

    move-result v4

    .line 1609
    :cond_4
    :goto_4
    const/high16 v5, 0x41f0

    cmpg-float v5, v4, v5

    if-lez v5, :cond_1

    .line 1613
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1628
    const/high16 v5, 0x447a

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x5

    .line 1630
    if-nez v5, :cond_a

    .line 1631
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 1635
    :cond_5
    :goto_5
    if-lez p2, :cond_b

    neg-float v0, v4

    .line 1636
    :goto_6
    float-to-int v4, v0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lavf;->a(IIIII)V

    .line 1637
    invoke-virtual {p0}, Lavf;->l()V

    goto :goto_0

    .line 1572
    :cond_6
    const/16 v0, -0x9c4

    goto :goto_1

    .line 1573
    :cond_7
    if-ge v0, v2, :cond_3

    .line 1578
    if-ltz p2, :cond_8

    move v0, v2

    :goto_7
    move p2, v0

    move v0, v2

    goto :goto_2

    :cond_8
    const/16 v0, -0xfa

    goto :goto_7

    .line 1605
    :cond_9
    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 1606
    int-to-float v4, v2

    goto :goto_4

    .line 1632
    :cond_a
    if-le v5, v3, :cond_5

    move v5, v3

    .line 1633
    goto :goto_5

    :cond_b
    move v0, v4

    .line 1635
    goto :goto_6

    :cond_c
    move v4, v2

    goto :goto_3
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lavf;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1172
    iget-boolean v0, p0, Lavf;->t:Z

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0, p1}, Lavf;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1177
    :goto_0
    return v0

    .line 1174
    :cond_0
    iget-boolean v0, p0, Lavf;->r:Z

    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {p0, p1}, Lavf;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 2351
    return-void
.end method

.method public g(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1431
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_0
    iput p1, p0, Lavf;->L:I

    .line 1437
    invoke-virtual {p0}, Lavf;->b()I

    move-result v1

    .line 1438
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_2

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lavf;->w:Z

    .line 1440
    return-void

    .line 1438
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1394
    iget-boolean v2, p0, Lavf;->t:Z

    if-eqz v2, :cond_2

    .line 1395
    iget v2, p0, Lavf;->t:I

    iget v3, p0, Lavf;->v:I

    iget v4, p0, Lavf;->y:I

    add-int/2addr v3, v4

    iget v4, p0, Lavf;->z:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1395
    goto :goto_0

    .line 1396
    :cond_2
    iget-boolean v2, p0, Lavf;->r:Z

    if-eqz v2, :cond_3

    .line 1397
    iget v2, p0, Lavf;->u:I

    iget v3, p0, Lavf;->w:I

    iget v4, p0, Lavf;->y:I

    add-int/2addr v3, v4

    iget v4, p0, Lavf;->z:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1399
    goto :goto_0
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1188
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 2343
    return-void
.end method

.method protected h()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1501
    iget-boolean v2, p0, Lavf;->w:Z

    if-nez v2, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return v0

    .line 1503
    :cond_1
    iget-boolean v2, p0, Lavf;->t:Z

    if-eqz v2, :cond_3

    .line 1504
    iget v2, p0, Lavf;->v:I

    iget v3, p0, Lavf;->t:I

    iget v4, p0, Lavf;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lavf;->z:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1507
    iget v3, p0, Lavf;->C:I

    if-ltz v3, :cond_2

    iget v3, p0, Lavf;->C:I

    if-le v3, v2, :cond_0

    :cond_2
    move v0, v1

    .line 1508
    goto :goto_0

    .line 1510
    :cond_3
    iget-boolean v2, p0, Lavf;->r:Z

    if-eqz v2, :cond_0

    .line 1511
    iget v2, p0, Lavf;->w:I

    iget v3, p0, Lavf;->u:I

    iget v4, p0, Lavf;->B:I

    sub-int/2addr v3, v4

    iget v4, p0, Lavf;->A:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1513
    iget v3, p0, Lavf;->D:I

    if-ltz v3, :cond_4

    iget v3, p0, Lavf;->D:I

    if-le v3, v2, :cond_0

    iget v2, p0, Lavf;->D:I

    if-lez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1514
    goto :goto_0
.end method

.method public h(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1201
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v3, p0, Lavf;->I:I

    if-eqz v3, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return v0

    .line 1205
    :cond_1
    invoke-virtual {p0, p1}, Lavf;->a(Landroid/view/MotionEvent;)V

    .line 1207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1210
    packed-switch v2, :pswitch_data_0

    .line 1274
    :cond_2
    :goto_1
    iget v2, p0, Lavf;->I:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1213
    :pswitch_0
    iget v2, p0, Lavf;->j:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1215
    iget v3, p0, Lavf;->E:I

    .line 1216
    if-le v2, v3, :cond_3

    move v2, v0

    .line 1218
    :goto_2
    if-eqz v2, :cond_2

    .line 1219
    iput v0, p0, Lavf;->I:I

    .line 1220
    iput v4, p0, Lavf;->j:F

    .line 1221
    iget v2, p0, Lavf;->k:F

    iget v3, p0, Lavf;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lavf;->k:F

    .line 1222
    iput v5, p0, Lavf;->l:F

    .line 1223
    invoke-virtual {p0}, Lavf;->h()V

    .line 1224
    invoke-virtual {p0}, Lavf;->n()V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1216
    goto :goto_2

    .line 1231
    :pswitch_1
    iput v3, p0, Lavf;->h:F

    .line 1232
    iput v4, p0, Lavf;->j:F

    .line 1233
    iput v4, p0, Lavf;->i:F

    .line 1234
    iput v5, p0, Lavf;->l:F

    .line 1235
    iput v5, p0, Lavf;->k:F

    .line 1236
    iput-boolean v0, p0, Lavf;->u:Z

    .line 1237
    iget-object v2, p0, Lavf;->a:Landroid/view/View;

    iget-object v3, p0, Lavf;->a:Ljava/lang/Runnable;

    iget v4, p0, Lavf;->J:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1244
    iget-boolean v2, p0, Lavf;->r:Z

    if-eqz v2, :cond_2

    .line 1245
    iget-object v2, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1246
    iget-object v3, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lavf;->E:I

    if-ge v2, v3, :cond_5

    :cond_4
    move v2, v0

    .line 1247
    :goto_3
    if-eqz v2, :cond_6

    .line 1248
    iput v1, p0, Lavf;->I:I

    .line 1249
    iget-object v2, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1246
    goto :goto_3

    .line 1251
    :cond_6
    iput v0, p0, Lavf;->I:I

    goto :goto_1

    .line 1267
    :pswitch_2
    iput v1, p0, Lavf;->I:I

    .line 1269
    invoke-virtual {p0}, Lavf;->n()V

    .line 1270
    invoke-virtual {p0}, Lavf;->q()V

    goto :goto_1

    .line 1210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1812
    iget-object v1, p0, Lavf;->a:Lavh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lavf;->a:Lavh;

    iget v1, v1, Lavh;->a:I

    invoke-virtual {p0, v1, v0}, Lavf;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1892
    iget-boolean v2, p0, Lavf;->v:Z

    if-nez v2, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return v0

    .line 1894
    :cond_1
    iget-object v2, p0, Lavf;->a:Lavh;

    .line 1896
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lavh;->a:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lavh;->d:I

    if-eqz v3, :cond_0

    .line 1900
    iget-object v0, v2, Lavh;->a:Laxl;

    if-nez v0, :cond_2

    .line 1901
    new-instance v0, Laxl;

    invoke-direct {v0}, Laxl;-><init>()V

    iput-object v0, v2, Lavh;->a:Laxl;

    .line 1906
    :cond_2
    invoke-virtual {p0}, Lavf;->l()V

    .line 1917
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget v0, v2, Lavh;->a:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 1918
    iput-wide v3, v2, Lavh;->a:J

    .line 1919
    iput v1, v2, Lavh;->d:I

    .line 1922
    iget-object v0, p0, Lavf;->a:Lavh;

    iget v2, v2, Lavh;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lavh;->a(J)V

    move v0, v1

    .line 1923
    goto :goto_0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 2335
    return-void
.end method

.method public k(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-boolean p1, p0, Lavf;->r:Z

    .line 1383
    invoke-virtual {p0, p1}, Lavf;->m(Z)V

    .line 1384
    invoke-virtual {p0, p1}, Lavf;->l(Z)V

    .line 1385
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavf;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    iget-object v1, p0, Lavf;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public l(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1935
    invoke-virtual {p0}, Lavf;->s()V

    .line 1936
    iget-object v0, p0, Lavf;->a:Lavh;

    .line 1937
    iput-boolean p1, v0, Lavh;->a:Z

    .line 1938
    if-eqz p1, :cond_0

    .line 1939
    const/4 v1, 0x0

    iput v1, v0, Lavh;->d:I

    .line 1943
    :goto_0
    return-void

    .line 1941
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lavh;->d:I

    goto :goto_0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 543
    invoke-virtual {p0}, Lavf;->b()V

    .line 544
    return-void
.end method

.method public m(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1952
    iget-boolean v0, p0, Lavf;->v:Z

    if-eq v0, p1, :cond_0

    .line 1953
    iput-boolean p1, p0, Lavf;->v:Z

    .line 1955
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 846
    iget-boolean v0, p0, Lavf;->u:Z

    if-eqz v0, :cond_0

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavf;->u:Z

    .line 848
    iget-object v0, p0, Lavf;->a:Landroid/view/View;

    iget-object v1, p0, Lavf;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 850
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lavf;->d(II)V

    .line 1285
    invoke-virtual {p0}, Lavf;->l()V

    .line 1287
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1351
    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lavf;->a:Lazg;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lavf;->a:Lazg;

    invoke-virtual {v0}, Lazg;->a()V

    .line 1361
    const/4 v0, 0x0

    iput-object v0, p0, Lavf;->a:Lazg;

    .line 1363
    :cond_0
    return-void
.end method

.method protected r()V
    .locals 12

    .prologue
    const/16 v5, 0x190

    const/4 v2, 0x0

    .line 1526
    invoke-virtual {p0}, Lavf;->p()V

    .line 1528
    iget-boolean v0, p0, Lavf;->t:Z

    if-eqz v0, :cond_2

    .line 1529
    iget v0, p0, Lavf;->C:I

    if-gez v0, :cond_1

    .line 1530
    iget v0, p0, Lavf;->C:I

    neg-int v3, v0

    .line 1538
    :goto_0
    iget-object v0, p0, Lavf;->a:Landroid/widget/Scroller;

    iget v1, p0, Lavf;->C:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1552
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lavf;->l()V

    .line 1553
    return-void

    .line 1532
    :cond_1
    iget v0, p0, Lavf;->v:I

    iget v1, p0, Lavf;->t:I

    iget v3, p0, Lavf;->z:I

    sub-int/2addr v1, v3

    iget v3, p0, Lavf;->y:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1534
    iget v1, p0, Lavf;->C:I

    if-le v1, v0, :cond_5

    .line 1535
    iget v1, p0, Lavf;->C:I

    sub-int v3, v0, v1

    goto :goto_0

    .line 1539
    :cond_2
    iget-boolean v0, p0, Lavf;->r:Z

    if-eqz v0, :cond_0

    .line 1540
    iget v0, p0, Lavf;->D:I

    if-gez v0, :cond_3

    .line 1541
    iget v0, p0, Lavf;->D:I

    neg-int v10, v0

    .line 1549
    :goto_2
    iget v8, p0, Lavf;->D:I

    move-object v6, p0

    move v7, v2

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lavf;->a(IIIII)V

    goto :goto_1

    .line 1543
    :cond_3
    iget v0, p0, Lavf;->w:I

    iget v1, p0, Lavf;->u:I

    iget v3, p0, Lavf;->B:I

    sub-int/2addr v1, v3

    iget v3, p0, Lavf;->A:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1545
    iget v1, p0, Lavf;->D:I

    if-le v1, v0, :cond_4

    .line 1546
    iget v1, p0, Lavf;->D:I

    sub-int v10, v0, v1

    goto :goto_2

    :cond_4
    move v10, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_0
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lavf;->a:Lavh;

    if-nez v0, :cond_0

    .line 1752
    new-instance v0, Lavh;

    iget-object v1, p0, Lavf;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lavh;-><init>(Lavf;Landroid/view/ViewConfiguration;Lavf;)V

    iput-object v0, p0, Lavf;->a:Lavh;

    .line 1755
    :cond_0
    return-void
.end method
