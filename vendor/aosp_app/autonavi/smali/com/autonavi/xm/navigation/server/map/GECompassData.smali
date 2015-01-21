.class public Lcom/autonavi/xm/navigation/server/map/GECompassData;
.super Ljava/lang/Object;


# instance fields
.field public nAzimuth:I

.field public nDeviceAttitude:I

.field public nTimestamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nTimestamp:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nDeviceAttitude:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nAzimuth:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nTimestamp:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nDeviceAttitude:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nAzimuth:I

    return-void
.end method
