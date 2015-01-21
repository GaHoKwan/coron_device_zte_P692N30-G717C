.class public Lcom/zte/heartyservice/power/SmartPowerManager;
.super Ljava/lang/Object;
.source "SmartPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
    }
.end annotation


# static fields
.field private static final ABNORMAL_EVENT:I = 0x1

.field private static final ALARM_EVENT:Ljava/lang/String; = "com.zte.SmartPowerManagerAlarmEvent"

.field public static final BLUETOOTH_AWAKE:I = 0x4

.field public static final FAILED_TO_SLEEP:I = 0x1

.field private static final INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmartBatteryManager"

.field public static final TIMER_AWAKE:I = 0x8

.field private static final VALID_PERIOD:J = 0x240c8400L

.field public static final WIFI_AWAKE:I = 0x2

.field private static mAbnormalPkgNum:I

.field private static sLastGetInfoTime:J

.field private static sReceiver:Landroid/content/BroadcastReceiver;

.field private static sSavingPercent:I

.field private static sSmartBatteryManagerVersion:I

.field private static sState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 28
    sput v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sSmartBatteryManagerVersion:I

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sSavingPercent:I

    .line 35
    const/4 v0, -0x2

    sput v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    .line 36
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sLastGetInfoTime:J

    .line 37
    sput v2, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/zte/heartyservice/power/SmartPowerManager;->getDataFromService(I)V

    return-void
.end method

.method public static getAbnormalPkg(Z)Ljava/util/Map;
    .locals 24
    .parameter "clearState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    const/4 v14, 0x0

    .line 325
    :cond_0
    :goto_0
    return-object v14

    .line 273
    :cond_1
    const/4 v11, 0x0

    .line 275
    .local v11, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 276
    .local v21, time:J
    const-wide/32 v3, 0x240c8400

    sub-long v21, v21, v3

    .line 277
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    move-result-object v13

    .line 279
    .local v13, helper:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    invoke-virtual {v13}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 280
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time>="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, selection:Ljava/lang/String;
    if-nez p0, :cond_2

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and state=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    :cond_2
    const-string v3, "abnormal_event"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 286
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 287
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v14, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    const-string v3, "package"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 289
    .local v15, packageIndex:I
    const-string v3, "reason"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 290
    .local v19, reasonIndex:I
    const-string v3, "show"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 292
    .local v20, showIndex:I
    :cond_3
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, pkg:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int v18, v3, v4

    .line 295
    .local v18, reason:I
    const-string v3, "com.zte.heartyservice"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.tencent.android.qqplaza4zte"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v18, :cond_4

    .line 298
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->getPackageInfo(Ljava/lang/String;Z)Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    move-result-object v17

    .line 300
    .local v17, pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    if-eqz v17, :cond_4

    .line 301
    new-instance v10, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;

    invoke-direct {v10}, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;-><init>()V

    .line 302
    .local v10, abnormalPkgInfo:Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;->pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

    .line 303
    move/from16 v0, v18

    iput v0, v10, Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;->reason:I

    .line 304
    move-object/from16 v0, v16

    invoke-interface {v14, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v10           #abnormalPkgInfo:Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
    .end local v17           #pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 309
    if-eqz p0, :cond_5

    .line 310
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v3, "abnormal_event"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v13, v3, v0, v4, v6}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    const/4 v3, -0x1

    sput v3, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_5
    if-eqz v11, :cond_0

    .line 322
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 321
    .end local v14           #list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    .end local v15           #packageIndex:I
    .end local v16           #pkg:Ljava/lang/String;
    .end local v18           #reason:I
    .end local v19           #reasonIndex:I
    .end local v20           #showIndex:I
    :cond_6
    if-eqz v11, :cond_7

    .line 322
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 325
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #selection:Ljava/lang/String;
    .end local v13           #helper:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    .end local v21           #time:J
    :cond_7
    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v12

    .line 319
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SmartBatteryManager"

    const-string v4, ""

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    if-eqz v11, :cond_7

    .line 322
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 321
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_8

    .line 322
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method private static getDataFromService(I)V
    .locals 36
    .parameter "type"

    .prologue
    .line 115
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    .line 116
    .local v12, context:Landroid/content/Context;
    const-string v3, "power"

    invoke-virtual {v12, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PowerManager;

    .line 118
    .local v27, powerManager:Landroid/os/PowerManager;
    const-string v3, "getAbnormalPowerEvents"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v27

    invoke-static {v0, v3, v4}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 120
    .local v30, ret:Ljava/lang/Object;
    const-string v3, "SmartBatteryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataFromService type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v33, 0x0

    .line 122
    .local v33, stateChange:Z
    if-eqz v30, :cond_6

    .line 124
    :try_start_0
    move-object/from16 v0, v30

    check-cast v0, Ljava/util/List;

    move-object/from16 v24, v0

    .line 125
    .local v24, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 126
    .local v16, curTime:J
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .line 127
    .local v23, item:Landroid/os/Bundle;
    if-eqz v23, :cond_0

    .line 130
    const-string v3, "EventNo"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 131
    .local v10, EventNo:I
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/zte/heartyservice/power/SmartPowerManager;->sLastGetInfoTime:J

    .line 134
    const-string v3, "SmartPowerState"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 135
    .local v32, state:I
    const/4 v3, -0x2

    move/from16 v0, v32

    if-eq v0, v3, :cond_1

    sget v3, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    move/from16 v0, v32

    if-eq v0, v3, :cond_1

    .line 136
    sput v32, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    .line 137
    const/16 v33, 0x1

    .line 140
    :cond_1
    const/16 v25, 0x0

    .line 141
    .local v25, percent:I
    const/4 v11, 0x0

    .line 142
    .local v11, allPercent:I
    const-string v3, "LCD"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 143
    if-ltz v25, :cond_2

    const/16 v3, 0x64

    move/from16 v0, v25

    if-gt v0, v3, :cond_2

    .line 144
    add-int v11, v11, v25

    .line 146
    :cond_2
    const-string v3, "CPU"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 147
    if-ltz v25, :cond_3

    const/16 v3, 0x64

    move/from16 v0, v25

    if-gt v0, v3, :cond_3

    .line 148
    add-int v11, v11, v25

    .line 150
    :cond_3
    const-string v3, "Wireless"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 151
    if-ltz v25, :cond_4

    const/16 v3, 0x64

    move/from16 v0, v25

    if-gt v0, v3, :cond_4

    .line 152
    add-int v11, v11, v25

    .line 154
    :cond_4
    div-int/lit8 v25, v11, 0x3

    .line 155
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ge v0, v3, :cond_8

    .line 156
    const/16 v25, 0x1

    .line 160
    :cond_5
    :goto_1
    sput v25, Lcom/zte/heartyservice/power/SmartPowerManager;->sSavingPercent:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v10           #EventNo:I
    .end local v11           #allPercent:I
    .end local v16           #curTime:J
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v23           #item:Landroid/os/Bundle;
    .end local v24           #list:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v25           #percent:I
    .end local v32           #state:I
    :catch_0
    move-exception v18

    .line 228
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "SmartBatteryManager"

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v18           #e:Ljava/lang/Exception;
    :cond_6
    if-eqz v33, :cond_7

    .line 233
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->updateData()V

    .line 235
    :cond_7
    return-void

    .line 157
    .restart local v10       #EventNo:I
    .restart local v11       #allPercent:I
    .restart local v16       #curTime:J
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v23       #item:Landroid/os/Bundle;
    .restart local v24       #list:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v25       #percent:I
    .restart local v32       #state:I
    :cond_8
    const/16 v3, 0x14

    move/from16 v0, v25

    if-le v0, v3, :cond_5

    .line 158
    const/16 v25, 0x14

    goto :goto_1

    .line 164
    .end local v11           #allPercent:I
    .end local v25           #percent:I
    .end local v32           #state:I
    :pswitch_1
    :try_start_1
    const-string v3, "PkgName"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 165
    .local v26, pkgName:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const/4 v15, 0x0

    .line 170
    .local v15, cur:Landroid/database/Cursor;
    :try_start_2
    const-string v3, "Reason"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/zte/heartyservice/power/SmartPowerManager;->getEventReason(I)I

    move-result v28

    .line 172
    .local v28, reason:I
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    move-result-object v19

    .line 174
    .local v19, helper:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    invoke-virtual/range {v19 .. v19}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 175
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "abnormal_event"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 179
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 180
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 181
    .local v22, idIndex:I
    const-string v3, "count"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 182
    .local v14, countIndex:I
    const-string v3, "reason"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 183
    .local v29, reasonIndex:I
    const-string v3, "show"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 184
    .local v31, showIndex:I
    const-string v3, "state"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 185
    .local v34, stateIndex:I
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 186
    .local v21, id:I
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 187
    .local v13, count:I
    move/from16 v0, v29

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int v28, v28, v3

    .line 188
    add-int/lit8 v13, v13, 0x1

    .line 189
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v35, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v3, "package"

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "count"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v3, "time"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v3, "state"

    move/from16 v0, v34

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v3, "reason"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v3, "show"

    move/from16 v0, v31

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "abnormal_event"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v4, v1}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    .end local v13           #count:I
    .end local v14           #countIndex:I
    .end local v21           #id:I
    .end local v22           #idIndex:I
    .end local v29           #reasonIndex:I
    .end local v31           #showIndex:I
    .end local v34           #stateIndex:I
    :goto_2
    if-eqz v15, :cond_0

    .line 217
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 201
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_9
    :try_start_4
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .restart local v35       #values:Landroid/content/ContentValues;
    const-string v3, "package"

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "count"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "time"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v3, "state"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v3, "reason"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v3, "show"

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v3, "abnormal_event"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v4, v1}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 211
    const/4 v3, -0x1

    sput v3, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 213
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v19           #helper:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    .end local v28           #reason:I
    .end local v35           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v18

    .line 214
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "SmartBatteryManager"

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    if-eqz v15, :cond_0

    .line 217
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 216
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_a

    .line 217
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getEventReason(I)I
    .locals 1
    .parameter "reason"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, ret:I
    packed-switch p0, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    return v0

    .line 246
    :pswitch_1
    const/4 v0, 0x1

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const/4 v0, 0x2

    .line 250
    goto :goto_0

    .line 252
    :pswitch_3
    const/4 v0, 0x4

    .line 253
    goto :goto_0

    .line 255
    :pswitch_4
    const/16 v0, 0x8

    .line 256
    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getNewAbnormalPkgNum()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    :goto_0
    return v1

    .line 333
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    :cond_0
    sget v2, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    if-ltz v2, :cond_1

    .line 334
    sget v1, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    goto :goto_0

    .line 336
    :cond_1
    invoke-static {v1}, Lcom/zte/heartyservice/power/SmartPowerManager;->getAbnormalPkg(Z)Ljava/util/Map;

    move-result-object v0

    .line 337
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;>;"
    if-eqz v0, :cond_2

    .line 338
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    sput v1, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    .line 343
    :goto_1
    sget v1, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    goto :goto_0

    .line 340
    :cond_2
    sput v1, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    goto :goto_1
.end method

.method public static getSavingPercent()I
    .locals 6

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 348
    .local v0, curTime:J
    sget-wide v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sLastGetInfoTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sLastGetInfoTime:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-wide v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sLastGetInfoTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 350
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/zte/heartyservice/power/SmartPowerManager;->getDataFromService(I)V

    .line 352
    :cond_1
    sget v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sSavingPercent:I

    return v2
.end method

.method public static getSmartBatteryManagerVersion()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    sget v1, Lcom/zte/heartyservice/power/SmartPowerManager;->sSmartBatteryManagerVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 41
    new-array v0, v4, [Ljava/lang/Class;

    .line 42
    .local v0, paramTypes:[Ljava/lang/Class;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 43
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "getAbnormalPowerEvents"

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->is_class_method_exit(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sput v4, Lcom/zte/heartyservice/power/SmartPowerManager;->sSmartBatteryManagerVersion:I

    .line 50
    :cond_0
    :goto_0
    sget v1, Lcom/zte/heartyservice/power/SmartPowerManager;->sSmartBatteryManagerVersion:I

    return v1

    .line 47
    :cond_1
    sput v3, Lcom/zte/heartyservice/power/SmartPowerManager;->sSmartBatteryManagerVersion:I

    goto :goto_0
.end method

.method public static isEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getSmartBatteryManagerVersion()I

    move-result v2

    if-lez v2, :cond_1

    .line 55
    sget v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 56
    const/4 v2, -0x1

    sput v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    .line 57
    invoke-static {v1}, Lcom/zte/heartyservice/power/SmartPowerManager;->getDataFromService(I)V

    .line 59
    :cond_0
    sget v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sState:I

    if-ne v2, v0, :cond_1

    .line 63
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setEnable(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getSmartBatteryManagerVersion()I

    move-result v2

    if-lez v2, :cond_0

    .line 68
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v5, "power"

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 70
    .local v1, powerManager:Landroid/os/PowerManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "SmartPowerState"

    if-eqz p0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v2, "setSmartPowerManager"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v4}, Lcom/zte/heartyservice/power/SmartPowerManager;->getDataFromService(I)V

    .line 76
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :cond_0
    return-void

    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #powerManager:Landroid/os/PowerManager;
    :cond_1
    move v2, v4

    .line 71
    goto :goto_0
.end method

.method public static setPkgIgnore(Ljava/lang/String;I)V
    .locals 6
    .parameter "pkg"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 356
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "show"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    move-result-object v0

    .line 363
    .local v0, helper:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
    const-string v2, "abnormal_event"

    const-string v3, "package=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    const/4 v2, -0x1

    sput v2, Lcom/zte/heartyservice/power/SmartPowerManager;->mAbnormalPkgNum:I

    goto :goto_0
.end method

.method public static unregisterReceiver()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    :cond_0
    return-void
.end method

.method public static updateData()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget-object v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Lcom/zte/heartyservice/power/SmartPowerManager$1;

    invoke-direct {v2}, Lcom/zte/heartyservice/power/SmartPowerManager$1;-><init>()V

    sput-object v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.zte.SmartPowerManagerAlarmEvent"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/zte/heartyservice/power/SmartPowerManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zte/heartyservice/power/SmartPowerManager;->getDataFromService(I)V

    .line 105
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->unregisterReceiver()V

    goto :goto_0
.end method
