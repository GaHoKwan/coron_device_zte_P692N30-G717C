.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public eFlag:I

.field public eTrafficStream:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public lLat:I

.field public lLon:I

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

.field public szCurRoadName:Ljava/lang/String;

.field public szNextRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIIISII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nNextDis:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nNextArrivalTime:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTotalRemainDis:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szCurRoadName:Ljava/lang/String;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szNextRoadName:Ljava/lang/String;

    invoke-static {p8}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->eTrafficStream:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    iput p9, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTrafficEventID:I

    iput p10, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nChinaRoadID:I

    iput p11, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->eFlag:I

    iput p12, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nDisFromCar:I

    iput p13, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nMeshID:I

    move/from16 v0, p14

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nMeshRoadID:S

    move/from16 v0, p15

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLon:I

    move/from16 v0, p16

    iput v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLat:I

    return-void
.end method
