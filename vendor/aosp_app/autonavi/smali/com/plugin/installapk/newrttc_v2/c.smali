.class public Lcom/plugin/installapk/newrttc_v2/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Lcom/autonavi/trafficradar/TrafficRadar;

.field private b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

.field private c:Landroid/location/LocationManager;

.field private d:Landroid/location/GpsStatus;

.field private e:I

.field private f:J

.field private g:Z

.field private h:D

.field private i:D

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/autonavi/trafficradar/TrafficRadar;Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->f:J

    iput-boolean v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    iput-wide v3, p0, Lcom/plugin/installapk/newrttc_v2/c;->h:D

    iput-wide v3, p0, Lcom/plugin/installapk/newrttc_v2/c;->i:D

    iput-boolean v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/plugin/installapk/newrttc_v2/d;-><init>(Lcom/plugin/installapk/newrttc_v2/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->k:Landroid/os/Handler;

    iput-object p2, p0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/c;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    return-void
.end method

.method static synthetic a(Lcom/plugin/installapk/newrttc_v2/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    const-string v1, "[startGps]  "

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    :try_start_0
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setIfManualGet]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    return-void
.end method

.method public b()V
    .locals 4

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startCount]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    return-void
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
    iput v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->e:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/plugin/installapk/newrttc_v2/c;->e:I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->d:Landroid/location/GpsStatus;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->d:Landroid/location/GpsStatus;

    :goto_1
    iget-wide v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/plugin/installapk/newrttc_v2/c;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1393

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    iget v1, p0, Lcom/plugin/installapk/newrttc_v2/c;->e:I

    if-eq v1, v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {p0, v1, v0, v6}, Lcom/plugin/installapk/newrttc_v2/c;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    iput v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->e:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->c:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/plugin/installapk/newrttc_v2/c;->d:Landroid/location/GpsStatus;

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
    .locals 18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->f:J

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400ccccccccccccdL

    mul-double v7, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->a:Lcom/autonavi/trafficradar/TrafficRadar;

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v9

    float-to-double v9, v9

    const/4 v11, 0x0

    aget-object v11, v13, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    aget-object v12, v13, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    aget-object v14, v16, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    aget-object v15, v16, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v1 .. v16}, Lcom/autonavi/trafficradar/TrafficRadar;->setGPSInfor(IDDDDIIIIII)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/plugin/installapk/newrttc_v2/k;->a(DDDD)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/k;->a()Lcom/plugin/installapk/newrttc_v2/k;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v2}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v3}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a()V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_newRttc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LocationService] onProviderDisabled=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isInOneMin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/k;->a()Lcom/plugin/installapk/newrttc_v2/k;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v2}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/plugin/installapk/newrttc_v2/c;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->g:Z

    sget-boolean v0, Lcom/plugin/installapk/newrttc_v2/k;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "autonavi_newRttc"

    const-string v1, "[LocationService] onProviderDisabled start getRealTrafficAround"

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/c;->b:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a()V

    invoke-static {}, Lcom/plugin/installapk/newrttc_v2/e;->a()Lcom/plugin/installapk/newrttc_v2/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/plugin/installapk/newrttc_v2/c;->d()V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
