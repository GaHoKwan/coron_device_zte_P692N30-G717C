.class public Lzt;
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
    .line 704
    iput-object p1, p0, Lzt;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lzt;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V

    .line 709
    return-void
.end method
