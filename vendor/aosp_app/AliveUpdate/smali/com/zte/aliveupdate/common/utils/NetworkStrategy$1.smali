.class final enum Lcom/zte/aliveupdate/common/utils/NetworkStrategy$1;
.super Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.source "NetworkStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;-><init>(Ljava/lang/String;ILcom/zte/aliveupdate/common/utils/NetworkStrategy$1;)V

    return-void
.end method


# virtual methods
.method public checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    .locals 5
    .parameter "context"

    .prologue
    .line 22
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 23
    .local v2, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 25
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_1

    .line 26
    :cond_0
    const-string v3, "wifi info is null"

    invoke-virtual {p0, v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$1;->log(Ljava/lang/String;)V

    .line 27
    sget-object v3, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->NO_NETWORK:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 38
    :goto_0
    return-object v3

    .line 30
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, ssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/BussinessHotspot;->isBussinessHotspot(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    sget-object v3, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->FREE_WIFI_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->isAllowBussinessWLan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    sget-object v3, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    goto :goto_0

    .line 38
    :cond_3
    sget-object v3, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_NOT_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    goto :goto_0
.end method
