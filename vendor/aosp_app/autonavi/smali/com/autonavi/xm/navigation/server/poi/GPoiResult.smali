.class public Lcom/autonavi/xm/navigation/server/poi/GPoiResult;
.super Ljava/lang/Object;


# instance fields
.field public Reserved:S

.field public pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

.field public sIndex:S

.field public sNumberOfItemGet:S

.field public sNumberOfTotalItem:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSSS[Lcom/autonavi/xm/navigation/server/poi/GPoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->sNumberOfTotalItem:S

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->sIndex:S

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->sNumberOfItemGet:S

    iput-short p4, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->Reserved:S

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    return-void
.end method
