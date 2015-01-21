.class public Lcom/autonavi/xmgd/f/u;
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

    const v0, 0x7f020106

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v6}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->v()[Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    new-array v4, v7, [Lcom/autonavi/xmgd/e/k;

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_4

    aget-object v5, v3, v0

    if-eqz v5, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v5

    aput-object v5, v4, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aput-object v2, v4, v1

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a(Z)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v2, v6, v0}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/u;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v6, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

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
