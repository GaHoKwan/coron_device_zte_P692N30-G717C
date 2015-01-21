.class Lcom/autonavi/xmgd/navigator/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/c;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/co;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->v()[Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v3, v0

    if-eqz v4, :cond_1

    const-string v5, "autonavi60"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Map] onRouteCalculateResult:uiPoi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_6

    move v1, v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->D(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->D(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->C()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getIsMapForeground()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v3, 0x7f070027

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070159

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_2
.end method

.method public a(Landroid/location/Location;Z)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->w(Lcom/autonavi/xmgd/navigator/Map;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070149

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/autonavi/xmgd/logic/b;->a(Ljava/lang/String;ZZ)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->f(Lcom/autonavi/xmgd/navigator/ck;)V

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1, p2}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xmgd/e/k;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/k;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1, p2}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/util/ArrayList;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->h(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->E(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/controls/ak;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->E(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/controls/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ak;->a()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->E(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/controls/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ak;->b()V

    goto :goto_0
.end method

.method public b(Lcom/autonavi/xmgd/e/k;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xmgd/e/k;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->c(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->g(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->o(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->b()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->q(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->r(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->A()V

    return-void
.end method

.method public f()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    const-string v1, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->s(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->t(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->u(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->v(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public i()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->getElementsToShow()[Lcom/autonavi/xm/navigation/server/map/GCustomElement;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->x(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->OnDrawMapViewStart()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->OnDrawMapViewEnd()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->y(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->z(Lcom/autonavi/xmgd/navigator/Map;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->A(Lcom/autonavi/xmgd/navigator/Map;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->B(Lcom/autonavi/xmgd/navigator/Map;)I

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->h(Lcom/autonavi/xmgd/navigator/ck;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/co;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;Z)V

    return-void
.end method
