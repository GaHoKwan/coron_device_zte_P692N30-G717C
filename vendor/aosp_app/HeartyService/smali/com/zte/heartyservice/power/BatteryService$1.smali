.class Lcom/zte/heartyservice/power/BatteryService$1;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/BatteryService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/BatteryService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryService$1;->this$0:Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 93
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    :goto_0
    sget-boolean v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->isVirusDBEngineInited:Z

    if-nez v4, :cond_0

    .line 96
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v4

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryService$1;->this$0:Lcom/zte/heartyservice/power/BatteryService;

    invoke-direct {v1, v4}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    iget-object v4, p0, Lcom/zte/heartyservice/power/BatteryService$1;->this$0:Lcom/zte/heartyservice/power/BatteryService;

    const-string v5, "powermanager"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/power/BatteryService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->canStartSmartLowMode()Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 112
    :goto_1
    const-string v4, "timing_save_electricity_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 113
    .local v3, timingSaveElectricitySwitch:Z
    const-string v4, "do_not_disturb_switch"

    sget-boolean v5, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, doNotDisturbSwitch:Z
    if-ne v7, v0, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb()V

    .line 119
    :cond_1
    if-ne v7, v3, :cond_2

    .line 120
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 121
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->switchingSaveSettingAfter5S()V

    .line 123
    :cond_2
    return-void

    .line 109
    .end local v0           #doNotDisturbSwitch:Z
    .end local v3           #timingSaveElectricitySwitch:Z
    :cond_3
    invoke-virtual {v1}, Lcom/zte/heartyservice/power/SwitchTools;->ShutSmartLow()V

    goto :goto_1
.end method
