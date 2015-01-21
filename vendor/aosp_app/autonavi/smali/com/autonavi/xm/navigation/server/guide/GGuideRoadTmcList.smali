.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;
.super Ljava/lang/Object;


# static fields
.field public static final GMAX_JOURNEY_POINT_NUM:I = 0x7


# instance fields
.field public nCarDisFromStart:I

.field public nCarIndex:I

.field public nDestDisFromStart:[[I

.field public nNumberOfItem:I

.field public nTotalDis:I

.field public pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III[[II[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nTotalDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarIndex:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarDisFromStart:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nNumberOfItem:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    return-void
.end method
