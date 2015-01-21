.class public Lcom/android/wifidirect/test/WifiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiBroadcastReceiver"


# instance fields
.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private isWifiP2pEnabled:Z

.field private mContext:Landroid/content/Context;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->isWifiP2pEnabled:Z

    return-void
.end method

.method private startOppService(Landroid/content/Context;)V
    .locals 4
    .parameter "mCx"

    .prologue
    .line 126
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "op"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method

.method private stopOppService(Landroid/content/Context;)V
    .locals 2
    .parameter "mCx"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/wifidirect/test/WifiOppService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 48
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v5, "WifiBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v5, :cond_0

    .line 54
    const-string v5, "wifip2p"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 55
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v5, :cond_2

    .line 56
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 57
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v5, :cond_0

    .line 59
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "Failed to set up connection with wifi p2p service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v8, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 66
    :cond_0
    :goto_0
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    const-string v5, "wifi_p2p_state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 71
    .local v3, state:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 73
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->isWifiP2pEnabled:Z

    .line 80
    :goto_1
    iget-boolean v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->isWifiP2pEnabled:Z

    invoke-static {v5}, Lcom/android/wifidirect/test/Constants;->setWifiState(Z)V

    .line 81
    const-string v5, "WifiBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P2P state changed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v3           #state:I
    :cond_1
    :goto_2
    return-void

    .line 63
    :cond_2
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "manager is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .restart local v3       #state:I
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->isWifiP2pEnabled:Z

    .line 78
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->stopOppService(Landroid/content/Context;)V

    goto :goto_1

    .line 82
    .end local v3           #state:I
    :cond_4
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 93
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v5, :cond_5

    .line 94
    new-instance v4, Lcom/android/wifidirect/test/WifiPeersListen;

    invoke-direct {v4}, Lcom/android/wifidirect/test/WifiPeersListen;-><init>()V

    .line 95
    .local v4, wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 97
    .end local v4           #wPeerListen:Lcom/android/wifidirect/test/WifiPeersListen;
    :cond_5
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "WIFI_P2P_PEERS_CHANGED_ACTION changed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 98
    :cond_6
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 99
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 103
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 106
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "network connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->startOppService(Landroid/content/Context;)V

    .line 109
    iget-object v5, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiBroadcastReceiver;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Lcom/android/wifidirect/test/WifiConnectionListen;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiConnectionListen;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_2

    .line 112
    :cond_7
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "network disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-string v5, "WifiBroadcastReceiver"

    const-string v6, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 118
    .local v1, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v5, "WifiBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wDevice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p1}, Lcom/android/wifidirect/test/WifiConnectionListen;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiConnectionListen;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/wifidirect/test/WifiConnectionListen;->SetMyWfdAddr(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
