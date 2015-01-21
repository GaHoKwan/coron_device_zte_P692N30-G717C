.class public Lwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const v1, 0x7f0b0420

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const v2, 0x7f0b0421

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v5}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 818
    iget-object v2, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lwa;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 821
    return-void
.end method
