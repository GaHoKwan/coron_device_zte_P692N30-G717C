.class Lcom/autonavi/xmgd/naviservice/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/u;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

.field private d:[Lcom/autonavi/xmgd/e/k;

.field private e:I

.field private f:Z

.field private g:Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/u;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/u;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/u;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    return-object v0
.end method

.method static a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xmgd/naviservice/u;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/u;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/naviservice/u;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v0, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    sput-object v1, Lcom/autonavi/xmgd/naviservice/u;->a:Lcom/autonavi/xmgd/naviservice/u;

    :cond_0
    return-void
.end method


# virtual methods
.method public GDBL_OnDeming()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/v;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/v;->N()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GDBL_OnRouteCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x7

    new-array v1, v0, [Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetCurrentJourneyPoint([Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v0, v1, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v1, v3

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v1, v4

    aput-object v2, v0, v4

    iput v3, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-lez v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    iget v2, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/v;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/v;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_ROUTE_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddDetourRoad(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/u;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/u;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v3

    iput v3, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    iget-object v2, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v0, v0, v3

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->nAzimuth:S

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_LoadGuideRoute(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_SaveGuideRoute(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StartRouteCalculation(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetGuideRoadList(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetManeuverTextList([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetPathStatisticInfo(ZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/v;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/v;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/naviservice/u;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA5:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_1
.end method

.method public c(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/u;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    :cond_5
    :goto_1
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v1, v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/naviservice/u;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v3, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v6, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v7, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto/16 :goto_1

    :cond_9
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA5:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto/16 :goto_1
.end method

.method public d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_ContinueDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StartDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v4

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    :cond_4
    :goto_1
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v1, v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v6

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v6, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object p1, v0, v7

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    if-ne v1, v7, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA5:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    goto/16 :goto_1
.end method

.method public e()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_PauseDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/u;->g()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/u;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    if-nez v2, :cond_7

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v3, v1

    if-nez v2, :cond_4

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "autonavi60"

    const-string v1, "[RouteManager] setDest fail car info is null"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/autonavi/xmgd/e/k;

    aget-object v4, v3, v1

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2, v4}, Lcom/autonavi/xmgd/e/k;-><init>(Lcom/autonavi/xm/navigation/server/GCoord;)V

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->szRoadName:Ljava/lang/String;

    iput-object v3, v2, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aput-object v2, v3, v1

    iget-object v3, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v3, v4, :cond_6

    iget-object v2, v2, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v3, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v2, v3, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_5
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x6

    aput-object p1, v0, v2

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v0, v2, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/naviservice/u;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_ContinueDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/u;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StartGuidance()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public i()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public j()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    return v0
.end method

.method public l()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StopGuidance()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/u;->e:I

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->d:[Lcom/autonavi/xmgd/e/k;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA1:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA2:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA3:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA4:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_VIA5:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public m()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GParam;->G_ROUTE_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method public n()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v2, v1, [I

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v3, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetGuideFlags([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public o()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_CloseZoomView()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_SpeakNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->g()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/naviservice/h;->a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nSpeed:I

    :cond_0
    return v0
.end method

.method public s()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/u;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->g:Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->g:Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    return-object v0
.end method

.method public t()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/u;->g:Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    return-object v0
.end method
