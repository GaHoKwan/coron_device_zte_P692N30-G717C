.class public Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MnlVerifier"
.end annotation


# instance fields
.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMnlHandler:Landroid/os/Handler;

.field private mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

.field private mStatusListener:Landroid/location/GpsStatus$Listener;

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 361
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    .line 358
    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    .line 359
    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 492
    new-instance v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;

    .line 519
    new-instance v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$2;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$2;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationListener:Landroid/location/LocationListener;

    .line 534
    new-instance v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlHandler:Landroid/os/Handler;

    .line 362
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    .line 363
    const-string v0, "mtk-agps"

    invoke-virtual {p1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 364
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method private sendAgpsExtraCmd(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "CMD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "EXTRA_CMD"

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 464
    return-void
.end method

.method private setGpsMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, extras:Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v2, "Hot Start"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 470
    const-string v1, "rti"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "delete_aiding_data"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 490
    :goto_1
    return-void

    .line 471
    :cond_0
    if-ne p1, v3, :cond_1

    .line 472
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v2, "Warm Start"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 473
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 474
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v2, "Cold Start"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 476
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    const-string v1, "time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    const-string v1, "iono"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    const-string v1, "utc"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 481
    const-string v1, "health"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 482
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v2, "Full Start"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 484
    const-string v1, "all"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v2, "WARNING: unknown reset type"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public controlMnl(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 401
    packed-switch p1, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_OPEN"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_CLOSE"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_START_485"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_START_486"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 415
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_STOP_485"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 418
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_STOP_486"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public enableAutoTestV2(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 449
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR unknown enableAutoTestV2 type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "AUTO_TEST_ON_V2_GEMINI"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 443
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "AUTO_TEST_ON_V2_DT"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "AUTO_TEST_OFF"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAgpsd()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "RESET_AGPSD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 368
    return-void
.end method

.method public startCpAutoTest(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "TC"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "AUTO_TEST_RUN"

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 429
    return-void
.end method

.method public startCpAutoTestV2(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 455
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "TC"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "AUTO_TEST_RUN_V2"

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 457
    return-void
.end method

.method public startEVDOAutoTest(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "TC"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "AUTO_TEST_RUN_EVDO"

    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 435
    return-void
.end method

.method public startNITest(ILcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;)V
    .locals 4
    .parameter "type"
    .parameter "resultListener"

    .prologue
    .line 371
    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    .line 374
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 378
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_NI"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 379
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 381
    return-void
.end method

.method public startSITest(ILcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;)V
    .locals 6
    .parameter "type"
    .parameter "resultListener"

    .prologue
    .line 384
    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    .line 387
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v1, "MNL_TEST_SI"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 392
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 395
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->setGpsMode(I)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 398
    return-void
.end method
