.class public Lzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iput-object p2, p0, Lzx;->a:Ljava/lang/String;

    iput-object p3, p0, Lzx;->b:Ljava/lang/String;

    iput-object p4, p0, Lzx;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 854
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lqy;->b(I)I

    move-result v2

    .line 855
    if-eq v2, v5, :cond_0

    .line 856
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v3, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lqy;->a(I)Lsg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 857
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 858
    iget-object v3, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Laml;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Laml;)Laml;

    .line 859
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 860
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    invoke-virtual {v2}, Laml;->a()V

    .line 861
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Laml;

    move-result-object v2

    invoke-virtual {v2}, Laml;->b()V

    .line 866
    :cond_0
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    .line 867
    if-eq v2, v5, :cond_1

    .line 868
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v3, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lqy;->a(I)Lsg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 869
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 870
    iget-object v3, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v2

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Lamj;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lamj;)Lamj;

    .line 871
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 872
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    invoke-virtual {v2}, Lamj;->a()V

    .line 873
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    invoke-virtual {v2}, Lamj;->b()V

    .line 878
    :cond_1
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0214

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 881
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    new-instance v3, Lamj;

    iget-object v4, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lamj;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lamj;)Lamj;

    .line 882
    iget-object v2, p0, Lzx;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzx;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 883
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    iget-object v3, p0, Lzx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lamj;->a(Ljava/lang/String;)V

    .line 884
    :cond_2
    iget-object v2, p0, Lzx;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lzx;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 885
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    iget-object v3, p0, Lzx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lamj;->b(Ljava/lang/String;)V

    .line 887
    :cond_3
    iget-object v2, p0, Lzx;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lzx;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 888
    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v2

    iget-object v3, p0, Lzx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lamj;->c(Ljava/lang/String;)V

    .line 890
    :cond_4
    iget-object v7, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    iget-object v2, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lamj;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Lsg;)Lsg;

    .line 891
    iget-object v0, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v0

    invoke-virtual {v0, v8}, Lsg;->b(Z)V

    .line 892
    iget-object v0, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lqy;->a(ILsg;)I

    .line 894
    iget-object v0, p0, Lzx;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 895
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 896
    return-void
.end method
