.class public Lcom/mediatek/engineermode/wifi/WifiStateListener;
.super Landroid/app/Service;
.source "WifiStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WiFi_wifiStateListener"


# instance fields
.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/mediatek/engineermode/wifi/WifiStateListener$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WifiStateListener$1;-><init>(Lcom/mediatek/engineermode/wifi/WifiStateListener;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WifiStateListener;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, wifiIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WifiStateListener;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WifiStateListener;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
