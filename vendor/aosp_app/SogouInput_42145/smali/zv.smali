.class public Lzv;
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
    .line 737
    iput-object p1, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xd

    const/4 v8, -0x1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 744
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v4}, Lqy;->b(I)I

    move-result v2

    .line 745
    if-eq v2, v8, :cond_0

    .line 746
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v3, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lqy;->a(I)Lsg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 747
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 748
    iget-object v3, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Laml;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Laml;)Laml;

    .line 749
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    invoke-virtual {v2}, Laml;->a()V

    .line 751
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    invoke-virtual {v2}, Laml;->b()V

    .line 756
    :cond_0
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    .line 757
    if-eq v2, v8, :cond_1

    .line 758
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v3, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lqy;->a(I)Lsg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 759
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 760
    iget-object v3, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Lamj;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lamj;)Lamj;

    .line 761
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 762
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    invoke-virtual {v2}, Lamj;->a()V

    .line 763
    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    invoke-virtual {v2}, Lamj;->b()V

    .line 768
    :cond_1
    new-instance v4, Lamj;

    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lamj;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {v4, v1}, Lamj;->a(Lrl;)V

    .line 770
    iget-object v7, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 772
    iget-object v1, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqy;->a(Lsg;)V

    .line 773
    iget-object v1, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->b(I)I

    move-result v0

    .line 774
    if-ne v0, v8, :cond_2

    .line 775
    iget-object v0, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lzv;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    .line 778
    :cond_2
    return-void
.end method
