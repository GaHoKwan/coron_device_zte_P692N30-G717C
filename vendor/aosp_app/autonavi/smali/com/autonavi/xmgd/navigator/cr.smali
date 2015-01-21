.class Lcom/autonavi/xmgd/navigator/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/view/MapView$IMapViewListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveTipPoi()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->N()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->n(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/j;->j()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->n(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/j;->k()V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[Map] onSurfaceChanged"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->B()V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 5

    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[Map] onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Lcom/autonavi/xmgd/application/NaviApplication;->setMapSurfaceExist(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->c()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->l(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v1

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-virtual {v1, v4, v4, v2, v0}, Lcom/autonavi/xmgd/view/MapView;->saveScreenShot(IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[Map] onSurfaceDestroyed"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setMapSurfaceExist(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cr;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->d()V

    return-void
.end method
