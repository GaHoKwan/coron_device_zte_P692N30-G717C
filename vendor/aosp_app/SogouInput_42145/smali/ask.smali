.class public Lask;
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
    .line 2889
    iput-object p1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2910
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2892
    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    invoke-virtual {v1}, Laoe;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2893
    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    invoke-virtual {v1}, Laoe;->c()V

    .line 2895
    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoe;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2896
    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isVoiceInputType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isVoiceInputType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v2

    invoke-virtual {v2}, Laxw;->a()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2899
    :cond_0
    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v3, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 2906
    :cond_1
    :goto_0
    return v0

    .line 2900
    :cond_2
    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isVoiceInputType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v2

    invoke-virtual {v2}, Laxw;->a()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2902
    iget-object v2, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 2906
    :cond_3
    const/4 v0, 0x0

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
    .line 2921
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2913
    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lask;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    invoke-virtual {v1}, Laoe;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2916
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lask;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_0
.end method
