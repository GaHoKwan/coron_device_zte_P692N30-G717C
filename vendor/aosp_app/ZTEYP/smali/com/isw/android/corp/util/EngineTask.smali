.class public Lcom/isw/android/corp/util/EngineTask;
.super Ljava/lang/Object;
.source "EngineTask.java"


# static fields
.field public static final ENGINE_TIMER_DELAY:J = 0x1d4c0L

.field public static final ENGINE_TIMER_PERIOD:J = 0xdbba0L

.field public static final ONE_DAY:I = 0x5265c00

.field public static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MiniEngineTask"

.field private static engineTimer:Ljava/util/Timer;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/util/EngineTask;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/util/EngineTask;->engineTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static engineScheduleTask(Landroid/content/Context;)V
    .locals 39
    .parameter "ctx"

    .prologue
    .line 96
    :try_start_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 110
    .local v9, date:Ljava/util/Date;
    sget-object v35, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 111
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    sput-object v35, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    .line 114
    :cond_0
    sget-object v35, Lcom/isw/android/corp/util/EngineTask;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 115
    sget v35, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 120
    const-string v35, "bCurrentUseSD"

    .line 121
    const/16 v36, 0x0

    .line 120
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 122
    .local v2, bCurrentUseSD:Z
    move v3, v2

    .line 123
    .local v3, bUseSDCard:Z
    const-string v35, "MiniEngineTask"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "bCurrentUseSD: "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-nez v2, :cond_5

    .line 127
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readDataStorage()J

    move-result-wide v11

    .line 128
    .local v11, freeDataStorageSize:J
    const-string v35, "threshold"

    const/16 v36, 0x64

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 132
    .local v25, threshold:I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v35, v11, v35

    if-gez v35, :cond_1

    .line 133
    const-string v35, "MiniEngineTask"

    .line 134
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "Warning! Current data free storage size("

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, v36

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 136
    const-string v37, ") is less than "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MB"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 134
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 133
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readSDStorage()J

    move-result-wide v13

    .line 139
    .local v13, freeSDStorageSize:J
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v35, v13, v35

    if-ltz v35, :cond_1

    .line 140
    const-string v35, "MiniEngineTask"

    .line 141
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "Change storage to sdcard, which free size is: "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, v36

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MB"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 141
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 140
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/io/File;

    .line 145
    sget-object v35, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    .line 144
    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v6, configFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 147
    const/4 v3, 0x1

    .line 148
    invoke-static {v3}, Lcom/isw/android/corp/util/LocalConfig;->setStoragePath(Z)V

    .line 179
    .end local v6           #configFile:Ljava/io/File;
    .end local v11           #freeDataStorageSize:J
    .end local v13           #freeSDStorageSize:J
    :cond_1
    :goto_0
    if-eq v3, v2, :cond_2

    .line 180
    const-string v35, "bCurrentUseSD"

    move-object/from16 v0, v35

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    :cond_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 186
    .local v7, currentTime:J
    const-string v35, "winks"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 187
    .local v34, winks:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 188
    const-string v35, "MiniEngineTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MiniServiceConfig.update..."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/isw/android/corp/message/MiniServiceConfig;->update(Z)V

    .line 266
    :cond_3
    :goto_1
    const-string v35, "clearCompanyCachePeroid"

    const-wide/16 v36, 0x3840

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 265
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v35

    .line 266
    const-wide/32 v37, 0xea60

    .line 265
    mul-long v4, v35, v37

    .line 268
    .local v4, clearCompanyCachePeroid:J
    const-string v35, "lastCleanJunkData"

    const-wide/16 v36, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 267
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v17

    .line 269
    .local v17, lastCleanJunkData:J
    sub-long v35, v7, v17

    cmp-long v35, v35, v4

    if-lez v35, :cond_4

    .line 270
    const-string v35, "MiniEngineTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MiniCleanJunkData.update..."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/isw/android/corp/message/MiniCleanJunkData;->update()V

    .line 381
    .end local v2           #bCurrentUseSD:Z
    .end local v3           #bUseSDCard:Z
    .end local v4           #clearCompanyCachePeroid:J
    .end local v7           #currentTime:J
    .end local v9           #date:Ljava/util/Date;
    .end local v17           #lastCleanJunkData:J
    .end local v25           #threshold:I
    .end local v34           #winks:Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 154
    .restart local v2       #bCurrentUseSD:Z
    .restart local v3       #bUseSDCard:Z
    .restart local v9       #date:Ljava/util/Date;
    :cond_5
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readSDStorage()J

    move-result-wide v13

    .line 155
    .restart local v13       #freeSDStorageSize:J
    const-string v35, "threshold"

    const/16 v36, 0x64

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 158
    .restart local v25       #threshold:I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v35, v13, v35

    if-gez v35, :cond_1

    .line 159
    const-string v35, "MiniEngineTask"

    .line 160
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "Warning! Current sdcard free storage size("

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, v36

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ") is less than "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 162
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MB"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 160
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 159
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readDataStorage()J

    move-result-wide v11

    .line 166
    .restart local v11       #freeDataStorageSize:J
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v35, v11, v35

    if-ltz v35, :cond_1

    .line 167
    const-string v35, "MiniEngineTask"

    .line 168
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "Change storage to data, which free size is: "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, v36

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MB"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 168
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 167
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v6, Ljava/io/File;

    .line 172
    sget-object v35, Lcom/isw/android/corp/util/LocalConfig;->localConfigFile:Ljava/lang/String;

    .line 171
    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v6       #configFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-static {v3}, Lcom/isw/android/corp/util/LocalConfig;->setStoragePath(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 376
    .end local v2           #bCurrentUseSD:Z
    .end local v3           #bUseSDCard:Z
    .end local v6           #configFile:Ljava/io/File;
    .end local v9           #date:Ljava/util/Date;
    .end local v11           #freeDataStorageSize:J
    .end local v13           #freeSDStorageSize:J
    .end local v25           #threshold:I
    :catch_0
    move-exception v10

    .line 377
    .local v10, ex:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const-string v35, "MiniEngineTask"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "ex: "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    .end local v10           #ex:Ljava/lang/Exception;
    .restart local v2       #bCurrentUseSD:Z
    .restart local v3       #bUseSDCard:Z
    .restart local v7       #currentTime:J
    .restart local v9       #date:Ljava/util/Date;
    .restart local v25       #threshold:I
    .restart local v34       #winks:Ljava/lang/String;
    :cond_6
    :try_start_1
    sget-object v35, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 193
    sget-object v35, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 198
    :cond_7
    const-string v35, "updateCompanyDataPeriod"

    const-wide/16 v36, 0x5a0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 197
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v35

    .line 199
    const-wide/32 v37, 0xea60

    .line 197
    mul-long v28, v35, v37

    .line 208
    .local v28, updateCompanyDataPeriod:J
    const-string v35, "lastCompanyDataUpdate"

    const-wide/16 v36, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 207
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v19

    .line 209
    .local v19, lastCompanyDataUpdate:J
    sub-long v35, v7, v19

    cmp-long v35, v35, v28

    if-gtz v35, :cond_8

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 211
    :cond_8
    const-string v35, "MiniEngineTask"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "MiniCompanyData.update..."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->update()V

    .line 217
    :cond_9
    const-string v35, "uploadCompanyCallHistoryPeriod"

    const-wide/16 v36, 0x5a0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 216
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v35

    .line 218
    const-wide/32 v37, 0xea60

    .line 216
    mul-long v32, v35, v37

    .line 220
    .local v32, uploadCompanyCallHistoryPeriod:J
    const-string v35, "lastUploadCallHistory"

    const-wide/16 v36, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 219
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v21

    .line 221
    .local v21, lastUploadCallHistory:J
    sub-long v35, v7, v21

    cmp-long v35, v35, v32

    if-gtz v35, :cond_a

    .line 222
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 223
    :cond_a
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallHistory;->upload()V

    .line 224
    invoke-static {}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->upload()V

    .line 240
    :cond_b
    const-string v35, "updateCallDataPeriod"

    const-wide/16 v36, 0x5a0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 239
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v35

    .line 240
    const-wide/32 v37, 0xea60

    .line 239
    mul-long v26, v35, v37

    .line 241
    .local v26, updateCallDataPeriod:J
    const-string v35, "lastCallData"

    .line 242
    const-wide/16 v36, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 241
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v15

    .line 243
    .local v15, lastCallData:J
    sub-long v35, v7, v15

    cmp-long v35, v35, v26

    if-gtz v35, :cond_c

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 245
    :cond_c
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallData;->update()V

    .line 253
    :cond_d
    const-string v35, "updatePhoneLocPeroid"

    const-wide/16 v36, 0x7080

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 252
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v35

    .line 254
    const-wide/32 v37, 0xea60

    .line 252
    mul-long v30, v35, v37

    .line 256
    .local v30, updatePhoneLocPeroid:J
    const-string v35, "lastlocUpdateTime"

    const-wide/16 v36, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 255
    invoke-static/range {v35 .. v36}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v23

    .line 258
    .local v23, lastlocUpdateTime:J
    sub-long v35, v7, v23

    cmp-long v35, v35, v30

    if-gtz v35, :cond_e

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 260
    :cond_e
    invoke-static {}, Lcom/isw/android/corp/message/MiniPhoneLocation;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static initTimer()V
    .locals 6

    .prologue
    .line 83
    const-string v0, "MiniEngineTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init engine timer...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/isw/android/corp/util/EngineTask;->engineTimer:Ljava/util/Timer;

    .line 85
    sget-object v0, Lcom/isw/android/corp/util/EngineTask;->engineTimer:Ljava/util/Timer;

    new-instance v1, Lcom/isw/android/corp/util/EngineTask$1;

    invoke-direct {v1}, Lcom/isw/android/corp/util/EngineTask$1;-><init>()V

    .line 90
    const-wide/32 v2, 0x1d4c0

    const-wide/32 v4, 0xdbba0

    .line 85
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 92
    return-void
.end method
