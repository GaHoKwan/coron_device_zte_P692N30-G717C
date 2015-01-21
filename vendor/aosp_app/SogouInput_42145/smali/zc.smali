.class public Lzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lzc;->a:Lcom/sohu/inputmethod/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v0, p0, Lzc;->a:Lcom/sohu/inputmethod/settings/AboutActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AboutActivity;->a(Lcom/sohu/inputmethod/settings/AboutActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lzc;->a:Lcom/sohu/inputmethod/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzc;->a:Lcom/sohu/inputmethod/settings/AboutActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    iget-object v0, p0, Lzc;->a:Lcom/sohu/inputmethod/settings/AboutActivity;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/AboutActivity;->a(Lcom/sohu/inputmethod/settings/AboutActivity;I)I

    .line 33
    :cond_0
    return-void
.end method
