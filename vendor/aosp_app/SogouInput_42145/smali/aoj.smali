.class public Laoj;
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
    .line 134
    iput-object p1, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 138
    iget-object v1, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->s()Z

    move-result v1

    .line 139
    iget-object v2, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Z)V

    .line 141
    iget-object v0, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->d(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 142
    iget-object v0, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->U()V

    .line 144
    iget-object v0, p0, Laoj;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cd:I

    .line 146
    :cond_1
    return-void
.end method
