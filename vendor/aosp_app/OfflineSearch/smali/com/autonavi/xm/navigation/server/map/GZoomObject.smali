.class public Lcom/autonavi/xm/navigation/server/map/GZoomObject;
.super Ljava/lang/Object;


# instance fields
.field public Path:Lcom/autonavi/xm/navigation/server/map/GPathObject;

.field public lLineNum:I

.field public lPointNum:I

.field public lRemainDis:I

.field public nCarAngle:I

.field public pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

.field public pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

.field public stCarPos:Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method public constructor <init>(II[Lcom/autonavi/xm/navigation/server/map/GPointObject;I[Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/map/GPathObject;Lcom/autonavi/xm/navigation/server/GCoord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lRemainDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lPointNum:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    iput p4, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lLineNum:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->Path:Lcom/autonavi/xm/navigation/server/map/GPathObject;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->stCarPos:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p8, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->nCarAngle:I

    return-void
.end method
