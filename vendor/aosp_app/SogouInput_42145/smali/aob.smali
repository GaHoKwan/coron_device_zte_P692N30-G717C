.class public Laob;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const v3, 0x3c23d70a

    .line 498
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 499
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    .line 500
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    mul-float v1, p3, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    .line 506
    :goto_0
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v0

    .line 507
    iget-object v1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 509
    :cond_0
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V

    .line 513
    :goto_1
    return v4

    .line 502
    :cond_1
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    iget-object v1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I

    move-result v1

    iget-object v2, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    .line 503
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    neg-float v1, p3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v0

    .line 519
    float-to-int v1, p3

    add-int/2addr v0, v1

    .line 520
    iget-object v1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I

    .line 521
    iget-object v1, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    iget-object v2, p0, Laob;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method
