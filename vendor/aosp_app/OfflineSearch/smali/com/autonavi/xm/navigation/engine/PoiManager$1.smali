.class Lcom/autonavi/xm/navigation/engine/PoiManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

.field final synthetic val$center:Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/PoiManager;Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->val$center:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->val$center:Lcom/autonavi/xm/navigation/server/GCoord;

    #calls: Lcom/autonavi/xm/navigation/engine/PoiManager;->calDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I
    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->access$000(Lcom/autonavi/xm/navigation/engine/PoiManager;Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    iget-object v2, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->val$center:Lcom/autonavi/xm/navigation/server/GCoord;

    #calls: Lcom/autonavi/xm/navigation/engine/PoiManager;->calDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I
    invoke-static {v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/PoiManager;->access$000(Lcom/autonavi/xm/navigation/engine/PoiManager;Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    check-cast p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$1;->compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    return v0
.end method
