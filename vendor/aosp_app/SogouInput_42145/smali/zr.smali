.class public Lzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

.field final synthetic a:Lko;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lko;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lzr;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iput-object p2, p0, Lzr;->a:Lko;

    iput p3, p0, Lzr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lzr;->a:Lko;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lzr;->a:Lko;

    invoke-virtual {v0}, Lko;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 653
    iget-object v0, p0, Lzr;->a:Lko;

    invoke-virtual {v0}, Lko;->a()V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lzr;->a:Lko;

    invoke-virtual {v0}, Lko;->b()I

    move-result v0

    sget v1, Lko;->a:I

    if-ne v0, v1, :cond_2

    .line 655
    iget-object v0, p0, Lzr;->a:Lko;

    invoke-virtual {v0}, Lko;->g()V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lzr;->a:Lko;

    invoke-virtual {v0}, Lko;->c()V

    .line 658
    iget-object v0, p0, Lzr;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzr;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 659
    iget v1, p0, Lzr;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
