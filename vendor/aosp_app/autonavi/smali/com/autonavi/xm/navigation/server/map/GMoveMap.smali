.class public Lcom/autonavi/xm/navigation/server/map/GMoveMap;
.super Ljava/lang/Object;


# instance fields
.field public deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method
