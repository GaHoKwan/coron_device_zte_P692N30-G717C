.class public final Ltmsdkobf/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gk$a;,
        Ltmsdkobf/gk$b;,
        Ltmsdkobf/gk$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private jO:I

.field private jR:[B

.field private kG:Landroid/content/Context;

.field private nA:Ltmsdkobf/gk$b;

.field private nE:Landroid/net/wifi/WifiManager;

.field private nF:Ltmsdkobf/gk$a;

.field private nG:Ljava/util/Timer;

.field private nH:Ltmsdkobf/gk$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    .line 37
    iput-object v1, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;

    .line 39
    iput-object v1, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Ltmsdkobf/gk;->jO:I

    .line 47
    iput-object v1, p0, Ltmsdkobf/gk;->nH:Ltmsdkobf/gk$c;

    .line 50
    iput-object v1, p0, Ltmsdkobf/gk;->nA:Ltmsdkobf/gk$b;

    .line 53
    iput-boolean v2, p0, Ltmsdkobf/gk;->a:Z

    .line 55
    new-array v0, v2, [B

    iput-object v0, p0, Ltmsdkobf/gk;->jR:[B

    .line 58
    return-void
.end method

.method static synthetic a(Ltmsdkobf/gk;)Ltmsdkobf/gk$c;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ltmsdkobf/gk;->nH:Ltmsdkobf/gk$c;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gk;Ltmsdkobf/gk$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Ltmsdkobf/gk;->nA:Ltmsdkobf/gk$b;

    return-void
.end method

.method static synthetic b(Ltmsdkobf/gk;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/gk;)Ltmsdkobf/gk$b;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Ltmsdkobf/gk;->nA:Ltmsdkobf/gk$b;

    return-object v0
.end method

.method static synthetic d(Ltmsdkobf/gk;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Ltmsdkobf/gk;->jO:I

    return v0
.end method


# virtual methods
.method public final Q()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Ltmsdkobf/gk;->jR:[B

    monitor-enter v1

    .line 95
    :try_start_0
    iget-boolean v0, p0, Ltmsdkobf/gk;->a:Z

    if-nez v0, :cond_0

    .line 96
    monitor-exit v1

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopSosoLocWifiProvider "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ltmsdkobf/gk;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;

    if-nez v0, :cond_2

    .line 99
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 101
    :cond_2
    :try_start_1
    iget-object v0, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    iget-object v2, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    :try_start_2
    iget-object v0, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/gk;->a:Z

    .line 94
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final S()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Ltmsdkobf/gk;->a:Z

    return v0
.end method

.method public final a(Landroid/content/Context;Ltmsdkobf/gk$c;I)Z
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Ltmsdkobf/gk;->jR:[B

    monitor-enter v3

    .line 63
    :try_start_0
    iget-boolean v4, p0, Ltmsdkobf/gk;->a:Z

    if-eqz v4, :cond_0

    .line 64
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    return v1

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 66
    :cond_1
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 68
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "startSosoLocWifiProvider "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Ltmsdkobf/gk;->a:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Ltmsdkobf/gk;->nH:Ltmsdkobf/gk$c;

    .line 71
    const/4 v1, 0x1

    iput v1, p0, Ltmsdkobf/gk;->jO:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v1, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    .line 75
    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 74
    iput-object v1, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, intentFilter:Landroid/content/IntentFilter;
    new-instance v1, Ltmsdkobf/gk$a;

    invoke-direct {v1, p0}, Ltmsdkobf/gk$a;-><init>(Ltmsdkobf/gk;)V

    iput-object v1, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;

    .line 78
    iget-object v1, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_4

    .line 79
    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0

    .line 81
    :cond_4
    :try_start_4
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    iget-object v4, p0, Ltmsdkobf/gk;->nF:Ltmsdkobf/gk$a;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    const-wide/16 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v2}, Ltmsdkobf/gk;->h(J)V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdkobf/gk;->a:Z

    .line 62
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    iget-boolean v1, p0, Ltmsdkobf/gk;->a:Z

    goto :goto_0

    .line 85
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v2

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public final ab()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltmsdkobf/gk;->kG:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ltmsdkobf/gk;->nE:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final h(J)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 123
    new-instance v0, Ltmsdkobf/gk$1;

    invoke-direct {v0, p0}, Ltmsdkobf/gk$1;-><init>(Ltmsdkobf/gk;)V

    .line 130
    .local v0, timerTask:Ljava/util/TimerTask;
    iget-object v1, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 132
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    .line 133
    iget-object v1, p0, Ltmsdkobf/gk;->nG:Ljava/util/Timer;

    const-wide/16 v2, 0x3

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 134
    return-void
.end method
