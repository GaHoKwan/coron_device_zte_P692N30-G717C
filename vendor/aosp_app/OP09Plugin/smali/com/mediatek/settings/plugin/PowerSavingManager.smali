.class public Lcom/mediatek/settings/plugin/PowerSavingManager;
.super Ljava/lang/Object;
.source "PowerSavingManager.java"


# static fields
.field private static final CAT_CPU_POWER_SAVING_STATUS_COMMAND:Ljava/lang/String; = "cat /data/.tp.settings"

.field private static final DEFAULT_BRIGHTNESS:I = 0xf

.field private static final DISABLE_CPU_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

.field private static final ENABLE_CPU_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.conf"

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_BRIGHT:Ljava/lang/String; = "power_saving_brightness"

.field private static final KEY_BRIGHT_AUTO:Ljava/lang/String; = "power_saving_brightness_auto"

.field private static final KEY_BRIGHT_CONFIG:Ljava/lang/String; = "power_saving_brightness_config"

.field private static final KEY_BT:Ljava/lang/String; = "power_saving_bluetooth"

.field private static final KEY_CPU:Ljava/lang/String; = "power_saving_cpu"

.field private static final KEY_GPS:Ljava/lang/String; = "power_saving_gps"

.field private static final KEY_SLEEP:Ljava/lang/String; = "power_saving_sleep"

.field private static final KEY_SLEEP_CONFIG:Ljava/lang/String; = "power_saving_sleep_config"

.field private static final KEY_SYNC:Ljava/lang/String; = "power_saving_sync"

.field private static final KEY_TACTILE:Ljava/lang/String; = "power_saving_tactile"

.field private static final KEY_WIFI:Ljava/lang/String; = "power_saving_wlan"

.field private static final TAG:Ljava/lang/String; = "Power Savings"

.field private static sInstance:Lcom/mediatek/settings/plugin/PowerSavingManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharePref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    .line 80
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    const-class v1, Lcom/mediatek/settings/plugin/PowerSavingManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/settings/plugin/PowerSavingManager;->sInstance:Lcom/mediatek/settings/plugin/PowerSavingManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/mediatek/settings/plugin/PowerSavingManager;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/settings/plugin/PowerSavingManager;->sInstance:Lcom/mediatek/settings/plugin/PowerSavingManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/mediatek/settings/plugin/PowerSavingManager;->sInstance:Lcom/mediatek/settings/plugin/PowerSavingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setPowerSavingModeOn(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ct_power_saving_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private turnOffPowerSavingMode()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "CPU"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "Power Savings"

    const-string v1, "Turn Off Power Saving Mode!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "Power Savings"

    const-string v1, "Disable CPU saving..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->enableCpuSaving(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method private turnOnPowerSavingMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_cpu"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "Power Savings"

    const-string v1, "CPU saving is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/plugin/PowerSavingManager;->enableCpuSaving(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_wlan"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "Power Savings"

    const-string v1, "Turn off wifi is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffWifi()Z

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "Power Savings"

    const-string v1, "Turn off Bluetooth is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffBlueTooth()Z

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_gps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "Power Savings"

    const-string v1, "Turn off GPS is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffGps()V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_sleep"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    const-string v0, "Power Savings"

    const-string v1, "Sleep is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setSleepTime()V

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_brightness"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    const-string v0, "Power Savings"

    const-string v1, "Brightness is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffBrightness()V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_sync"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    const-string v0, "Power Savings"

    const-string v1, "Sync is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffSync()V

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v1, "power_saving_tactile"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    const-string v0, "Power Savings"

    const-string v1, "Turn off Tactile feedback is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffTactileFeedback()V

    .line 157
    :cond_7
    return-void
.end method


# virtual methods
.method public enableCpuSaving(Z)V
    .locals 7
    .parameter "isStart"

    .prologue
    .line 244
    if-eqz p1, :cond_0

    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    .line 247
    .local v0, command:Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v4, "Power Savings"

    const-string v5, "PowerSavingTASK doInBackground"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 249
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 250
    .local v3, value:I
    const-string v4, "Power Savings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerSavingTASK command result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .end local v2           #process:Ljava/lang/Process;
    .end local v3           #value:I
    :goto_1
    return-void

    .line 244
    .end local v0           #command:Ljava/lang/String;
    :cond_0
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    goto :goto_0

    .line 251
    .restart local v0       #command:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Power Savings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerSavingTASK IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "Power Savings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerSavingTASK InterruptedException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBrightness()I
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBrightnessAutoMode()I
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCpuState()I
    .locals 10

    .prologue
    .line 268
    const/4 v4, 0x1

    .line 269
    .local v4, result:I
    const-string v5, ""

    .line 270
    .local v5, resultString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "cat /data/.tp.settings"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 273
    .local v3, process:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 275
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 277
    const/4 v4, 0x1

    .line 290
    :goto_0
    if-eqz v1, :cond_3

    .line 292
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 298
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #process:Ljava/lang/Process;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v4

    .line 279
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #process:Ljava/lang/Process;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .line 280
    const/4 v4, 0x0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exe shell command InterruptedException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 284
    const/4 v4, 0x1

    goto :goto_0

    .line 293
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 294
    .local v2, e:Ljava/io/IOException;
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader in finally block exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 295
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 286
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #process:Ljava/lang/Process;
    :catch_2
    move-exception v2

    .line 287
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exe shell command IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    const/4 v4, 0x1

    .line 290
    if-eqz v0, :cond_0

    .line 292
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 293
    :catch_3
    move-exception v2

    .line 294
    const-string v6, "Power Savings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close reader in finally block exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 290
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 292
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 295
    :cond_2
    :goto_4
    throw v6

    .line 293
    :catch_4
    move-exception v2

    .line 294
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Power Savings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close reader in finally block exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 290
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #process:Ljava/lang/Process;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 286
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public getTimoutValue()I
    .locals 8

    .prologue
    .line 307
    iget-object v5, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, currentValue:I
    const-string v5, "Power Savings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, bestMatch:I
    const/4 v3, 0x0

    .line 313
    .local v3, timeout:I
    iget-object v5, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, valuesTimeout:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 315
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 316
    if-ne v1, v3, :cond_0

    .line 325
    .end local v1           #currentValue:I
    :goto_1
    return v1

    .line 319
    .restart local v1       #currentValue:I
    :cond_0
    if-le v1, v3, :cond_1

    .line 320
    move v0, v2

    .line 314
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_2
    const-string v5, "Power Savings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public isPowerSavingModeOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ct_power_saving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, mode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 403
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 405
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    return-void

    .line 409
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 412
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 413
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "Power Savings"

    const-string v3, "set backlight brightness fail"

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBrightnessAutoMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    return-void
.end method

.method public setSleepTime()V
    .locals 7

    .prologue
    .line 344
    iget-object v4, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v5, "power_saving_sleep_config"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 345
    .local v1, index:I
    iget-object v4, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, valuesTimeout:[Ljava/lang/String;
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 348
    .local v2, value:I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    const-string v4, "Power Savings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set Sleep Time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "Power Savings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public turnOffBlueTooth()Z
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 229
    .local v0, blueToothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 230
    const-string v1, "Power Savings"

    const-string v2, "Bluetooth is enable,try trun off ..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 233
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public turnOffBrightness()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v2, "power_saving_brightness_auto"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightnessAutoMode(I)V

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mSharePref:Landroid/content/SharedPreferences;

    const-string v2, "power_saving_brightness_config"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 455
    .local v0, brightnessValue:I
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightnessAutoMode(I)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightness(I)V

    goto :goto_0
.end method

.method public turnOffGps()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 362
    .local v0, gpsEnabled:Z
    if-eqz v0, :cond_0

    .line 363
    const-string v1, "Power Savings"

    const-string v2, " --> GPS is enable! Try to close it."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 366
    :cond_0
    return-void
.end method

.method public turnOffSync()V
    .locals 2

    .prologue
    .line 464
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 465
    .local v0, policyManager:Landroid/net/NetworkPolicyManager;
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 468
    :cond_0
    return-void
.end method

.method public turnOffTactileFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    const-string v3, "audioprofile"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 373
    .local v1, mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    .line 376
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    .line 377
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    .line 378
    invoke-virtual {v1, v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    .line 379
    return-void
.end method

.method public turnOffWifi()Z
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 216
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "Power Savings"

    const-string v2, "Wifi is enable,try trun off ..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 220
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public turnOn(Z)V
    .locals 0
    .parameter "isTurnOn"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setPowerSavingModeOn(Z)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOnPowerSavingMode()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffPowerSavingMode()V

    goto :goto_0
.end method

.method public turnOnPowerSavingMode(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "power_saving_cpu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "Power Savings"

    const-string v1, "Enable CPU saving is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->enableCpuSaving(Z)V

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "power_saving_wlan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string v0, "Power Savings"

    const-string v1, "Turn off wifi is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffWifi()Z

    goto :goto_0

    .line 174
    :cond_2
    const-string v0, "power_saving_bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const-string v0, "Power Savings"

    const-string v1, "Turn off Bluetooth is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffBlueTooth()Z

    goto :goto_0

    .line 177
    :cond_3
    const-string v0, "power_saving_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    const-string v0, "Power Savings"

    const-string v1, "Turn off GPS is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffGps()V

    goto :goto_0

    .line 180
    :cond_4
    const-string v0, "power_saving_sleep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    const-string v0, "Power Savings"

    const-string v1, "Sleep is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setSleepTime()V

    goto :goto_0

    .line 183
    :cond_5
    const-string v0, "power_saving_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    const-string v0, "Power Savings"

    const-string v1, "Brightness is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffBrightness()V

    goto :goto_0

    .line 186
    :cond_6
    const-string v0, "power_saving_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const-string v0, "Power Savings"

    const-string v1, "Sync is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffSync()V

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v0, "power_saving_tactile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 190
    const-string v0, "Power Savings"

    const-string v1, "Turn off Tactile feedback is checked"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOffTactileFeedback()V

    goto/16 :goto_0

    .line 193
    :cond_8
    const-string v0, "Power Savings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong preference key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
