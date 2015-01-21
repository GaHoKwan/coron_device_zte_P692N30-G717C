.class public Larp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17571
    iput-object p1, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput p2, p0, Larp;->a:I

    iput-object p3, p0, Larp;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 17574
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 17577
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    iget v1, p0, Larp;->a:I

    if-eq v0, v1, :cond_0

    .line 17579
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->M()V

    .line 17580
    iget-object v0, p0, Larp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->z(Ljava/lang/String;)V

    .line 17582
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->o(I)V

    .line 17584
    :cond_0
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17586
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    .line 17587
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-eqz v0, :cond_1

    .line 17588
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a()V

    .line 17589
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->L(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17590
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17594
    :goto_0
    return-void

    .line 17592
    :cond_1
    iget-object v0, p0, Larp;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->M(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0
.end method
