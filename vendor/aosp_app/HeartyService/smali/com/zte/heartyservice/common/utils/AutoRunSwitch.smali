.class public Lcom/zte/heartyservice/common/utils/AutoRunSwitch;
.super Ljava/lang/Object;
.source "AutoRunSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoRunOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    const-string v0, "hs_autorun_setting_flag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static setAutoRun(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "on"

    .prologue
    const/4 v4, 0x1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 20
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    move v3, v4

    .line 22
    .local v3, state:I
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.zte.heartyservice"

    const-string v6, "com.zte.heartyservice.main.StartReceiver"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v0, cn:Landroid/content/ComponentName;
    const-string v5, "hs_autorun_setting_flag"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.broadcast.autorun.state"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void

    .line 20
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static stopHeartyService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.launcher.action.PACKAGE_NAME"

    const-string v2, "com.zte.heartyservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->delayStopHeartyService(J)V

    .line 55
    return-void
.end method

.method public static stopHeartyServiceRel()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    .line 59
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/indicator/Notifier;->cancelBatteryNotification()V

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->closeAppLockDB()V

    .line 61
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.zte.heartyservice"

    const-string v6, "com.zte.heartyservice.main.StartReceiver"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 64
    .local v3, setting:I
    if-ne v3, v4, :cond_0

    const/4 v2, 0x2

    .line 67
    .local v2, reverse:I
    :goto_0
    invoke-virtual {v1, v0, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 69
    return-void

    .end local v2           #reverse:I
    :cond_0
    move v2, v4

    .line 64
    goto :goto_0
.end method
