.class Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CdsWifiInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsWifiInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleWifiStateChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$000(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleScanResultsAvailable()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$200(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    const-string v2, "supplicantError"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supplicantError"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    invoke-static {v1, v0, v2, v3}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    const-string v1, "newRssi"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleSignalChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$400(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)V

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "CDS/WifiInfo"

    const-string v1, "Received an unknown Wifi Intent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
