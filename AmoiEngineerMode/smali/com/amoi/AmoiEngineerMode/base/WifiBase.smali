.class public abstract Lcom/amoi/AmoiEngineerMode/base/WifiBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "WifiBase.java"


# static fields
.field protected static final MAX_SCAN_TIME:I = 0xa

.field protected static final MSG_SCAN_WIFI:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "Wifi"


# instance fields
.field protected infoView:Landroid/widget/TextView;

.field private isScanWifi:Z

.field protected listView:Landroid/widget/ListView;

.field protected mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

.field protected mHandler:Landroid/os/Handler;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field protected mScanTimes:I

.field protected mSuccess:Z

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected originalState:Z

.field protected testingView:Landroid/widget/TextView;

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mSuccess:Z

    .line 47
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mScanTimes:I

    .line 51
    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z

    .line 54
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase$1;-><init>(Lcom/amoi/AmoiEngineerMode/base/WifiBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase$2;-><init>(Lcom/amoi/AmoiEngineerMode/base/WifiBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/amoi/AmoiEngineerMode/base/WifiBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/WifiBase;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->addlist(Ljava/util/List;)V

    return-void
.end method

.method private addlist(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 119
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, SSID:Ljava/lang/String;
    const-string v4, "TP-LINK_9229DE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "TP-LINK_8F5D7C"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "AMOI_RD_TEST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    :cond_1
    new-instance v2, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v2, item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-virtual {v4, v2}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->addItem(Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;)V

    goto :goto_0

    .line 128
    .end local v0           #SSID:Ljava/lang/String;
    .end local v2           #item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 129
    .restart local v3       #scanResult:Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0       #SSID:Ljava/lang/String;
    const-string v4, "TP-LINK_9229DE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TP-LINK_8F5D7C"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "AMOI_RD_TEST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    new-instance v2, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .restart local v2       #item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-virtual {v4, v2}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->addItem(Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;)V

    goto :goto_1

    .line 139
    .end local v0           #SSID:Ljava/lang/String;
    .end local v2           #item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    return-void
.end method


# virtual methods
.method protected closeWifi()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->originalState:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 234
    const-string v0, "EngineerMode"

    const-string v1, "Wifi close wifi..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return-void
.end method

.method protected abstract initButton()V
.end method

.method protected initTimerAndTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7d0

    .line 181
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timer:Ljava/util/Timer;

    .line 182
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/WifiBase$3;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase$3;-><init>(Lcom/amoi/AmoiEngineerMode/base/WifiBase;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timerTask:Ljava/util/TimerTask;

    .line 188
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 189
    return-void
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->setContentView(I)V

    .line 153
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->infoView:Landroid/widget/TextView;

    .line 156
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->listView:Landroid/widget/ListView;

    .line 158
    new-instance v0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mAdapter:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    .line 159
    return-void
.end method

.method protected initWifi()V
    .locals 2

    .prologue
    .line 164
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->originalState:Z

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z

    .line 174
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->initTimerAndTimerTask()V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->initView()V

    .line 147
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->initButton()V

    .line 148
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->initWifi()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onDestroy()V

    .line 202
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->stopTimerAndTimerTask()V

    .line 206
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->closeWifi()V

    .line 207
    return-void
.end method

.method protected openWifi()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z

    if-nez v0, :cond_0

    .line 216
    iput-boolean v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->isScanWifi:Z

    .line 217
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 218
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->testingView:Landroid/widget/TextView;

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 223
    const-string v0, "EngineerMode"

    const-string v1, "Wifi start wifi..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract showButton()V
.end method

.method protected stopTimerAndTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 194
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timer:Ljava/util/Timer;

    .line 196
    :cond_0
    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/WifiBase;->timerTask:Ljava/util/TimerTask;

    .line 197
    return-void
.end method
