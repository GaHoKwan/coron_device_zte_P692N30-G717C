.class public Laro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 17546
    iput-object p1, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput p2, p0, Laro;->a:I

    iput-object p3, p0, Laro;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 17548
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 17551
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    iget v1, p0, Laro;->a:I

    if-eq v0, v1, :cond_0

    .line 17553
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->M()V

    .line 17554
    iget-object v0, p0, Laro;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->z(Ljava/lang/String;)V

    .line 17556
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->i(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->o(I)V

    .line 17558
    :cond_0
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17560
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    .line 17561
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->f:Z

    if-eqz v0, :cond_1

    .line 17562
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a()V

    .line 17563
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->L(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17564
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 17568
    :goto_0
    return-void

    .line 17566
    :cond_1
    iget-object v0, p0, Laro;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->M(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0
.end method
