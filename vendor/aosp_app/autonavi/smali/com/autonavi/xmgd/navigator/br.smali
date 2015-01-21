.class Lcom/autonavi/xmgd/navigator/br;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/cz;->a()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->K(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/ct;->b()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->h()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->v()[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dest_name"

    const/4 v3, 0x6

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/br;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    :cond_2
    return-void
.end method
