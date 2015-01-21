.class public Lcom/autonavi/xm/navigation/server/map/GPathObject;
.super Ljava/lang/Object;


# instance fields
.field public lLineNum:I

.field public lPointNum:I

.field public lTailNum:I

.field public nAngle:I

.field public pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

.field public pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

.field public pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

.field public ptArrow:Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/map/GPointObject;I[Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;II[Lcom/autonavi/xm/navigation/server/map/GLineObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lPointNum:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lLineNum:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->ptArrow:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p6, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->nAngle:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lTailNum:I

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    return-void
.end method
