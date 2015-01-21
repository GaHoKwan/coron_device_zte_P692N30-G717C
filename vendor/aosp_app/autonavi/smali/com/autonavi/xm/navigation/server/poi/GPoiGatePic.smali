.class public Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;
.super Ljava/lang/Object;


# instance fields
.field public lPicDataSize:S

.field public pPicData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;->lPicDataSize:S

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiGatePic;->pPicData:[B

    return-void
.end method
