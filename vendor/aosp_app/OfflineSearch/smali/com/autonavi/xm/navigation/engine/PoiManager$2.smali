.class Lcom/autonavi/xm/navigation/engine/PoiManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/PoiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$2;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
    .locals 2

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iget v1, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iget v1, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    if-ge v0, v1, :cond_1

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

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$2;->compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    return v0
.end method
