.class public Lzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

.field final synthetic a:Lko;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lko;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lzs;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iput-object p2, p0, Lzs;->a:Lko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lzs;->a:Lko;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lzs;->a:Lko;

    invoke-virtual {v0}, Lko;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 670
    iget-object v0, p0, Lzs;->a:Lko;

    invoke-virtual {v0}, Lko;->e()V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lzs;->a:Lko;

    invoke-virtual {v0}, Lko;->b()I

    move-result v0

    sget v1, Lko;->a:I

    if-ne v0, v1, :cond_0

    .line 672
    iget-object v0, p0, Lzs;->a:Lko;

    invoke-virtual {v0}, Lko;->g()V

    .line 673
    iget-object v0, p0, Lzs;->a:Lko;

    invoke-virtual {v0}, Lko;->e()V

    goto :goto_0
.end method
