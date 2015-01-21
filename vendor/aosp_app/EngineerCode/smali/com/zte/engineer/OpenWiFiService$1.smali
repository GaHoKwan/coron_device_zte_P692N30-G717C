.class Lcom/zte/engineer/OpenWiFiService$1;
.super Landroid/content/BroadcastReceiver;
.source "OpenWiFiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/OpenWiFiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/OpenWiFiService;


# direct methods
.method constructor <init>(Lcom/zte/engineer/OpenWiFiService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/engineer/OpenWiFiService$1;->this$0:Lcom/zte/engineer/OpenWiFiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 43
    .local v1, mSupplicantConnection:Z
    const-string v2, "OpenWiFiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSupplicantConnection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/OpenWiFiService$1;->this$0:Lcom/zte/engineer/OpenWiFiService;

    #getter for: Lcom/zte/engineer/OpenWiFiService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/zte/engineer/OpenWiFiService;->access$000(Lcom/zte/engineer/OpenWiFiService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 49
    const-string v2, "OpenWiFiService"

    const-string v3, "startScan "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1           #mSupplicantConnection:Z
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "OpenWiFiService"

    const-string v3, "handleScanResultsAvailable ........"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/zte/engineer/OpenWiFiService$1;->this$0:Lcom/zte/engineer/OpenWiFiService;

    #calls: Lcom/zte/engineer/OpenWiFiService;->handleScanResultsAvailable()V
    invoke-static {v2}, Lcom/zte/engineer/OpenWiFiService;->access$100(Lcom/zte/engineer/OpenWiFiService;)V

    .line 76
    :cond_1
    return-void

    .line 50
    .restart local v1       #mSupplicantConnection:Z
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    const-string v2, "OpenWiFiService"

    const-string v3, "startScan e"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
