.class public Larf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasc;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 14424
    iput-object p1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 14426
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasj;

    move-result-object v0

    invoke-virtual {v0}, Lasj;->a()V

    .line 14427
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setLockEnabled(Z)V

    .line 14428
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setFilterVisible(I)V

    .line 14430
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laur;

    move-result-object v0

    iget-object v1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->h(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-virtual {v0, v1}, Laur;->a(I)I

    move-result v0

    .line 14431
    iget-object v1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 14433
    iget-object v1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v1

    iget-object v2, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Laor;->a(Ljava/util/List;)Laor;

    .line 14434
    iget-object v1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v1

    iget-object v2, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;IZ)V

    .line 14436
    iget-object v1, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;I)V

    .line 14437
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 14439
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 14440
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()V

    .line 14442
    :cond_0
    iget-object v0, p0, Larf;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Z

    .line 14443
    return-void
.end method
