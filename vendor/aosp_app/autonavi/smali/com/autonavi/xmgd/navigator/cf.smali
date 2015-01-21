.class Lcom/autonavi/xmgd/navigator/cf;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/a;->i()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->M(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/d;->notifyDataSetChanged()V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->K()I

    move-result v1

    const-string v2, "map_admincode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/xmgd/logic/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "map_raodname"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "map_areaname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->r()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "map_lon"

    iget-object v3, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "map_lat"

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/b/a;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/a;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/view/MapView;->removePoiLayer(Ljava/util/ArrayList;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->p(Lcom/autonavi/xmgd/navigator/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->invalidate()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->B()V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/a;->j()V

    return-void
.end method

.method public onTitleRightBtnClicked()V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onTitleRightBtnClicked()V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/a;->d()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/b/a;->a(II)V

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/b/a;->d(I)[I

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/b/a;->a()Lcom/autonavi/xmgd/b/a;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/autonavi/xmgd/b/a;->a(I[I)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cf;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->M(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/b/d;->notifyDataSetChanged()V

    return-void
.end method
