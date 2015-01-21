.class public Lars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 18335
    iput-object p1, p0, Lars;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 18339
    iget-object v0, p0, Lars;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-string v1, "delete dialog dismiss!!!!!!!!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/String;)V

    .line 18340
    iget-object v0, p0, Lars;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lnr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lars;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lnr;

    move-result-object v0

    invoke-virtual {v0}, Lnr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18341
    iget-object v0, p0, Lars;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lnr;

    move-result-object v0

    invoke-virtual {v0}, Lnr;->b()V

    .line 18343
    :cond_0
    return-void
.end method
