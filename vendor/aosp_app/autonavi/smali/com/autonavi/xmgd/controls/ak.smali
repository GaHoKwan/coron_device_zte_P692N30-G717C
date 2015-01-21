.class public Lcom/autonavi/xmgd/controls/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/autonavi/xmgd/utility/Timer$ITimerListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:F

.field private d:Landroid/hardware/SensorManager;

.field private e:Lcom/autonavi/xmgd/utility/Timer;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/hardware/SensorEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/autonavi/xmgd/controls/ak;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/controls/ak;->c:F

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ak;->a:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->d:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    iget v1, p0, Lcom/autonavi/xmgd/controls/ak;->b:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, p0}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->e:Lcom/autonavi/xmgd/utility/Timer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(F)V
    .locals 6

    const/16 v2, 0xb4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->a:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    new-instance v2, Lcom/autonavi/xm/navigation/server/map/GECompassData;

    invoke-direct {v2}, Lcom/autonavi/xm/navigation/server/map/GECompassData;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nTimestamp:I

    iput v1, v2, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nDeviceAttitude:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    iput v0, v2, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nAzimuth:I

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;

    const-string v3, "UPDATE_SENSOR_INFO"

    new-instance v4, Lcom/autonavi/xmgd/controls/al;

    invoke-direct {v4, p0, v2}, Lcom/autonavi/xmgd/controls/al;-><init>(Lcom/autonavi/xmgd/controls/ak;Lcom/autonavi/xm/navigation/server/map/GECompassData;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/autonavi/xm/util/Locker;->lock(Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    move v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    move v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/ak;->d:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->e:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->start()V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[SensorObject] start"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->e:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/controls/ak;->a(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/controls/ak;->a(Landroid/hardware/SensorEvent;)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[SensorObject]stop"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    return-void
.end method

.method public onTimer(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/autonavi/xmgd/controls/ak;->c:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4040

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iput v0, p0, Lcom/autonavi/xmgd/controls/ak;->c:F

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/controls/ak;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ak;->g:Landroid/hardware/SensorEvent;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/controls/ak;->a(Landroid/hardware/SensorEvent;)V

    :cond_1
    return-void
.end method
