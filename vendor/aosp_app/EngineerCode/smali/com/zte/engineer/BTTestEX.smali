.class public Lcom/zte/engineer/BTTestEX;
.super Lcom/zte/engineer/ShowSimpleInfo;
.source "BTTestEX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/BTTestEX$WifiCipherType;
    }
.end annotation


# static fields
.field private static final CONNECT_WIFI_USED_TIME:I = 0x3

.field private static final MSG_PING_GATEWAY:I = 0x3002

.field private static final MSG_UPDATE_UI:I = 0x3001

.field private static final TAG:Ljava/lang/String; = "Emode.BTTestEX"

.field private static final TESTNAME:Ljava/lang/String; = "BTTest"


# instance fields
.field private accessTime:I

.field private connectWIFITime:I

.field private connectionState:Ljava/lang/String;

.field connectpot:I

.field private detailMessages:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private errorCount:I

.field private isScanSuccess:Z

.field private isWiFiConnectionOk:Z

.field lastpotno:I

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtAddress:Ljava/lang/String;

.field private mBtState:Ljava/lang/String;

.field private mBtnOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOrgBtState:Z

.field private mOrgWifiState:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadExitCheck:Ljava/lang/Thread;

.field private mWifiAddress:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Ljava/lang/String;

.field private networkInfo:Landroid/net/NetworkInfo;

.field potno:I

.field private pwd:Ljava/lang/String;

.field randomno:Ljava/lang/String;

.field private scanResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private verifyType:Ljava/lang/String;

.field private wcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/zte/engineer/ShowSimpleInfo;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    .line 38
    iput-boolean v2, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    .line 39
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->scanResultList:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->wcList:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->mBtnOk:Landroid/widget/Button;

    .line 49
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->editor:Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v0, "......"

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;

    .line 56
    const-string v0, "UnKnown"

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    .line 58
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->connectWIFITime:I

    .line 59
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->accessTime:I

    .line 60
    iput-boolean v2, p0, Lcom/zte/engineer/BTTestEX;->isScanSuccess:Z

    .line 61
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->errorCount:I

    .line 62
    iput-boolean v2, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    .line 63
    iput-object v1, p0, Lcom/zte/engineer/BTTestEX;->networkInfo:Landroid/net/NetworkInfo;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    .line 67
    const-string v0, "123456789"

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->pwd:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    .line 73
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->lastpotno:I

    .line 74
    iput v2, p0, Lcom/zte/engineer/BTTestEX;->connectpot:I

    .line 278
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/engineer/BTTestEX$1;

    invoke-direct {v1, p0}, Lcom/zte/engineer/BTTestEX$1;-><init>(Lcom/zte/engineer/BTTestEX;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mThreadExitCheck:Ljava/lang/Thread;

    .line 327
    new-instance v0, Lcom/zte/engineer/BTTestEX$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BTTestEX$2;-><init>(Lcom/zte/engineer/BTTestEX;)V

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    new-instance v0, Lcom/zte/engineer/BTTestEX$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BTTestEX$3;-><init>(Lcom/zte/engineer/BTTestEX;)V

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/BTTestEX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/BTTestEX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/zte/engineer/BTTestEX;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/engineer/BTTestEX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/engineer/BTTestEX;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/engineer/BTTestEX;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/engineer/BTTestEX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->isScanSuccess:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/engineer/BTTestEX;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/engineer/BTTestEX;->isScanSuccess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/zte/engineer/BTTestEX;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/engineer/BTTestEX;->errorCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/zte/engineer/BTTestEX;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/zte/engineer/BTTestEX;->errorCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/zte/engineer/BTTestEX;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/engineer/BTTestEX;->errorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/engineer/BTTestEX;->errorCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1684(Lcom/zte/engineer/BTTestEX;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/engineer/BTTestEX;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/engineer/BTTestEX;->connectWIFITime:I

    return v0
.end method

.method static synthetic access$1702(Lcom/zte/engineer/BTTestEX;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/zte/engineer/BTTestEX;->connectWIFITime:I

    return p1
.end method

.method static synthetic access$1712(Lcom/zte/engineer/BTTestEX;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iget v0, p0, Lcom/zte/engineer/BTTestEX;->connectWIFITime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/engineer/BTTestEX;->connectWIFITime:I

    return v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/BTTestEX;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/BTTestEX;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/engineer/BTTestEX;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/engineer/BTTestEX;->updateAddress()V

    return-void
.end method

.method static synthetic access$702(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/zte/engineer/BTTestEX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/engineer/BTTestEX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    return v0
.end method

.method private createWifiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/zte/engineer/BTTestEX$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .parameter "SSID"
    .parameter "Password"
    .parameter "Type"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 465
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 466
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 467
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 468
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 469
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 472
    sget-object v1, Lcom/zte/engineer/BTTestEX$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/zte/engineer/BTTestEX$WifiCipherType;

    if-ne p3, v1, :cond_0

    .line 473
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    .line 474
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 475
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 503
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 476
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    sget-object v1, Lcom/zte/engineer/BTTestEX$WifiCipherType;->WIFICIPHER_WEP:Lcom/zte/engineer/BTTestEX$WifiCipherType;

    if-ne p3, v1, :cond_1

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 478
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 479
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 480
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 481
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 482
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 483
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 484
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 485
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 486
    :cond_1
    sget-object v1, Lcom/zte/engineer/BTTestEX$WifiCipherType;->WIFICIPHER_WPA:Lcom/zte/engineer/BTTestEX$WifiCipherType;

    if-ne p3, v1, :cond_2

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 488
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 489
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 490
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 491
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 492
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 493
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 494
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 495
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 496
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 497
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 498
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 499
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    .line 501
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private handleScanResultsAvailable()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    .line 407
    const-string v5, "Emode.BTTestEX"

    const-string v6, ">>handleScanResultsAvailable ........"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v5, 0x0

    iput v5, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    .line 410
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->scanResultList:Ljava/util/List;

    .line 411
    const/4 v4, 0x0

    .line 412
    .local v4, wc:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->scanResultList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 413
    const-string v5, "Emode.BTTestEX"

    const-string v6, "null == scanResultList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->scanResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 418
    .local v3, srTmp:Landroid/net/wifi/ScanResult;
    const-string v5, "Emode.BTTestEX"

    const-string v6, "scanResultList for check pots"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    iget v5, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    goto :goto_1

    .line 424
    .end local v3           #srTmp:Landroid/net/wifi/ScanResult;
    :cond_2
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "potno:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v5, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    if-nez v5, :cond_3

    .line 427
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 430
    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 432
    .local v1, ran:Ljava/util/Random;
    iget v5, p0, Lcom/zte/engineer/BTTestEX;->connectpot:I

    if-nez v5, :cond_6

    .line 433
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    rem-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    .line 434
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/zte/engineer/BTTestEX;->lastpotno:I

    .line 440
    :goto_2
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "randomno"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v5, "ro.product.name"

    const-string v6, "P692N60"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    .line 443
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiSSID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->scanResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 447
    .restart local v3       #srTmp:Landroid/net/wifi/ScanResult;
    const-string v5, "Emode.BTTestEX"

    const-string v6, "scanResultList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 449
    const/4 v2, -0x1

    .line 450
    .local v2, resId:I
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->pwd:Ljava/lang/String;

    sget-object v7, Lcom/zte/engineer/BTTestEX$WifiCipherType;->WIFICIPHER_WPA:Lcom/zte/engineer/BTTestEX$WifiCipherType;

    invoke-direct {p0, v5, v6, v7}, Lcom/zte/engineer/BTTestEX;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/zte/engineer/BTTestEX$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 452
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-eq v5, v2, :cond_4

    .line 453
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resId = ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 460
    .end local v2           #resId:I
    .end local v3           #srTmp:Landroid/net/wifi/ScanResult;
    :cond_5
    const-string v5, "Emode.BTTestEX"

    const-string v6, "<<handleScanResultsAvailable ......."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_6
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/zte/engineer/BTTestEX;->potno:I

    rem-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    .line 438
    iget v5, p0, Lcom/zte/engineer/BTTestEX;->lastpotno:I

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->randomno:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_6

    goto/16 :goto_2
.end method

.method private tryGetBtAddress()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_4

    .line 194
    const-string v5, "Emode.BTTestEX"

    const-string v6, "No BT detected!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const v5, 0x7f0600fe

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    .line 208
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_5

    .line 210
    const-string v5, "Emode.BTTestEX"

    const-string v6, "No Wifi detected!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const v5, 0x7f0600fd

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    .line 216
    :goto_1
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOrgBtState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOrgWifiState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_6

    :cond_1
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_6

    .line 220
    :cond_2
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    :cond_3
    :goto_2
    return-void

    .line 198
    :cond_4
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    .line 201
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    if-eqz v5, :cond_0

    .line 202
    const v5, 0x7f0600f8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    .line 203
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    .line 204
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :cond_5
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    goto/16 :goto_1

    .line 224
    :cond_6
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_7

    .line 225
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 226
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    :cond_7
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_8

    .line 230
    const-string v5, "Emode.BTTestEX"

    const-string v6, "-------isWiFiConnectionOk == false----addAction---"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    :cond_8
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_b

    .line 240
    :cond_9
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    if-nez v5, :cond_b

    .line 241
    :cond_a
    const-string v5, "Emode.BTTestEX"

    const-string v6, "-------registerReceiver(mReceiver, intentFilter)----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    :cond_b
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    if-eqz v5, :cond_e

    .line 247
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 248
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v2, ""

    .line 249
    .local v2, mSSID:Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 250
    const v5, 0x7f0600fc

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    .line 251
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    .line 253
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_c
    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    if-eqz v5, :cond_d

    .line 258
    if-eqz v2, :cond_3

    const-string v5, "wifiSSID"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 259
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 260
    .local v3, msg:Landroid/os/Message;
    const/16 v5, 0x3002

    iput v5, v3, Landroid/os/Message;->what:I

    .line 261
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 265
    .end local v3           #msg:Landroid/os/Message;
    :cond_d
    :try_start_0
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 267
    const-string v5, "Emode.BTTestEX"

    const-string v6, "startScan "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    const-string v5, "Emode.BTTestEX"

    const-string v6, "startScan e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mSSID:Ljava/lang/String;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_e
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2
.end method

.method private updateAddress()V
    .locals 8

    .prologue
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v3, info:Ljava/lang/StringBuilder;
    const v5, 0x7f0600f3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, btTitle:Ljava/lang/String;
    const v5, 0x7f0600f4

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, wifiTitle:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f06010f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->detailMessages:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddress: info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const v5, 0x7f0600f5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    .line 119
    const v5, 0x7f0600f9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    .local v0, bBtAddrInvalid:Z
    const v5, 0x7f0600fb

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    .local v1, bWifiAddrInvalid:Z
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddress: mBtAddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v5, "Emode.BTTestEX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddress: wifiaddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 128
    iget-object v5, p0, Lcom/zte/engineer/BTTestEX;->mBtnOk:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method addInfoItems()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 156
    const v3, 0x7f06010a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->connectionState:Ljava/lang/String;

    .line 158
    const v3, 0x7f0600f7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    .line 159
    const v3, 0x7f0600f9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    .line 161
    const v3, 0x7f0600fa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    .line 162
    const v3, 0x7f0600fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BTTestEX;->mWifiAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const v3, 0x7f0600f5

    invoke-virtual {p0, v3, v0}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 171
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 173
    iget-object v3, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 174
    .local v2, mwifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, connectSSID:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    .line 177
    const-string v3, "Emode.BTTestEX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------isWiFiConnectionOk-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/zte/engineer/BTTestEX;->isWiFiConnectionOk:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const v3, 0x7f0600cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/engineer/ShowSimpleInfo;->showMidBtn(Ljava/lang/String;)V

    .line 181
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/zte/engineer/BTTestEX;->mBtnOk:Landroid/widget/Button;

    .line 182
    iget-object v3, p0, Lcom/zte/engineer/BTTestEX;->mBtnOk:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    invoke-direct {p0}, Lcom/zte/engineer/BTTestEX;->tryGetBtAddress()V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->mOrgBtState:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/zte/engineer/BTTestEX;->mOrgWifiState:Z

    if-ne v0, v1, :cond_3

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mThreadExitCheck:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mThreadExitCheck:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mThreadExitCheck:Ljava/lang/Thread;

    .line 150
    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 81
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const v0, 0x7f0600fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    .line 97
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/zte/engineer/BTTestEX;->updateAddress()V

    .line 98
    const-string v0, "ro.product.name"

    const-string v1, "P692N60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->wifiSSID:Ljava/lang/String;

    .line 99
    return-void

    .line 85
    :cond_2
    const v0, 0x7f0600f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mBtState:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_3
    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/BTTestEX;->mWifiState:Ljava/lang/String;

    goto :goto_1
.end method
