.class Lcom/autonavi/xmgd/navigator/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/b/b;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v1, p1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/util/ArrayList;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->invalidate()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->B()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "II)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v1, p2, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Ljava/util/ArrayList;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/MapView;->invalidate()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cn;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->B()V

    return-void
.end method
