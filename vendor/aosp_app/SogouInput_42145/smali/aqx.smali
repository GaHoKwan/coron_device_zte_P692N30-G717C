.class public Laqx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 13869
    iput-object p1, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 13872
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 13889
    :goto_0
    return-void

    .line 13874
    :cond_0
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-string v1, "onReceive mScreenOffReceiver"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/String;)V

    .line 13876
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->I(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 13878
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13879
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->j(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 13880
    :cond_1
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 13881
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 13884
    :cond_2
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->W()V

    .line 13885
    iget-object v0, p0, Laqx;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e()V

    goto :goto_0
.end method
