.class public Lahk;
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
    .line 178
    iput-object p1, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b(Lcom/sohu/inputmethod/settings/UserSymbolList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0233

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    .line 187
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->b(Lcom/sohu/inputmethod/settings/UserSymbolList;)V

    .line 188
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    iget-object v1, p0, Lahk;->a:Lcom/sohu/inputmethod/settings/UserSymbolList;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->a(Lcom/sohu/inputmethod/settings/UserSymbolList;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/UserSymbolList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    :cond_0
    return-void
.end method
