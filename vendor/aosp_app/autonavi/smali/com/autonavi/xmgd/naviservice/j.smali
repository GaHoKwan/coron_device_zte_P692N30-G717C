.class public Lcom/autonavi/xmgd/naviservice/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/j;


# instance fields
.field private b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/j;->c:I

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/j;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/j;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/j;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    sget-object v0, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    sput-object v1, Lcom/autonavi/xmgd/naviservice/j;->a:Lcom/autonavi/xmgd/naviservice/j;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/j;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v1, v0, 0x64

    iget v0, p0, Lcom/autonavi/xmgd/naviservice/j;->d:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    iget v3, p0, Lcom/autonavi/xmgd/naviservice/j;->d:I

    invoke-interface {v0, v3, v1}, Lcom/autonavi/xmgd/naviservice/k;->b(II)V

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/j;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isWholeView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/k;->L()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/j;->i()V

    :cond_1
    return-void
.end method


# virtual methods
.method public GDBL_OnDrawMapViewEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/k;->I()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GDBL_OnDrawMapViewStart()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/k;->H()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GDBL_OnViewSwitchEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/k;->J()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GDBL_OnZoomEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/k;->K()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IIII)I
    .locals 4

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v1, p3, p4}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-virtual {v2, v0, v1, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, v3, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ViewMap(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v2, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v2, v1, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_MoveMapByGeoCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/j;->j()V

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v4, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v3, v4, :cond_3

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v3, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-eq v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_AdjustCar(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/j;->j()V

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetViewMode(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_MoveMap(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/j;->j()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GoToCCP(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/j;->j()V

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    iget v1, p0, Lcom/autonavi/xmgd/naviservice/j;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetMapCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetMapViewInfo([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/k;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    goto :goto_0
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->nPitchAngle:I

    add-int/2addr v0, p1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    rsub-int/lit8 v0, v0, 0x5a

    add-int/2addr p1, v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_AdjustMapElevation(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    rsub-int/lit8 v0, v0, 0x14

    add-int/2addr p1, v0

    goto :goto_1
.end method

.method public b(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomToNoAnim(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public b([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetMapViewInfo([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/k;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_RotateMap(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/j;->b([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eMapMode:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    goto :goto_0
.end method

.method public e()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-array v1, v5, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eMapMode:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-ne v0, v2, :cond_1

    new-array v0, v5, [I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SCALE_LEVEL_3D:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v0, v4

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    return v0

    :cond_1
    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    goto :goto_0
.end method

.method public f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomIn()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/j;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomOut()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    goto :goto_0
.end method
