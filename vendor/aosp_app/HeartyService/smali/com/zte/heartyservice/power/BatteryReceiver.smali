.class public Lcom/zte/heartyservice/power/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# static fields
.field private static final tag:Ljava/lang/String; = "BatteryReceiver"


# instance fields
.field private batteryIntent:Landroid/content/Intent;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private level:I

.field private mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

.field private sp:Landroid/content/SharedPreferences;

.field private tempLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->tempLevel:I

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->batteryIntent:Landroid/content/Intent;

    .line 28
    new-instance v1, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v1, p1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    .line 29
    const-string v1, "powermanager"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->sp:Landroid/content/SharedPreferences;

    .line 30
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, batteryIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->batteryIntent:Landroid/content/Intent;

    .line 35
    const-string v1, "chenlu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->batteryIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->batteryIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->batteryIntent:Landroid/content/Intent;

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    .line 39
    iget v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    iput v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->tempLevel:I

    .line 40
    iget-object v1, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "battery_level"

    iget v3, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 49
    const-string v8, "BatteryReceiver"

    const-string v9, "onReceive"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v8, "BatteryReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, charging:Z
    iget-object v8, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v9, "timing_save_electricity_switch"

    sget-boolean v10, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 54
    .local v5, timingSaveElectricitySwitch:Z
    iget-object v8, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->sp:Landroid/content/SharedPreferences;

    const-string v9, "do_not_disturb_switch"

    sget-boolean v10, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    .local v2, doNotDisturbSwitch:Z
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    const-string v8, "level"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    .line 60
    const-string v8, "status"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 61
    .local v4, statusInfo:I
    const-string v8, "BatteryReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hearty Battery On Receive statusInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v8, 0x2

    if-ne v4, v8, :cond_1

    move v1, v6

    .line 64
    :goto_0
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setCharging(Z)V

    .line 67
    iget v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    iget v8, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->tempLevel:I

    if-eq v7, v8, :cond_0

    .line 68
    iget v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    iput v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->tempLevel:I

    .line 69
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v8, "battery_level"

    iget v9, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->level:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->canStartSmartLowMode()Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 71
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 139
    .end local v4           #statusInfo:I
    :cond_0
    :goto_1
    return-void

    .restart local v4       #statusInfo:I
    :cond_1
    move v1, v7

    .line 63
    goto :goto_0

    .line 73
    :cond_2
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->ShutSmartLow()V

    goto :goto_1

    .line 76
    .end local v4           #statusInfo:I
    :cond_3
    const-string v8, "zte.com.cn.powermanager.SaveTimingSaveElectricity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    if-ne v6, v5, :cond_0

    .line 79
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity(Z)V

    goto :goto_1

    .line 81
    :cond_4
    const-string v8, "zte.com.cn.powermanager.DoNotDisturb"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 83
    if-ne v6, v2, :cond_0

    .line 84
    iget-object v7, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb(Z)V

    goto :goto_1

    .line 86
    :cond_5
    const-string v8, "zte.com.cn.powermanager.SAVE_SMART_LOW"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    goto :goto_1

    .line 89
    :cond_6
    const-string v8, "zte.com.powermanager.SWITCH_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 91
    const-string v6, "switch_id"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 92
    .local v3, mode_id:I
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6, v3}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    goto :goto_1

    .line 93
    .end local v3           #mode_id:I
    :cond_7
    const-string v8, "com.zte.powermanager.timingsaveelectricity.from"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 95
    const-string v8, "20140303"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.zte.powermanager.timingsaveelectricity.from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v8

    if-nez v8, :cond_0

    .line 97
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow()Z

    move-result v8

    if-nez v8, :cond_8

    .line 98
    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStartToastShow(Z)V

    .line 99
    const v8, 0x7f0a03e6

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_8
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStart(Z)V

    .line 103
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->saveCurrentSetting()V

    .line 104
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->executeChooseMode()V

    goto/16 :goto_1

    .line 107
    :cond_9
    const-string v8, "com.zte.powermanager.timingsaveelectricity.to"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 109
    const-string v8, "20140303"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.zte.powermanager.timingsaveelectricity.to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v8

    if-nez v8, :cond_0

    .line 111
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow()Z

    move-result v8

    if-ne v6, v8, :cond_a

    .line 112
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStartToastShow(Z)V

    .line 113
    const v8, 0x7f0a03e7

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_a
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart()Z

    move-result v8

    if-ne v6, v8, :cond_0

    .line 116
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStart(Z)V

    .line 117
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->executeCurrentModeWithoutToast()V

    goto/16 :goto_1

    .line 120
    :cond_b
    const-string v8, "com.zte.powermanager.atnightdonotdisturb.from"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 121
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow()Z

    move-result v8

    if-nez v8, :cond_c

    .line 122
    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStartToastShow(Z)V

    .line 123
    const v8, 0x7f0a03ea

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_c
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart()Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStart(Z)V

    .line 127
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->executeChooseInterceptMode()V

    goto/16 :goto_1

    .line 129
    :cond_d
    const-string v8, "com.zte.powermanager.atnightdonotdisturb.to"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow()Z

    move-result v8

    if-ne v6, v8, :cond_e

    .line 131
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStartToastShow(Z)V

    .line 132
    const v8, 0x7f0a03eb

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_e
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart()Z

    move-result v8

    if-ne v6, v8, :cond_0

    .line 135
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStart(Z)V

    .line 136
    iget-object v6, p0, Lcom/zte/heartyservice/power/BatteryReceiver;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v6}, Lcom/zte/heartyservice/power/SwitchTools;->executeCurrentInterceptMode()V

    goto/16 :goto_1
.end method
