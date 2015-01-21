.class public final Lle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ln;)Lah;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lal;->a(Ln;)Lah;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;)Lld;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lle;->a(Ln;)Lah;

    move-result-object v1

    .line 42
    const-string v0, "THEME_TYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->by:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->by:I

    .line 44
    new-instance v0, Llq;

    invoke-direct {v0, p0, v1, p3}, Llq;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Landroid/os/Handler;)V

    .line 51
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v0, "URL_TYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bB:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bB:I

    .line 47
    new-instance v0, Llr;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p3, v2}, Llr;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Landroid/os/Handler;Lkq;)V

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "WEIXIN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lmf;

    invoke-direct {v0, p0, v1}, Lmf;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V

    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Lkx;

    invoke-direct {v0, p0, v1, p2}, Lkx;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;Lkq;)Lld;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1}, Lle;->a(Ln;)Lah;

    move-result-object v1

    .line 59
    const-string v0, "THEME_TYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->by:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->by:I

    .line 61
    new-instance v0, Llq;

    invoke-direct {v0, p0, v1, p3}, Llq;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Landroid/os/Handler;)V

    .line 68
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v0, "URL_TYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bB:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bB:I

    .line 64
    new-instance v0, Llr;

    invoke-direct {v0, p0, v1, p3, p4}, Llr;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Landroid/os/Handler;Lkq;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "WEIXIN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lmf;

    invoke-direct {v0, p0, v1}, Lmf;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lkx;

    invoke-direct {v0, p0, v1, p2}, Lkx;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Ljava/lang/String;)V

    goto :goto_0
.end method
