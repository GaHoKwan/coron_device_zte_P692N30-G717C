.class public Lcom/autonavi/xmgd/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/f/n;


# instance fields
.field private a:Lcom/autonavi/xmgd/f/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/e/k;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->c()Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/g;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bundle"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v2, v4, v1}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/autonavi/xmgd/f/c;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v4, v0}, Lcom/autonavi/xmgd/f/o;->a(II)V

    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
