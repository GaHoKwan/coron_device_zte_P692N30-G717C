.class public Lapw;
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
    .line 3054
    iput-object p1, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3073
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
    const/4 v3, 0x0

    .line 3056
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0}, Laoe;->c()V

    .line 3057
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoe;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3058
    if-eqz v0, :cond_1

    .line 3059
    iget-object v1, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v2, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 3060
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-virtual {v0}, Laor;->a()V

    .line 3061
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 3062
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->u(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3069
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3063
    :cond_1
    if-eqz p2, :cond_0

    .line 3064
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 3065
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-virtual {v0}, Laor;->a()V

    .line 3066
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 3067
    iget-object v0, p0, Lapw;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->u(Lcom/sohu/inputmethod/sogou/SogouIME;)V

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
    .line 3082
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3077
    const/4 v0, 0x0

    return v0
.end method
