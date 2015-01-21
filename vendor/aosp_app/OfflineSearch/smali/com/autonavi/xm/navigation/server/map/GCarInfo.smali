.class public Lcom/autonavi/xm/navigation/server/map/GCarInfo;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public nAzimuth:S

.field public nID:S

.field public nRoadID:I

.field public szRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GCoord;SSILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->nAzimuth:S

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->nID:S

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->nRoadID:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->szRoadName:Ljava/lang/String;

    return-void
.end method
