.class public Lcom/autonavi/xmgd/f/k;
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
    .locals 3

    invoke-static {p1}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020103

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020104

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 8

    const v7, 0x7f070043

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/16 v4, 0x17

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->i(Ljava/lang/String;)I

    move-result v1

    const v2, 0xbebc200

    if-lt v1, v2, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4, v6}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-static {v0}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v1, v4, v0}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_7
    instance-of v1, v0, Lcom/autonavi/xmgd/e/c;

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/q;->c(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_9

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4, v5}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto/16 :goto_0

    :cond_8
    check-cast v0, Lcom/autonavi/xmgd/e/c;

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/k;->a:Lcom/autonavi/xmgd/f/o;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto/16 :goto_0
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

    const/4 v0, 0x1

    return v0
.end method
