.class public Lcom/autonavi/xmgd/f/e;
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

    const v0, 0x7f0200b6

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 5

    const/16 v4, 0xf

    iget-object v0, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v4, v0}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/f/e;->a:Lcom/autonavi/xmgd/f/o;

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
