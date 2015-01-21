.class public Lcom/autonavi/xm/navigation/server/guide/GManeuverText;
.super Ljava/lang/Object;


# instance fields
.field public eFlag:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

.field public eTrafficStream:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public nChinaRoadID:I

.field public nDisFromCar:I

.field public nID:I

.field public nMeshID:I

.field public nMeshRoadID:S

.field public nNextArrivalTime:I

.field public nNextDis:I

.field public nTotalRemainDis:I

.field public nTrafficEventID:I

.field public nTurnID:I

.field public szDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIISLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nTurnID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nNextDis:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nNextArrivalTime:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nTotalRemainDis:I

    invoke-static {p6}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->eTrafficStream:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    iput p8, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nChinaRoadID:I

    invoke-static {p9}, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->eFlag:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    iput p10, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nDisFromCar:I

    iput p11, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nMeshID:I

    iput-short p12, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->nMeshRoadID:S

    iput-object p13, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverText;->szDescription:Ljava/lang/String;

    return-void
.end method
