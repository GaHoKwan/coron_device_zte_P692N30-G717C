.class Lcom/autonavi/xm/navigation/engine/PoiManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/PoiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager$3;->this$0:Lcom/autonavi/xm/navigation/engine/PoiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iget v3, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iget v3, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iget v3, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    if-lt v2, v3, :cond_0

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iget v2, p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    check-cast p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$3;->compare(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    return v0
.end method
