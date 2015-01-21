.class public Laqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 5674
    iput-object p1, p0, Laqm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 5676
    iget-object v0, p0, Laqm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laym;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laym;

    move-result-object v0

    invoke-virtual {v0}, Laym;->a()V

    .line 5677
    :cond_0
    if-eqz p1, :cond_1

    .line 5678
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5679
    :cond_1
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget v0, v0, Lgt;->d:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_2

    .line 5680
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget-object v1, p0, Laqm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v1}, Lgt;->a(Landroid/content/Context;)V

    .line 5682
    :cond_2
    return-void
.end method
