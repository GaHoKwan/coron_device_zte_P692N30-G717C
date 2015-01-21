.class public Laqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1805
    iput-object p1, p0, Laqg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-object p2, p0, Laqg;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Laqg;->a:Landroid/content/Context;

    iput-object p4, p0, Laqg;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1809
    iget-object v2, p0, Laqg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v0, p0, Laqg;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 1810
    iget-object v0, p0, Laqg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 1811
    iget-object v0, p0, Laqg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Laqg;->a:Landroid/content/Context;

    iget-object v2, p0, Laqg;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1812
    return-void

    .line 1809
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
