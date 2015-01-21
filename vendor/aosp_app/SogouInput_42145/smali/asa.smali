.class public Lasa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoq;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 3452
    iput-object p1, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3453
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3487
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    if-eqz v0, :cond_1

    .line 3497
    :cond_0
    :goto_0
    return v2

    .line 3489
    :cond_1
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3491
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3492
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 3493
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3494
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n()V

    goto :goto_0

    .line 3496
    :cond_2
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n()V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3457
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    if-eqz v0, :cond_2

    .line 3458
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3459
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3461
    iget-object v2, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3462
    const v3, 0x7f0b00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3466
    if-eqz v1, :cond_1

    .line 3483
    :cond_0
    :goto_0
    return v4

    .line 3468
    :cond_1
    iget-object v2, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2, v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILandroid/content/Context;)V

    goto :goto_0

    .line 3472
    :cond_2
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3473
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Z)V

    goto :goto_0

    .line 3474
    :cond_3
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3476
    :cond_4
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v0

    invoke-virtual {v0}, Lash;->a()V

    .line 3477
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 3478
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)V

    .line 3480
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3517
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3501
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    if-eqz v0, :cond_1

    .line 3511
    :cond_0
    :goto_0
    return v2

    .line 3503
    :cond_1
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3505
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3506
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 3507
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3508
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->n()V

    goto :goto_0

    .line 3510
    :cond_2
    iget-object v0, p0, Lasa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->n()V

    goto :goto_0
.end method
