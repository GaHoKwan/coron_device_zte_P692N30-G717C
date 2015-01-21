.class public Lcom/autonavi/xmgd/f/h;
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

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/f/z;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0xd

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/f/o;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    instance-of v0, v1, Lcom/autonavi/xmgd/e/c;

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/autonavi/xmgd/e/c;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/autonavi/xmgd/naviservice/q;->c(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v4, v5}, Lcom/autonavi/xmgd/f/o;->a(II)V

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v2, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/b;->e(Lcom/autonavi/xmgd/e/k;)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/f/h;->a:Lcom/autonavi/xmgd/f/o;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/autonavi/xmgd/f/o;->a(II)V

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
