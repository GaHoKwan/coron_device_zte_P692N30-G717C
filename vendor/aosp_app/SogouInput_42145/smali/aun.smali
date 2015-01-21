.class public Laun;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    .line 520
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 522
    iget-object v2, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 525
    iget-object v3, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 526
    iget-object v4, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lazg;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lazg;->a(I)V

    .line 527
    iget-object v4, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lazg;

    move-result-object v4

    invoke-virtual {v4}, Lazg;->a()F

    move-result v4

    .line 528
    iget-object v5, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lazg;

    move-result-object v5

    invoke-virtual {v5}, Lazg;->b()F

    move-result v5

    .line 529
    iget-object v6, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v6}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lazg;

    move-result-object v6

    invoke-virtual {v6}, Lazg;->a()I

    move-result v6

    .line 534
    iget-object v7, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3e80

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    cmpl-float v7, v0, v2

    if-lez v7, :cond_3

    const/16 v7, 0x9

    if-le v6, v7, :cond_3

    .line 538
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    .line 542
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;I)I

    .line 543
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()Z

    move-result v0

    goto/16 :goto_0

    .line 545
    :cond_3
    iget-object v7, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v4, v7

    const/high16 v7, 0x3e80

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const/16 v2, 0x9

    if-le v6, v2, :cond_4

    .line 549
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    .line 553
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;I)I

    .line 554
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f()Z

    move-result v0

    goto/16 :goto_0

    .line 566
    :cond_4
    iget-object v2, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3e80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    const/16 v0, 0x9

    if-le v6, v0, :cond_1

    .line 573
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    .line 574
    iget-object v0, p0, Laun;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()Z

    move-result v0

    goto/16 :goto_0
.end method
