.class public Lafk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 224
    iget-object v0, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 227
    :cond_0
    iget-object v0, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0b0263

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 228
    iget-object v0, p0, Lafk;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    :cond_1
    return-void
.end method
