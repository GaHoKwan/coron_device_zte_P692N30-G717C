.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;
.super Ljava/lang/Object;


# instance fields
.field public eIndex:I

.field public eTrafficStream:I

.field public nDelayTime:I

.field public nDis:I

.field public nDisFromStart:I

.field public nNumberOfEvent:I

.field public pTrafficEvents:[I

.field public sIndex:I

.field public szRoadNames:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->sIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->eIndex:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDisFromStart:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDis:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->szRoadNames:Ljava/lang/String;

    iput p6, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nNumberOfEvent:I

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->pTrafficEvents:[I

    iput p8, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->eTrafficStream:I

    iput p9, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;->nDelayTime:I

    return-void
.end method
