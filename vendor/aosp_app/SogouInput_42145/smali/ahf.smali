.class public Lahf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lahf;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    iput-object p2, p0, Lahf;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lahf;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 264
    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lahf;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Z)V

    .line 268
    :cond_0
    iget-object v0, p0, Lahf;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Z)V

    .line 269
    iget-object v0, p0, Lahf;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    .line 270
    return-void
.end method
