.class Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 495
    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    .line 516
    :cond_0
    return-void

    .line 499
    :cond_1
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v3

    .line 500
    .local v3, status:Landroid/location/GpsStatus;
    invoke-virtual {v3}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    .line 502
    .local v0, gpsSat:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 503
    .local v2, sat:Landroid/location/GpsSatellite;
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v4

    const/high16 v5, 0x43aa

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v4

    const/high16 v5, 0x4258

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 505
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1500(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1600(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 507
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1600(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;->onResult(I)V

    .line 510
    :cond_3
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1700(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v4

    const-string v5, "MNL_TEST_ORIGINAL"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 511
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1700(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v4

    const-string v5, "CLOSE_GPS"

    invoke-interface {v4, v5, v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 512
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1800(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 513
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$1;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1900(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/GpsStatus$Listener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    goto :goto_0
.end method
