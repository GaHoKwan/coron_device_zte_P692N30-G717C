.class public Lcom/autonavi/xm/navigation/engine/GDBL_Location;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final EXTRA_SATELLITES:Ljava/lang/String; = "satellites"

.field private static final GPS_AVAILABLE_THRESHOLD_MILLIS:I = 0x1393

.field private static final NOTIFY_UPDATE_LOCATION_INTERVAL:I = 0x101

.field private static final UPDATE_LOCATION_MIN_INTERVAL:I = 0x10f

.field private static final UPDATE_MAP_DATA_INTERVAL:I = 0xef

.field private static final WHAT_ADD_GPS_STATUS_LISTENER:I = 0x1

.field private static final WHAT_UPDATE_LOCATION:I = 0x2

.field private static mGDBL_Location:Lcom/autonavi/xm/navigation/engine/GDBL_Location;


# instance fields
.field private gpsLocationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/GregorianCalendar;

.field private mGpsInfoEx:Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

.field private mGpsStatus:Landroid/location/GpsStatus;

.field private mIsLocationUpdating:Z

.field private mIsStartRequested:Z

.field private mIsStarted:Z

.field private mLastLocationTime:J

.field private mLocManager:Landroid/location/LocationManager;

.field private mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

.field private mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

.field private mLocationStatus:I

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStarted:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStartRequested:Z

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLastLocationTime:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocation()V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateMidGpsInfo(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateMidGpsInfo(Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocationInfo()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Location;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGDBL_Location:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGDBL_Location:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGDBL_Location:Lcom/autonavi/xm/navigation/engine/GDBL_Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setLocationStatus(I)V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationStatus status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_LocResetGpsInfo()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocation()V

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->stopLocationUpdating()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->startLocationUpdating()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startLocationUpdating()V
    .locals 2

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private stopLocationUpdating()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private toGpsInfo(Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;Landroid/location/Location;I)V
    .locals 6

    const/4 v5, 0x2

    const-wide v3, 0x412e848000000000L

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "satellites"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLon:I

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLat:I

    if-ne p3, v5, :cond_4

    const/16 v1, 0x41

    :goto_1
    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cStatus:B

    const/16 v1, 0x45

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLongitude:B

    const/16 v1, 0x4e

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLatitude:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x7d0

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cYear:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMonth:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cDay:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cHour:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMinute:B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mCalendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSecond:B

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSatelliteNum:B

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v1, 0x40666666

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dSpeed:D

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAzimuth:D

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAltitude:D

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x42c7cccd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dHDOP:D

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x56

    goto/16 :goto_1
.end method

.method private updateLocation()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateLocationInfo()V
    .locals 4

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;

    const-string v2, "UPDATE_GPS_LOCATION"

    new-instance v3, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;

    invoke-direct {v3, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/util/Locker;->lock(Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V

    goto :goto_0
.end method

.method private updateMidGpsInfo(Landroid/location/Location;)V
    .locals 3

    const/16 v2, 0x1000

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsInfoEx:Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsInfoEx:Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsInfoEx:Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    invoke-direct {p0, v0, p1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->toGpsInfo(Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;Landroid/location/Location;I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsInfoEx:Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetGpsInfo(Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->isGPSLogRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [B

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->GDBL_GetLocLogString([BI)I

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Global;->LOG_GPS_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->writeLogo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DispatchGps(J)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    return-void
.end method

.method private updateMidGpsInfo(Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    invoke-interface {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStarted:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->stopLocationUpdating()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iput-boolean v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStarted:Z

    iput-boolean v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z

    sput-object v2, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGDBL_Location:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->destroyInstance()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public GDBL_EnableO2(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetGPSInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetGpsInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetLocLogString([BI)I
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetLocLogString([BI)I

    move-result v0

    return v0
.end method

.method public GDBL_GetSatelliteInfo([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 9

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsStatus:Landroid/location/GpsStatus;

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/location/GpsSatellite;

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GSatellite;

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v1

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navigation/server/location/GSatellite;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/autonavi/xm/navigation/server/location/GSatellite;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;

    invoke-direct {v2, v0, v1}, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;-><init>(I[Lcom/autonavi/xm/navigation/server/location/GSatellite;)V

    aput-object v2, p1, v6

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetGyroData([Lcom/autonavi/xm/navigation/server/location/GGyroData;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetLocData(Lcom/autonavi/xm/navigation/server/location/GLocDataType;[Ljava/lang/Object;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetLocInfo(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetLocInfo(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetPulseData([Lcom/autonavi/xm/navigation/server/location/GPulseData;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method Startup(Landroid/app/Application;Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xef

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GDBL_Location , Startup mLocManager! mLocManager is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStarted:Z

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->getInstance()Lcom/autonavi/xm/util/Locker;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public onGpsStatusChanged(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->setLocationStatus(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->setLocationStatus(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsStatus:Landroid/location/GpsStatus;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsStatus:Landroid/location/GpsStatus;

    :goto_1
    iget-wide v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLastLocationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLastLocationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1393

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationStatus:I

    if-eq v1, v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {p0, v1, v0, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLastLocationTime:J

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocationInfo()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->setLocationStatus(I)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->setLocationStatus(I)V

    return-void
.end method

.method public startRequest()V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStartRequested:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GDBL_Location"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-direct {v0, p0, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startRequest,mLocManager is null, need init first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x10f

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    invoke-virtual {v0, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v7, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsStartRequested:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
