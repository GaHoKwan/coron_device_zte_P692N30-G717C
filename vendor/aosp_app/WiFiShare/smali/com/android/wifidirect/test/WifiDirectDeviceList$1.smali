.class Lcom/android/wifidirect/test/WifiDirectDeviceList$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirectDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiDirectDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$002(Lcom/android/wifidirect/test/WifiDirectDeviceList;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    const-string v3, "WifiDirectDeviceList"

    const-string v4, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 79
    new-instance v2, Lcom/android/wifidirect/test/WifiPeersListen;

    invoke-direct {v2}, Lcom/android/wifidirect/test/WifiPeersListen;-><init>()V

    .line 80
    .local v2, wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$200(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 82
    .end local v2           #wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    :cond_2
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #calls: Lcom/android/wifidirect/test/WifiDirectDeviceList;->updateDevicePref()V
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$300(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V

    goto :goto_0

    .line 86
    :cond_3
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    const-string v3, "WifiDirectDeviceList"

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 90
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v2, Lcom/android/wifidirect/test/WifiPeersListen;

    invoke-direct {v2}, Lcom/android/wifidirect/test/WifiPeersListen;-><init>()V

    .line 92
    .restart local v2       #wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$200(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 94
    .end local v2           #wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    const-string v3, "WifiDirectDeviceList"

    const-string v4, "network connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #getter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$200(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-static {p1}, Lcom/android/wifidirect/test/WifiConnectionListen;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiConnectionListen;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v3, "WifiDirectDeviceList"

    const-string v4, "network disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/wifidirect/test/WifiDirectDeviceList;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$002(Lcom/android/wifidirect/test/WifiDirectDeviceList;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 106
    const-string v3, "WifiDirectDeviceList"

    const-string v4, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;->this$0:Lcom/android/wifidirect/test/WifiDirectDeviceList;

    #calls: Lcom/android/wifidirect/test/WifiDirectDeviceList;->updateDevicePref()V
    invoke-static {v3}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->access$300(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V

    goto/16 :goto_0
.end method
