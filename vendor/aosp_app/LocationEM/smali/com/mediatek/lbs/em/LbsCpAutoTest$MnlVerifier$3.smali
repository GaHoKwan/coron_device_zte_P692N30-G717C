.class Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;
.super Landroid/os/Handler;
.source "LbsCpAutoTest.java"


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
    .line 534
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 536
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 538
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    iget-object v0, v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    const-string v1, "handleMessage timeout"

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1600(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mMnlResultListener:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1600(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;->onResult(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1700(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    const-string v1, "MNL_TEST_ORIGINAL"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 544
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1700(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Lcom/mediatek/common/agps/MtkAgpsManager;

    move-result-object v0

    const-string v1, "CLOSE_GPS"

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 545
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1800(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1400(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$3;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->mStatusListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->access$1900(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
