.class public Lapy;
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
    .line 3114
    iput-object p1, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3131
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ILjava/lang/CharSequence;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3116
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setSymbolPressed()V

    .line 3117
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->u(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3118
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3119
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labt;->a(Landroid/content/Context;)Labt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Labt;)Labt;

    .line 3120
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    invoke-virtual {v0}, Labt;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3121
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    iget-object v1, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laur;

    move-result-object v1

    invoke-virtual {v1, v2}, Laur;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Labt;->a(Ljava/util/List;)Z

    .line 3125
    :cond_0
    :goto_0
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    invoke-virtual {v0, p2}, Labt;->a(Ljava/lang/CharSequence;)Z

    .line 3128
    :cond_1
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 3122
    :cond_2
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    invoke-virtual {v0}, Labt;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3123
    iget-object v0, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    iget-object v1, p0, Lapy;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laur;

    move-result-object v1

    invoke-virtual {v1, v2}, Laur;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Labt;->a(Ljava/util/List;)Z

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
    .line 3139
    const/4 v0, 0x0

    return v0
.end method

.method public final b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3134
    const/4 v0, 0x0

    return v0
.end method
