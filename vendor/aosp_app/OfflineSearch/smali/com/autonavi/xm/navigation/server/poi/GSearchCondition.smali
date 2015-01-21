.class public Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

.field public eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public lAroundRange:I

.field public lCategoryID:I

.field public szKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_ALL:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/poi/GSearchType;IILcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;->GROUTEPOI_TYPE_ALL:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    return-void
.end method
