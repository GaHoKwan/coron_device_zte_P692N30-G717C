.class public Lzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lzk;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lzk;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lzk;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->a()V

    .line 930
    iget-object v0, p0, Lzk;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v0

    invoke-virtual {v0}, Lamj;->b()V

    .line 932
    :cond_0
    return-void
.end method
