.class public Lapv;
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
    .line 3026
    iput-object p1, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3042
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ILjava/lang/CharSequence;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3028
    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0}, Laoe;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3029
    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0}, Laoe;->c()V

    .line 3030
    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoe;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3031
    if-eqz v0, :cond_0

    .line 3032
    iget-object v1, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v2, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 3038
    :goto_0
    return v3

    .line 3034
    :cond_0
    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3037
    :cond_1
    iget-object v0, p0, Lapv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;Z)V

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
    .line 3050
    const/4 v0, 0x0

    return v0
.end method

.method public final b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3045
    const/4 v0, 0x0

    return v0
.end method