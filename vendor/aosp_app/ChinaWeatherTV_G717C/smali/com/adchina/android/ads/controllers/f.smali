.class final Lcom/adchina/android/ads/controllers/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/BaseController;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/BaseController;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/f;->a:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v6, 0xf

    const-string v1, "LbsThread start"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sput-boolean v0, Lcom/adchina/android/ads/k;->h:Z

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/f;->a:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-static {v1}, Lcom/adchina/android/ads/controllers/BaseController;->b(Lcom/adchina/android/ads/controllers/BaseController;)V

    const-string v1, "LbsThread run"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    new-instance v3, Lcom/adchina/android/ads/s;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/f;->a:Lcom/adchina/android/ads/controllers/BaseController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/BaseController;->L:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/adchina/android/ads/s;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->isEnableLbs()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sput-wide v4, Lcom/adchina/android/ads/k;->j:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sput-wide v4, Lcom/adchina/android/ads/k;->k:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lcom/adchina/android/ads/AdManager;->f:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/f;->a:Lcom/adchina/android/ads/controllers/BaseController;

    invoke-static {v1, v3}, Lcom/adchina/android/ads/controllers/BaseController;->a(Lcom/adchina/android/ads/controllers/BaseController;Lcom/adchina/android/ads/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :try_start_3
    sget v1, Lcom/adchina/android/ads/k;->i:I

    if-ge v1, v6, :cond_4

    const/16 v1, 0xf

    sput v1, Lcom/adchina/android/ads/k;->i:I

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Lbs \u7ebf\u7a0b\u4f11\u7720 "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/adchina/android/ads/k;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u5206\u949f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget v1, Lcom/adchina/android/ads/k;->i:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget v1, Lcom/adchina/android/ads/k;->i:I

    if-ge v1, v6, :cond_7

    const/16 v1, 0xf

    sput v1, Lcom/adchina/android/ads/k;->i:I

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Lbs \u7ebf\u7a0b\u4f11\u7720 "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/adchina/android/ads/k;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u5206\u949f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget v1, Lcom/adchina/android/ads/k;->i:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    sget v1, Lcom/adchina/android/ads/k;->i:I

    if-ge v1, v6, :cond_8

    const/16 v1, 0xf

    sput v1, Lcom/adchina/android/ads/k;->i:I

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lbs \u7ebf\u7a0b\u4f11\u7720 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/adchina/android/ads/k;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5206\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget v1, Lcom/adchina/android/ads/k;->i:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_2
.end method
