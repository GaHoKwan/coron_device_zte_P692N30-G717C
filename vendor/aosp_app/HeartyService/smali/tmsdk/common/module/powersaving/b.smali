.class Ltmsdk/common/module/powersaving/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/powersaving/IBatteryInfoHelper;


# instance fields
.field private AF:Ljava/lang/Object;

.field private AG:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    iput-object p1, p0, Ltmsdk/common/module/powersaving/b;->mContext:Landroid/content/Context;

    .line 27
    const-string v2, "com.android.internal.os.PowerProfile"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28
    .local v1, powerProfileClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "getAveragePower"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/common/module/powersaving/b;->AG:Ljava/lang/reflect/Method;

    .line 29
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ltmsdk/common/module/powersaving/b;->AF:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 45
    .end local v1           #powerProfileClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private fM()D
    .locals 9

    .prologue
    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .local v3, totalPower:D
    const-class v7, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v7}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 122
    .local v2, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    const-string v7, "POWER_WIFI_ACTIVE"

    invoke-direct {p0, v7}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 124
    .local v5, wifiActivePower:D
    const-wide/high16 v7, 0x4010

    div-double v7, v5, v7

    add-double/2addr v3, v7

    .line 127
    .end local v5           #wifiActivePower:D
    :cond_0
    invoke-virtual {v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    const-string v7, "POWER_BLUETOOTH_ACTIVE"

    invoke-direct {p0, v7}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 129
    .local v0, blueToothActivePower:D
    add-double/2addr v3, v0

    .line 131
    .end local v0           #blueToothActivePower:D
    :cond_1
    return-wide v3
.end method

.method private getAveragePower(Ljava/lang/String;)D
    .locals 6
    .parameter "filedname"

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Ltmsdk/common/module/powersaving/b;->AG:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ltmsdk/common/module/powersaving/b;->AF:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com.android.internal.os.PowerProfile"

    invoke-static {v5, p1}, Ltmsdkobf/kh;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 52
    :goto_0
    return-wide v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallRemainHours()D
    .locals 10

    .prologue
    .line 63
    const-string v8, "POWER_NONE"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 64
    .local v6, totalPower:D
    const-string v8, "POWER_RADIO_ACTIVE"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 66
    .local v2, radioActivePower:D
    add-double/2addr v6, v2

    .line 68
    const-string v8, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 70
    .local v0, cpuActivePower:D
    add-double/2addr v6, v0

    .line 71
    invoke-direct {p0}, Ltmsdk/common/module/powersaving/b;->fM()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 73
    const-string v8, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 75
    .local v4, remainPower:D
    div-double v8, v4, v6

    return-wide v8
.end method

.method public getContinueRemainHours()D
    .locals 10

    .prologue
    .line 97
    const-wide/16 v6, 0x0

    .line 98
    .local v6, totalPower:D
    const-wide/16 v2, 0x0

    .line 100
    .local v2, remainPower:D
    const-string v8, "POWER_NONE"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 101
    const-string v8, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 102
    .local v0, cpuActivePower:D
    const-wide/high16 v8, 0x4008

    div-double v8, v0, v8

    add-double/2addr v6, v8

    .line 104
    const-string v8, "POWER_SCREEN_FULL"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 105
    .local v4, screenFullPower:D
    iget-object v8, p0, Ltmsdk/common/module/powersaving/b;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Ltmsdkobf/jn;->a(Landroid/content/ContentResolver;)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v4, v8

    .line 106
    add-double/2addr v6, v4

    .line 108
    invoke-direct {p0}, Ltmsdk/common/module/powersaving/b;->fM()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 110
    const-string v8, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v8}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 111
    div-double v8, v2, v6

    return-wide v8
.end method

.method public getMaxPowerUseHours()D
    .locals 17

    .prologue
    .line 192
    const-wide/16 v11, 0x0

    .line 193
    .local v11, totalPower:D
    const-string v15, "POWER_NONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v11

    .line 194
    const-string v15, "POWER_CPU_ACTIVE"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    .line 195
    .local v3, cpuActivePower:D
    const-wide/high16 v15, 0x4008

    div-double v15, v3, v15

    add-double/2addr v11, v15

    .line 197
    const-string v15, "POWER_SCREEN_FULL"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    .line 198
    .local v9, screenFullPower:D
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdk/common/module/powersaving/b;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15}, Ltmsdkobf/jn;->a(Landroid/content/ContentResolver;)I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v9, v15

    .line 199
    add-double/2addr v11, v9

    .line 201
    const-string v15, "POWER_WIFI_ACTIVE"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    .line 202
    .local v13, wifiActivePower:D
    const-wide/high16 v15, 0x4010

    div-double v15, v13, v15

    add-double/2addr v11, v15

    .line 204
    const-string v15, "POWER_BLUETOOTH_ACTIVE"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    .line 205
    .local v1, blueToothActivePower:D
    add-double/2addr v11, v1

    .line 207
    const-string v15, "POWER_GPS_ON"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 209
    .local v5, gpsActivePower:D
    add-double/2addr v11, v5

    .line 211
    const-string v15, "POWER_BATTERY_CAPACITY"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    .line 213
    .local v7, remainPower:D
    div-double v11, v7, v11

    .line 215
    return-wide v11
.end method

.method public getStayRemainHours()D
    .locals 8

    .prologue
    .line 84
    const-string v6, "POWER_NONE"

    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 85
    .local v4, totalPower:D
    const-string v6, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 86
    .local v0, cpuActivePower:D
    const-wide/high16 v6, 0x4008

    div-double v6, v0, v6

    add-double/2addr v4, v6

    .line 87
    const-string v6, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v6}, Ltmsdk/common/module/powersaving/b;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 88
    .local v2, remainPower:D
    div-double v6, v2, v4

    return-wide v6
.end method
