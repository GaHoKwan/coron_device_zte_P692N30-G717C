.class public Lcom/autonavi/xm/navigation/server/location/GGpsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public Reserved:B

.field public date:Lcom/autonavi/xm/navigation/server/GDate;

.field public nAltitude:I

.field public nAzimuth:I

.field public nMode:B

.field public nNumberOfSatellite:B

.field public nSpeed:I

.field public nValid:B

.field public time:Lcom/autonavi/xm/navigation/server/GTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;BBBBIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nValid:B

    iput-byte p4, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nNumberOfSatellite:B

    iput-byte p5, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nMode:B

    iput-byte p6, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->Reserved:B

    iput p7, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nSpeed:I

    iput p8, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nAzimuth:I

    iput p9, p0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nAltitude:I

    return-void
.end method
