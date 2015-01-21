.class public final Lzte/com/cn/driverMode/utils/DMLocationManager;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lzte/com/cn/driverMode/service/DMApplication;

.field protected c:Landroid/os/Handler;

.field protected d:Landroid/location/LocationManager;

.field protected e:Lcom/amap/api/location/b;

.field protected f:Ljava/lang/String;

.field protected g:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

.field protected h:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

.field protected i:Lzte/com/cn/driverMode/utils/f;

.field protected j:Lzte/com/cn/driverMode/utils/e;

.field protected k:Lzte/com/cn/driverMode/utils/d;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMApplication;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    iput-object p1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->b:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {p1}, Lzte/com/cn/driverMode/service/DMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .locals 7

    const/4 v2, 0x0

    const-string v0, "DMLocationManager"

    const-string v1, "isSetDefaultLoc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/utils/d;

    invoke-direct {v0}, Lzte/com/cn/driverMode/utils/d;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->k:Lzte/com/cn/driverMode/utils/d;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->b:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/drivemode_res/config/longlat.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DMLocationManager"

    const-string v1, "isSetDefaultLoc: file is not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/drivemode_res/config/longlat.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, ""

    const-string v0, ""

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->k:Lzte/com/cn/driverMode/utils/d;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lzte/com/cn/driverMode/utils/d;->b:D

    iget-object v3, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->k:Lzte/com/cn/driverMode/utils/d;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lzte/com/cn/driverMode/utils/d;->c:D

    const-string v3, "DMLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSetDefaultLoc(true):longitude="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", longitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v3, "DMLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSetDefaultLoc(false):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "Loc_hf"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    const v1, 0x7f08039d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;-><init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->g:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->g:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    const v1, 0x7f08039e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;-><init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V

    iput-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->h:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->h:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Loc_gg"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DMLocationManager"

    const-string v1, "initGoogle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMLocationManager"

    const-string v1, "initGoogle():isSetDefaultLoc()...true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    new-instance v0, Lzte/com/cn/driverMode/utils/f;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/utils/f;-><init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->i:Lzte/com/cn/driverMode/utils/f;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LocationLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DMLocationManagerlongitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LocationLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DMLocationManagerlatitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->i:Lzte/com/cn/driverMode/utils/f;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->i:Lzte/com/cn/driverMode/utils/f;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DMLocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v0, "DMLocationManager"

    const-string v1, "mLocation=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "DMLocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "Loc_amap"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMLocationManager"

    const-string v1, "initAmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DMLocationManager"

    const-string v1, "initAmap():isSetDefaultLoc()...true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/b;->a(Landroid/content/Context;)Lcom/amap/api/location/b;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    new-instance v0, Lzte/com/cn/driverMode/utils/e;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/utils/e;-><init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->j:Lzte/com/cn/driverMode/utils/e;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b;->a(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LocationLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DMLocationManagerlongitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LocationLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DMLocationManagerlatitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_2
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    const-string v1, "gps"

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->j:Lzte/com/cn/driverMode/utils/e;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/b;->a(Ljava/lang/String;Lcom/amap/api/location/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    :try_start_3
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    const-string v1, "lbs"

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->j:Lzte/com/cn/driverMode/utils/e;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/b;->a(Ljava/lang/String;Lcom/amap/api/location/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "DMLocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "DMLocationManager"

    const-string v1, "mLocation=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "DMLocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected final a(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    const-string v0, "Loc_hf"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMLocationManager"

    const-string v1, " locateHuafeng"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    const v1, 0x7f08039c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Loc_gg"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Loc_amap"

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->c()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 7

    const/16 v6, 0x4005

    const-string v0, "DMLocationManager"

    const-string v1, " locateGoogle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMLocationManager"

    const-string v1, "locateGoogle():isSetDefaultLoc()...true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->k:Lzte/com/cn/driverMode/utils/d;

    invoke-virtual {p0, v6, v0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->a(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lzte/com/cn/driverMode/utils/d;

    invoke-direct {v0}, Lzte/com/cn/driverMode/utils/d;-><init>()V

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v2, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v2, "longitude"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "speed"

    const-string v5, "0.0"

    invoke-virtual {v1, v4, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DMLocationManager"

    const-string v5, " EVENT_LOCATION_OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lzte/com/cn/driverMode/utils/d;->b:D

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lzte/com/cn/driverMode/utils/d;->c:D

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/utils/d;->d:F

    invoke-virtual {p0, v6, v0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "DMLocationManager"

    const-string v1, " EVENT_LOCATION_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4006

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/utils/DMLocationManager;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->g:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->g:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->h:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->h:Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->i:Lzte/com/cn/driverMode/utils/f;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->e:Lcom/amap/api/location/b;

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager;->j:Lzte/com/cn/driverMode/utils/e;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/a;)V

    :cond_3
    return-void
.end method
