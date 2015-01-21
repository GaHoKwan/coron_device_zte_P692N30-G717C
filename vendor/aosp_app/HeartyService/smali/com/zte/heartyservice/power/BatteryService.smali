.class public Lcom/zte/heartyservice/power/BatteryService;
.super Landroid/app/Service;
.source "BatteryService.java"


# static fields
.field private static final tag:Ljava/lang/String; = "BatteryService"


# instance fields
.field private MODE_BASE_URI:Landroid/net/Uri;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mReceiver:Lcom/zte/heartyservice/power/BatteryReceiver;

.field private mTReceiver:Lcom/zte/heartyservice/power/TimerReceiver;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/BatteryService;->MODE_BASE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    const-string v2, "BatteryService"

    const-string v3, "onCreate Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Lcom/zte/heartyservice/power/BatteryReceiver;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/BatteryReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/power/BatteryService;->mReceiver:Lcom/zte/heartyservice/power/BatteryReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "com.zte.powermanager.timingsaveelectricity.from"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v2, "com.zte.powermanager.timingsaveelectricity.to"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "com.zte.powermanager.atnightdonotdisturb.from"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "com.zte.powermanager.atnightdonotdisturb.to"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "zte.com.powermanager.SWITCH_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "zte.com.cn.powermanager.SAVE_SMART_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "zte.com.cn.powermanager.SaveTimingSaveElectricity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v2, "zte.com.cn.powermanager.DoNotDisturb"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/zte/heartyservice/power/BatteryService;->mReceiver:Lcom/zte/heartyservice/power/BatteryReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/zte/heartyservice/power/BatteryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v2, Lcom/zte/heartyservice/power/TimerReceiver;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/TimerReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/power/BatteryService;->mTReceiver:Lcom/zte/heartyservice/power/TimerReceiver;

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v1, tFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/zte/heartyservice/power/BatteryService;->mTReceiver:Lcom/zte/heartyservice/power/TimerReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/zte/heartyservice/power/BatteryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v2, Lcom/zte/heartyservice/power/BatteryService$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/BatteryService$1;-><init>(Lcom/zte/heartyservice/power/BatteryService;)V

    invoke-virtual {v2}, Lcom/zte/heartyservice/power/BatteryService$1;->start()V

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryService;->mReceiver:Lcom/zte/heartyservice/power/BatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BatteryService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatteryService;->mTReceiver:Lcom/zte/heartyservice/power/TimerReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/BatteryService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method
