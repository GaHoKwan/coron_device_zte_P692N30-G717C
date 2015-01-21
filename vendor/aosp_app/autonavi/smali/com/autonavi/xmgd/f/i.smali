.class public Lcom/autonavi/xmgd/f/i;
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

    const v0, 0x7f020103

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

    iput-object p1, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    instance-of v2, v0, Lcom/autonavi/xmgd/e/c;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/c;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/FavoriteEdit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v3, v0}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/f/i;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v3, v0}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
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
