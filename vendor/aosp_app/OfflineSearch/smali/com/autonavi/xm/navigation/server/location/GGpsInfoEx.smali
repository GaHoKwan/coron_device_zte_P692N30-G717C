.class public Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;
.super Ljava/lang/Object;


# instance fields
.field public cDay:B

.field public cHour:B

.field public cLatitude:B

.field public cLongitude:B

.field public cMinute:B

.field public cMode:B

.field public cMonth:B

.field public cSatelliteNum:B

.field public cSecond:B

.field public cStatus:B

.field public cYear:B

.field public dAltitude:D

.field public dAzimuth:D

.field public dHDOP:D

.field public dSpeed:D

.field public lLat:I

.field public lLon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIBBBBBBBBBBDDDD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLon:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLat:I

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cStatus:B

    iput-byte p4, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLongitude:B

    iput-byte p5, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLatitude:B

    iput-byte p6, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cYear:B

    iput-byte p7, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMonth:B

    iput-byte p8, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cDay:B

    iput-byte p9, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cHour:B

    iput-byte p10, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMinute:B

    iput-byte p11, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSecond:B

    iput-byte p12, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSatelliteNum:B

    iput-wide p13, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dSpeed:D

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAzimuth:D

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dHDOP:D

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAltitude:D

    return-void
.end method
