.class public Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfItem:S

.field public pGateItem:[Lcom/autonavi/xm/navigation/server/poi/GPoiGateItem;

.field public pGatePic:[Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(S[Lcom/autonavi/xm/navigation/server/poi/GPoiGateItem;[Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;->lNumberOfItem:S

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;->pGateItem:[Lcom/autonavi/xm/navigation/server/poi/GPoiGateItem;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;->pGatePic:[Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;

    return-void
.end method
