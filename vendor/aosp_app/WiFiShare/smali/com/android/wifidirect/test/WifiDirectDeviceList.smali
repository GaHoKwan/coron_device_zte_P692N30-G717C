.class public Lcom/android/wifidirect/test/WifiDirectDeviceList;
.super Landroid/preference/PreferenceActivity;
.source "WifiDirectDeviceList.java"


# static fields
.field private static final KEY_WIFI_OHTER:Ljava/lang/String; = "wifi_other"

.field private static final TAG:Ljava/lang/String; = "WifiDirectDeviceList"

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.settings.Settings$WifiP2pSettingsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOtherDevice:Landroid/preference/Preference;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    .line 59
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 64
    new-instance v0, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList$1;-><init>(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private AddOtherDeviceItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 378
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    .line 379
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    const-string v1, "wifi_other"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mOtherDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    return-void
.end method

.method static synthetic access$002(Lcom/android/wifidirect/test/WifiDirectDeviceList;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wifidirect/test/WifiDirectDeviceList;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->updateDevicePref()V

    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/wifidirect/test/WifiDirectDeviceList$2;

    invoke-direct {v2, p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList$2;-><init>(Lcom/android/wifidirect/test/WifiDirectDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 169
    :cond_0
    return-void
.end method

.method private startTransfer(Landroid/net/wifi/p2p/WifiP2pInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "info"
    .parameter "remotedeviceName"
    .parameter "remoteAddr"

    .prologue
    const v5, 0x7f080079

    const/4 v4, 0x0

    .line 261
    invoke-static {p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiTransferMgr;

    move-result-object v1

    .line 262
    .local v1, mOppManager:Lcom/android/wifidirect/test/WifiTransferMgr;
    const/4 v0, 0x0

    .line 263
    .local v0, hostIp:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 265
    const-string v2, "WifiDirectDeviceList"

    const-string v3, "info = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, v5}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 303
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v2, :cond_2

    .line 270
    invoke-static {p0}, Lcom/android/wifidirect/test/WifiConnectionListen;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiConnectionListen;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/wifidirect/test/WifiConnectionListen;->GetClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_3

    .line 286
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 289
    :cond_2
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v2, :cond_3

    .line 290
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v2, "WifiDirectDeviceList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startTransfer GO hostIp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v2, "::1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    const-string v0, "192.168.49.1"

    .line 299
    :cond_3
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiTransferMgr;->SetHostIp(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/wifidirect/test/WifiTransferMgr;->SetDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Lcom/android/wifidirect/test/WifiTransferMgr;->startTransfer()V

    goto :goto_0
.end method

.method private updateDevicePref()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 352
    sget-object v3, Lcom/android/wifidirect/test/Constants;->finalPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 353
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 354
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 362
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 367
    .local v1, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "WifiDirectDeviceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDevicePref$$$$$$$$$$$$$$$$$$$$peer status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/wifidirect/test/WifiP2pPeer;

    invoke-direct {v4, p0, v1}, Lcom/android/wifidirect/test/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 359
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0

    .line 372
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v3, "WifiDirectDeviceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDevicePref$$$$$$$$$$$$$$$$$$$$unconnected device status =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    .end local v1           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    return-void
.end method


# virtual methods
.method public isWifiApEnabled()Z
    .locals 4

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, wifiState:I
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 308
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 311
    const-string v1, "WifiDirectDeviceList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiState is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->addPreferencesFromResource(I)V

    .line 117
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 124
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 126
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v2, :cond_0

    .line 128
    const-string v2, "WifiDirectDeviceList"

    const-string v3, "Failed to set up connection with wifi p2p service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 134
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v1, intent1:Landroid/content/Intent;
    const-class v2, Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "op"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->AddOtherDeviceItem()V

    .line 142
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->updateDevicePref()V

    .line 143
    return-void

    .line 132
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent1:Landroid/content/Intent;
    :cond_1
    const-string v2, "WifiDirectDeviceList"

    const-string v3, "mWifiP2pManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 6
    .parameter "peers"

    .prologue
    const/4 v5, 0x1

    .line 326
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 327
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 329
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 335
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 336
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 339
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 340
    .local v1, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "WifiDirectDeviceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPeersAvailable###########peer status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/wifidirect/test/WifiP2pPeer;

    invoke-direct {v4, p0, v1}, Lcom/android/wifidirect/test/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 332
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mPeersGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0

    .line 345
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v3, "WifiDirectDeviceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPeersAvailable###########unconnected device status =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v1           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 174
    const-string v2, "wifi_other"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiP2pSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->finish()V

    .line 187
    const/4 v2, 0x1

    .line 208
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 190
    :cond_0
    instance-of v2, p2, Lcom/android/wifidirect/test/WifiP2pPeer;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 191
    check-cast v2, Lcom/android/wifidirect/test/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    .line 192
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/wifidirect/test/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_2

    .line 193
    const-string v2, "WifiDirectDeviceList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peerdeviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "WifiDirectDeviceList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 197
    sget-object v2, Lcom/android/wifidirect/test/Constants;->mInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->startTransfer(Landroid/net/wifi/p2p/WifiP2pInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->finish()V

    .line 208
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/wifidirect/test/WifiDeviceUnconnect;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v2, "WifiDirect"

    const-string v3, "WiFi Direct"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "deviceName"

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mSelectedWifiPeer:Lcom/android/wifidirect/test/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDirectDeviceList;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiDirectDeviceList;->startSearch()V

    .line 150
    return-void
.end method

.method public readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 231
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 232
    .local v4, ins:Ljava/io/InputStream;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_0

    .line 235
    const-string v8, "WifiDirectDeviceList"

    const-string v9, "file can not read!! "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-object v7

    .line 239
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 240
    .end local v4           #ins:Ljava/io/InputStream;
    .local v5, ins:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget v9, Lcom/android/wifidirect/test/Constants;->bufferReader:I

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 241
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 242
    const-string v8, "WifiDirectDeviceList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "line is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .line 246
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v8, "WifiDirectDeviceList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error - Here is what I know: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v8

    goto :goto_0

    .line 250
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .line 254
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 252
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .line 255
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 249
    :catchall_0
    move-exception v8

    .line 250
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 254
    :goto_4
    throw v8

    .line 252
    :catch_3
    move-exception v9

    goto :goto_4

    .line 249
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 245
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    goto :goto_2
.end method
