.class public Laqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapi;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 5829
    iput-object p1, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 5843
    new-array v1, v2, [I

    .line 5844
    new-array v2, v2, [I

    .line 5845
    invoke-virtual {p1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getLocationOnScreen([I)V

    .line 5846
    iget-object v3, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->getLocationOnScreen([I)V

    .line 5847
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 5848
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v2, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    aget v5, v1, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 5849
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v6

    invoke-static {v6}, Lasd;->b(Lasd;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, v5

    .line 5850
    invoke-virtual {v3, v4, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 5851
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5852
    return-void

    .line 5849
    :cond_0
    aget v0, v2, v7

    aget v1, v1, v7

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a([SLcom/sohu/inputmethod/gesture/Gesture;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5831
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lqg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lqg;->a(Lcom/sohu/inputmethod/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5832
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5833
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqu;

    iget-object v2, v0, Lqu;->a:Ljava/lang/String;

    .line 5834
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqu;

    iget-wide v0, v0, Lqu;->a:D

    const-wide/high16 v3, 0x3ff0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    .line 5835
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lqg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqg;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/gesture/Gesture;

    .line 5836
    iget-object v1, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(I)V

    .line 5839
    :cond_0
    return v5
.end method

.method public b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5855
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5856
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Z)V

    .line 5862
    :goto_0
    return-void

    .line 5858
    :cond_0
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0}, Laoe;->j()V

    .line 5859
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k()V

    .line 5860
    iget-object v0, p0, Laqo;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    goto :goto_0
.end method
