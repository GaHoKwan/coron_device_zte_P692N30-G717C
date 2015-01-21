.class Lcom/isw/android/corp/util/WinksApplication$1;
.super Ljava/lang/Thread;
.source "WinksApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/isw/android/corp/util/InitFuncs;->initFS(Landroid/content/Context;)V

    .line 99
    #calls: Lcom/isw/android/corp/util/WinksApplication;->isFirstRun()Z
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->access$0()Z

    move-result v0

    .line 100
    .local v0, bFirstRun:Z
    const-string v1, "MiniWinksApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bFirstRun: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->updateAppInfo()V

    .line 117
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 119
    new-instance v2, Lcom/isw/android/corp/util/WifiReceiver;

    invoke-direct {v2}, Lcom/isw/android/corp/util/WifiReceiver;-><init>()V

    .line 120
    new-instance v3, Landroid/content/IntentFilter;

    .line 121
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 120
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 125
    new-instance v2, Lcom/isw/android/corp/util/IpushBroadcast;

    invoke-direct {v2}, Lcom/isw/android/corp/util/IpushBroadcast;-><init>()V

    .line 126
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "zdwsipush"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-static {}, Lcom/isw/android/corp/util/EngineTask;->initTimer()V

    .line 155
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->EngineInit()V

    .line 156
    return-void
.end method
