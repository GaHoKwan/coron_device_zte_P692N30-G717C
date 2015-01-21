.class public Lcom/autonavi/xmgd/f/v;
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

    const v0, 0x7f020107

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v7}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->v()[Lcom/autonavi/xmgd/e/k;

    move-result-object v4

    new-array v5, v8, [Lcom/autonavi/xmgd/e/k;

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_5

    aget-object v6, v4, v1

    if-eqz v6, :cond_4

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v6

    aput-object v6, v5, v1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    aput-object v3, v5, v0

    :goto_3
    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/af;->a(Z)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v7, v0}, Lcom/autonavi/xmgd/f/o;->a(ILandroid/content/Intent;)V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/v;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v7, v2}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070052

    invoke-static {v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
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
