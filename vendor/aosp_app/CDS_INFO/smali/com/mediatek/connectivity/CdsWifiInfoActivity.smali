.class public Lcom/mediatek/connectivity/CdsWifiInfoActivity;
.super Landroid/app/Activity;
.source "CdsWifiInfoActivity.java"


# static fields
.field private static final INVALID_RSSI:I = -0xc8

.field private static final MAC_ADDRESS_DIGITS:I = 0x6

.field private static final MAC_ADDRESS_ID:I = 0x1d

.field private static final MAX_ADDRESS_VALUE:I = 0xff

.field private static MacAddressRandom:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CDS/WifiInfo"

.field private static final WIFI_SYSTEM_PROPERTY:[Ljava/lang/String;

.field private static isMacAddressGen:Z


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mMacAddBtn:Landroid/widget/Button;

.field private mMacAddrEdit:Landroid/widget/EditText;

.field private mMacAddrLabel:Landroid/widget/TextView;

.field mMacEditButtonHandler:Landroid/view/View$OnClickListener;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostType:I

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mPingTestButton:Landroid/widget/Button;

.field private mRSSI:Landroid/widget/TextView;

.field private mRandomMacAddr:[S

.field private mSSID:Landroid/widget/TextView;

.field private mScanButton:Landroid/widget/Button;

.field mScanButtonHandler:Landroid/view/View$OnClickListener;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mSystemProperties:Landroid/widget/TextView;

.field private mTestMode:Z

.field private mToast:Landroid/widget/Toast;

.field private mUpdateButton:Landroid/widget/Button;

.field mUpdateButtonHandler:Landroid/view/View$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "net.hostname"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "dhcp.wlan0.ipaddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "net.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "net.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dhcp.wlan0.leasetime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dhcp.wlan0.gateway"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dhcp.wlan0.mask"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dhcp.wlan0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dhcp.wlan0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dhcp.wlan0.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dhcp.wlan0.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "init.svc.dhcpcd_wlan0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "wlan.driver.status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "wifi.interface"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dhcp.wlan0.pid"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dhcp.wlan0.server"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dhcp.wlan0.reason"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dhcp.wlan0.result"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mediatek.wlan.ctia"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->WIFI_SYSTEM_PROPERTY:[Ljava/lang/String;

    .line 157
    sput-boolean v3, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->isMacAddressGen:Z

    .line 158
    const-string v0, ""

    sput-object v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->MacAddressRandom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns1:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns2:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostType:I

    .line 178
    new-instance v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$1;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    new-instance v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$3;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$4;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanButtonHandler:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$5;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mUpdateButtonHandler:Landroid/view/View$OnClickListener;

    .line 303
    new-instance v0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$6;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacEditButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->pingHostname()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->httpClientTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostType:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->updatePingState()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->refreshWifiStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->updateMacAddr()V

    return-void
.end method

.method private getMacAddr()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 314
    :try_start_0
    const-string v6, "NvRAMAgent"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 315
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/connectivity/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/connectivity/NvRAMAgent;

    move-result-object v0

    .line 317
    .local v0, agent:Lcom/mediatek/connectivity/NvRAMAgent;
    const/4 v6, 0x6

    new-array v6, v6, [S

    iput-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    .line 319
    iget-boolean v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mTestMode:Z

    if-nez v6, :cond_0

    .line 320
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrLabel:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .end local v0           #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    :goto_0
    return-void

    .line 324
    .restart local v0       #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    sget-boolean v6, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->isMacAddressGen:Z

    if-nez v6, :cond_3

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 328
    .local v4, r:Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 329
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    const/16 v7, 0xff

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v6, v3

    .line 330
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    aget-short v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    aget-short v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/4 v6, 0x5

    if-ge v3, v6, :cond_1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    :cond_2
    const/4 v6, 0x1

    sput-boolean v6, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->isMacAddressGen:Z

    .line 337
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrLabel:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddBtn:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 340
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "string buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->MacAddressRandom:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0           #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v4           #r:Ljava/util/Random;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 348
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    sget-object v7, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->MacAddressRandom:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private final getPingHostName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 648
    const-string v0, "www.google.com"

    .line 650
    .local v0, hostName:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostType:I

    const v2, 0x7f07006b

    if-ne v1, v2, :cond_1

    .line 651
    const-string v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    iget v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostType:I

    const v2, 0x7f07006c

    if-ne v1, v2, :cond_0

    .line 653
    const-string v1, "net.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/mediatek/connectivity/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .end local v0           #summary:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleScanResultsAvailable()V
    .locals 6

    .prologue
    .line 546
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 548
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 549
    .local v2, scanList:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    .line 550
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 551
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 553
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_1

    .line 550
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 557
    :cond_1
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 564
    .end local v0           #i:I
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method private handleSignalChanged(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    .line 534
    const/16 v0, -0xc8

    if-eq p1, v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRSSI:Landroid/widget/TextView;

    const v1, 0x7f050044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2
    .parameter "state"
    .parameter "hasError"
    .parameter "error"

    .prologue
    .line 568
    if-eqz p2, :cond_0

    .line 569
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .parameter "wifiState"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->setWifiStateText(I)V

    .line 543
    return-void
.end method

.method private httpClientTest()V
    .locals 8

    .prologue
    .line 715
    const-string v2, "http://www.google.com"

    .line 716
    .local v2, httpUrl:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 720
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 721
    .local v3, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 722
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pass ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    .line 728
    :goto_0
    const-string v5, "CDS/WifiInfo"

    const-string v6, "start to httpClientTest"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 735
    .end local v3           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 725
    .restart local v3       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail (Code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    .end local v3           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 732
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 733
    const-string v5, "Fail (IOException)"

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private final pingHostname()V
    .locals 7

    .prologue
    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->getPingHostName()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, hostName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 694
    .local v2, p:Ljava/lang/Process;
    const-string v4, "CDS/WifiInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start to pingHostname: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 697
    .local v3, status:I
    if-nez v3, :cond_0

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    .line 703
    :goto_0
    const-string v4, "CDS/WifiInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end to pingHostname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v1           #hostName:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_1
    return-void

    .line 700
    .restart local v1       #hostName:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail Host ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") unreachable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 705
    .end local v1           #hostName:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v4, "Fail (Unknown Host)"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_1

    .line 707
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 708
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail (IOException)"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_1

    .line 709
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail (InterruptedException)"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 666
    :try_start_0
    const-string v1, "8.8.8.8"

    .line 667
    .local v1, ipAddress:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 669
    .local v2, p:Ljava/lang/Process;
    const-string v4, "CDS/WifiInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start to pingIpAddr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 672
    .local v3, status:I
    if-nez v3, :cond_0

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    .line 678
    :goto_0
    const-string v4, "CDS/WifiInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end to pingIpAddr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_1
    return-void

    .line 675
    .restart local v1       #ipAddress:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail IP addr("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") not reachable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 681
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail (IOException)"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_1

    .line 683
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail (InterruptedException)"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private refreshWifiStatus()V
    .locals 8

    .prologue
    const/16 v7, 0x2e

    .line 407
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 409
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v5, "CDS/WifiInfo"

    const-string v6, "refreshWifiStatus is called"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->setWifiStateText(I)V

    .line 411
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mBSSID:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHiddenSSID:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 416
    .local v0, ipAddr:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .local v1, ipBuf:Ljava/lang/StringBuffer;
    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 421
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mIPAddr:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    if-lez v5, :cond_0

    .line 426
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mLinkSpeed:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_0
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMACAddr:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mNetworkId:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-eq v5, v6, :cond_1

    .line 435
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRSSI:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_1
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 441
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSSID:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :goto_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .line 447
    .local v3, supplicantState:Landroid/net/wifi/SupplicantState;
    invoke-direct {p0, v3}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    .line 449
    const-string v5, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns1:Ljava/lang/String;

    .line 450
    const-string v5, "net.dns2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns2:Ljava/lang/String;

    .line 451
    const v5, 0x7f07006b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 452
    .local v2, pingRadioButton:Landroid/widget/RadioButton;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const v5, 0x7f07006c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #pingRadioButton:Landroid/widget/RadioButton;
    check-cast v2, Landroid/widget/RadioButton;

    .line 455
    .restart local v2       #pingRadioButton:Landroid/widget/RadioButton;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mDns2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->getMacAddr()V

    .line 459
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->updateSystemProperties()V

    .line 460
    return-void

    .line 428
    .end local v2           #pingRadioButton:Landroid/widget/RadioButton;
    .end local v3           #supplicantState:Landroid/net/wifi/SupplicantState;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mLinkSpeed:Landroid/widget/TextView;

    const v6, 0x7f050045

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 437
    :cond_1
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRSSI:Landroid/widget/TextView;

    const v6, 0x7f050044

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 443
    :cond_2
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSSID:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .locals 2
    .parameter "supplicantState"

    .prologue
    .line 474
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :goto_0
    return-void

    .line 476
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 480
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 482
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 486
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 487
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 489
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 491
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 494
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const-string v0, "CDS/WifiInfo"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setWifiStateText(I)V
    .locals 3
    .parameter "wifiState"

    .prologue
    .line 504
    packed-switch p1, :pswitch_data_0

    .line 521
    const-string v0, "BAD"

    .line 522
    .local v0, wifiStateString:Ljava/lang/String;
    const-string v1, "CDS/WifiInfo"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanList:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-void

    .line 506
    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f05003f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f050040

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f050043

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateMacAddr()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    .line 355
    const/4 v5, 0x0

    .line 356
    .local v5, i:I
    :try_start_0
    const-string v7, "NvRAMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 357
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/connectivity/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/connectivity/NvRAMAgent;

    move-result-object v0

    .line 360
    .local v0, agent:Lcom/mediatek/connectivity/NvRAMAgent;
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v6, txtBuffer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 362
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v7, v5

    .line 363
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    aget-short v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 366
    :cond_0
    if-eq v5, v10, :cond_1

    .line 367
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    const-string v8, "The format of mac address is not correct"

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    .end local v0           #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v6           #txtBuffer:Ljava/util/StringTokenizer;
    :goto_1
    return-void

    .line 372
    .restart local v0       #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v6       #txtBuffer:Ljava/util/StringTokenizer;
    :cond_1
    const/4 v2, 0x0

    .line 374
    .local v2, buff:[B
    const/16 v7, 0x1d

    :try_start_1
    invoke-interface {v0, v7}, Lcom/mediatek/connectivity/NvRAMAgent;->readFile(I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 379
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_2

    .line 380
    add-int/lit8 v7, v5, 0x4

    :try_start_2
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRandomMacAddr:[S

    aget-short v8, v8, v5

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 379
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 375
    :catch_0
    move-exception v3

    .line 376
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 398
    .end local v0           #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #buff:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #txtBuffer:Ljava/util/StringTokenizer;
    :catch_1
    move-exception v3

    .line 399
    .restart local v3       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 401
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 383
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #agent:Lcom/mediatek/connectivity/NvRAMAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v2       #buff:[B
    .restart local v6       #txtBuffer:Ljava/util/StringTokenizer;
    :cond_2
    const/4 v4, 0x0

    .line 385
    .local v4, flag:I
    const/16 v7, 0x1d

    :try_start_3
    invoke-interface {v0, v7, v2}, Lcom/mediatek/connectivity/NvRAMAgent;->writeFile(I[B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    .line 390
    :goto_4
    if-lez v4, :cond_3

    .line 391
    :try_start_4
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    const-string v8, "Update successfully.\r\nPlease reboot this device"

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 386
    :catch_2
    move-exception v3

    .line 387
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 394
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    const-string v8, "Update failed"

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v7, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f05006c

    .line 584
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 586
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    .line 587
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    .line 588
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    .line 590
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    new-instance v4, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;

    invoke-direct {v4, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    .line 619
    .local v4, updatePingResults:Ljava/lang/Runnable;
    new-instance v3, Lcom/mediatek/connectivity/CdsWifiInfoActivity$8;

    invoke-direct {v3, p0, v0, v4}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$8;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 626
    .local v3, ipAddrThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 628
    new-instance v1, Lcom/mediatek/connectivity/CdsWifiInfoActivity$9;

    invoke-direct {v1, p0, v0, v4}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$9;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 635
    .local v1, hostnameThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 637
    new-instance v2, Lcom/mediatek/connectivity/CdsWifiInfoActivity$10;

    invoke-direct {v2, p0, v0, v4}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$10;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 644
    .local v2, httpClientThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 645
    return-void
.end method

.method private updateSystemProperties()V
    .locals 5

    .prologue
    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->WIFI_SYSTEM_PROPERTY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->WIFI_SYSTEM_PROPERTY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->WIFI_SYSTEM_PROPERTY:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSystemProperties:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 213
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 222
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mUpdateButton:Landroid/widget/Button;

    .line 223
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mUpdateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mUpdateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanButton:Landroid/widget/Button;

    .line 226
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiState:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mNetworkState:Landroid/widget/TextView;

    .line 230
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSupplicantState:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mRSSI:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mBSSID:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSSID:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHiddenSSID:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mIPAddr:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMACAddr:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mNetworkId:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mLinkSpeed:Landroid/widget/TextView;

    .line 239
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mScanList:Landroid/widget/TextView;

    .line 241
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mSystemProperties:Landroid/widget/TextView;

    .line 243
    const v1, 0x7f07006d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrLabel:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddrEdit:Landroid/widget/EditText;

    .line 245
    const v1, 0x7f07006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddBtn:Landroid/widget/Button;

    .line 246
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacAddBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mMacEditButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    .line 249
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;

    .line 250
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    .line 252
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingTestButton:Landroid/widget/Button;

    .line 253
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingTestButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 257
    .local v0, mPingRadioGroup:Landroid/widget/RadioGroup;
    new-instance v1, Lcom/mediatek/connectivity/CdsWifiInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity$2;-><init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 263
    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mTestMode:Z

    .line 265
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mToast:Landroid/widget/Toast;

    .line 266
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->refreshWifiStatus()V

    .line 273
    return-void
.end method
