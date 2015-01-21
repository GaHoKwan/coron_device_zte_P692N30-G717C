.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;
.super Ljava/lang/Object;


# instance fields
.field public JourneyPoints:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

.field public bHasAvoidRoad:Z

.field public nRule:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ[Lcom/autonavi/xm/navigation/server/poi/GPoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->nRule:I

    iput-boolean p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->bHasAvoidRoad:Z

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    return-void
.end method
