.class public Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;
.super Ljava/lang/Object;


# instance fields
.field public nExitDis:I

.field public nExitTime:I

.field public nID:I

.field public nNextArrivalTime:I

.field public nNextDis:I

.field public nServiceAreaNum:I

.field public nTotalArrivalTime:I

.field public nTotalRemainDis:I

.field public nTurnID:I

.field public pServiceAreas:[Lcom/autonavi/xm/navigation/server/guide/GServiceArea;

.field public szCurRoadName:Ljava/lang/String;

.field public szNextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/guide/GServiceArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nTurnID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nNextDis:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nNextArrivalTime:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitDis:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nExitTime:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nTotalRemainDis:I

    iput p8, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nTotalArrivalTime:I

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->szCurRoadName:Ljava/lang/String;

    iput-object p10, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->szNextRoadName:Ljava/lang/String;

    iput p11, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->nServiceAreaNum:I

    iput-object p12, p0, Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;->pServiceAreas:[Lcom/autonavi/xm/navigation/server/guide/GServiceArea;

    return-void
.end method
