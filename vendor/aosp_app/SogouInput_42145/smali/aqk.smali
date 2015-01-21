.class public Laqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 5692
    iput-object p1, p0, Laqk;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5695
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lgt;->d:I

    .line 5696
    iget-object v0, p0, Laqk;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5697
    iget-object v0, p0, Laqk;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 5698
    :cond_0
    return-void
.end method
