.class public Lapu;
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
    .line 2942
    iput-object p1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2959
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2960
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2961
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Z)V

    .line 2963
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    :goto_0
    return v0

    .line 2966
    :cond_0
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2967
    if-lez v0, :cond_5

    .line 2968
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidateInfo(II)I

    move-result v1

    .line 2970
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->d:I

    .line 2971
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2972
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    .line 2977
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isChineseIME(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isEnglishIME(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2979
    :cond_3
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1, p2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0

    .line 2973
    :cond_4
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->d:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2974
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->d:I

    goto :goto_1

    .line 2982
    :cond_5
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1, p2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2946
    if-nez p2, :cond_0

    .line 2956
    :goto_0
    return v3

    .line 2947
    :cond_0
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2948
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->f()I

    move-result v0

    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    .line 2949
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2951
    :cond_1
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;)V

    .line 2952
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v0

    invoke-virtual {v0}, Lash;->a()V

    .line 2953
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2954
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->T()V

    .line 2955
    :cond_2
    iget-object v0, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

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
    .line 3022
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2985
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2986
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2987
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Z)V

    .line 2989
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2990
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    invoke-virtual {v1}, Laou;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3017
    :cond_0
    :goto_0
    return v0

    .line 2993
    :cond_1
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    invoke-virtual {v1}, Laou;->a()V

    .line 2994
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    invoke-virtual {v1, p2}, Laou;->a(Ljava/lang/CharSequence;)V

    .line 2995
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2996
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    iget-object v3, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Landroid/view/inputmethod/InputConnection;)V

    .line 3000
    :cond_2
    :goto_1
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v1

    iget v1, v1, Lasd;->b:I

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3001
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    iget-object v3, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/ComposingView;->a(Laou;Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 2998
    :cond_3
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/ComposingView;

    move-result-object v1

    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    iget-object v3, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/ComposingView;->b(Laou;Z)V

    goto :goto_1

    .line 3005
    :cond_4
    iget-object v2, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    invoke-virtual {v2}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 3008
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->refreshComposing(I)I

    .line 3009
    iget-object v1, p0, Lapu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->v(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 3017
    goto/16 :goto_0
.end method
