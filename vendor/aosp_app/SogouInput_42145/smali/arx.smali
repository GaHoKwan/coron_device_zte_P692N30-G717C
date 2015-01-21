.class public Larx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasf;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2638
    iput-object p1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 2647
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2648
    if-eqz v0, :cond_3

    .line 2649
    iget-object v1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    .line 2650
    iget-object v1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    iget-object v2, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    invoke-virtual {v2}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Laou;->a(Ljava/lang/CharSequence;)V

    .line 2652
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2653
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    iget-object v1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    iget-object v2, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Landroid/view/inputmethod/InputConnection;)V

    .line 2657
    :cond_0
    :goto_0
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2658
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    iget-object v1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    iget-object v2, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Landroid/view/inputmethod/InputConnection;)V

    .line 2659
    :cond_1
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()V

    .line 2665
    :goto_1
    return-void

    .line 2655
    :cond_2
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v0

    iget-object v1, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    iget-object v2, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Laou;Z)V

    goto :goto_0

    .line 2660
    :cond_3
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-virtual {v0}, Laor;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2661
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()V

    goto :goto_1

    .line 2663
    :cond_4
    iget-object v0, p0, Larx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 2644
    return-void
.end method

.method public a(I[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2641
    return-void
.end method
