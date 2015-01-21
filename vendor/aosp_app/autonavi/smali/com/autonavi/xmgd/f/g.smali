.class public Lcom/autonavi/xmgd/f/g;
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

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 7

    const v6, 0x7f070043

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->i(Ljava/lang/String;)I

    move-result v1

    const v2, 0xbebc200

    if-lt v1, v2, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4, v5}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-static {v0}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    const v3, 0x7f070040

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v3, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v3, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/autonavi/xmgd/logic/b;->e(Lcom/autonavi/xmgd/e/k;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/g;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

    goto :goto_0

    :cond_5
    if-ne v1, v5, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v2, 0x7f070042

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v2, 0x7f070041

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1
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
