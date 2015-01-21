.class public Lcom/autonavi/xm/navigation/server/location/GSatellite;
.super Ljava/lang/Object;


# instance fields
.field public nAzimuth:I

.field public nElevation:I

.field public nID:I

.field public nInFix:I

.field public nSNR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nInFix:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nElevation:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nAzimuth:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nSNR:I

    return-void
.end method
