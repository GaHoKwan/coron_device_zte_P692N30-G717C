.class Lnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lnw;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lnw;->a:Lnr;

    const-string v1, "start activity expression repo"

    invoke-static {v0, v1}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lnw;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fg:I

    .line 386
    iget-object v0, p0, Lnw;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lnw;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()V

    .line 388
    iget-object v0, p0, Lnw;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->n()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    iget-object v1, p0, Lnw;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 391
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lnw;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
