.class public Lahl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/UserSymbolList;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/UserSymbolList;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0234

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    .line 205
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    .line 206
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    iget-object v1, p0, Lahl;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 209
    :cond_0
    return-void
.end method
