.class public Laqp;
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
    .line 5868
    iput-object p1, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5914
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->c(Lasd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5915
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 5916
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5917
    iget-object v1, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lapf;

    move-result-object v1

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v4, v4, v2, v0}, Lapf;->a(IIII)V

    .line 5920
    :cond_0
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 5921
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5955
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 5956
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 5957
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5958
    iget-object v1, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->getLocationOnScreen([I)V

    .line 5960
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aget v0, v0, v5

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 5961
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 5965
    :cond_1
    return-void
.end method

.method public a([SLcom/sohu/inputmethod/gesture/Gesture;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5872
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    invoke-static {v2}, Lasd;->c(Lasd;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5873
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5874
    iget-object v3, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->getLocationOnScreen([I)V

    .line 5875
    iget-object v3, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lapf;

    move-result-object v3

    aget v4, v2, v0

    neg-int v4, v4

    iget-object v5, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v5

    aget v2, v2, v0

    iget-object v6, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v3, v1, v4, v5, v2}, Lapf;->a(IIII)V

    .line 5878
    :cond_0
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5879
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    invoke-virtual {v2}, Laou;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5880
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->f()I

    move-result v2

    .line 5881
    iget-object v3, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    invoke-virtual {v3, v2}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5882
    iget-object v4, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4, v2, v3, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;Z)V

    .line 5885
    :cond_1
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-boolean v1, v2, Lcom/sohu/inputmethod/sogou/SogouIME;->d:Z

    .line 5893
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    move v0, v1

    .line 5910
    :cond_5
    :goto_0
    return v0

    .line 5900
    :cond_6
    iget-object v1, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljr;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljr;->a([S)Ljava/util/ArrayList;

    move-result-object v1

    .line 5902
    if-eqz v1, :cond_5

    .line 5905
    :try_start_0
    iget-object v2, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5906
    :catch_0
    move-exception v1

    .line 5907
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5968
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5969
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-boolean v0, v0, Lcom/sohu/inputmethod/sogou/SogouIME;->d:Z

    if-nez v0, :cond_1

    .line 5970
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->c(Lasd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5974
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    .line 5975
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5976
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cq:I

    .line 5978
    :cond_0
    invoke-virtual {p1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Z)V

    .line 5979
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 5980
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/SogouIME;->d:Z

    .line 5995
    :cond_1
    :goto_0
    return-void

    .line 5983
    :cond_2
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-boolean v1, v0, Lcom/sohu/inputmethod/sogou/SogouIME;->d:Z

    .line 5984
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5985
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0}, Laoe;->j()V

    .line 5986
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->k()V

    .line 5987
    iget-object v0, p0, Laqp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    goto :goto_0
.end method
