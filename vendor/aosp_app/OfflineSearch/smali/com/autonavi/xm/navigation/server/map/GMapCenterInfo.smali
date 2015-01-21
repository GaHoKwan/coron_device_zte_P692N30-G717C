.class public Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;
.super Ljava/lang/Object;


# instance fields
.field public CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public RoadCoord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public nDistanceToRoad:I

.field public nMeshID:I

.field public nMeshRoadID:I

.field public szRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GCoord;IIILcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->nDistanceToRoad:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->nMeshID:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->nMeshRoadID:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->RoadCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    return-void
.end method
