.class public Laoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Laoh;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Laoh;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Laoh;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 108
    iget-object v0, p0, Laoh;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Z)V

    .line 109
    iget-object v0, p0, Laoh;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ae:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ae:I

    .line 111
    :cond_0
    return-void
.end method
