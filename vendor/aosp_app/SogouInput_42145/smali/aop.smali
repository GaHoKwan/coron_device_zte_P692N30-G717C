.class public Laop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 156
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->u()V

    .line 157
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Z)V

    .line 158
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ae:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ae:I

    .line 159
    iget-object v0, p0, Laop;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ag:I

    .line 162
    :cond_0
    return-void
.end method
