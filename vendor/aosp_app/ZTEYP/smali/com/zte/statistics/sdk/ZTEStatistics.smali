.class public Lcom/zte/statistics/sdk/ZTEStatistics;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field public static final sync:[Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 50
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/offline/ActionManager;->clearPerfs(Landroid/content/Context;)V

    .line 50
    monitor-exit v1

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static increaseUseTimes()V
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/offline/ActionManager;->increaseAppUse(Landroid/content/Context;)V

    .line 61
    monitor-exit v1

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static init()V
    .locals 18

    .prologue
    .line 109
    sget-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "Already initialized..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .local v1, gc:Ljava/util/GregorianCalendar;
    .local v11, errorString:Ljava/lang/String;
    .local v12, market:Ljava/lang/String;
    .local v16, tm:Landroid/telephony/TelephonyManager;
    .local v17, uid:Ljava/lang/String;
    :goto_0
    return-void

    .line 113
    .end local v1           #gc:Ljava/util/GregorianCalendar;
    .end local v11           #errorString:Ljava/lang/String;
    .end local v12           #market:Ljava/lang/String;
    .end local v16           #tm:Landroid/telephony/TelephonyManager;
    .end local v17           #uid:Ljava/lang/String;
    :cond_0
    const-string v2, "Initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v1, Ljava/util/GregorianCalendar;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 116
    .restart local v1       #gc:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "GMT"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/zte/statistics/sdk/GlobalInfo;->criterion:J

    .line 119
    const/16 v17, 0x0

    .line 120
    .restart local v17       #uid:Ljava/lang/String;
    const/4 v12, 0x0

    .line 122
    .restart local v12       #market:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 123
    const/16 v4, 0x80

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 124
    .local v8, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appuid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appuid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 127
    :cond_1
    if-eqz v8, :cond_2

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 137
    .end local v8           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    const-string v11, "No ZTEStatistics api key specified. Please make sure you have specified your api key in your AndroidManifest.xml"

    .line 138
    .restart local v11       #errorString:Ljava/lang/String;
    if-eqz v17, :cond_3

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    :cond_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_4
    if-eqz v12, :cond_5

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    :cond_5
    const-string v12, "preload"

    .line 146
    :cond_6
    sput-object v17, Lcom/zte/statistics/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    .line 147
    sput-object v12, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 150
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 151
    .restart local v16       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->carrier:Ljava/lang/String;

    .line 152
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->currentCarrier:Ljava/lang/String;

    .line 153
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    sput v2, Lcom/zte/statistics/sdk/GlobalInfo;->networkType:I

    .line 154
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->userEmail:Ljava/lang/String;

    .line 155
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->getUserPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->userPhone:Ljava/lang/String;

    .line 157
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 158
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 164
    :goto_2
    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->transferDid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->setContext(Landroid/content/Context;)V

    .line 167
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/offline/PayloadManager;->init()V

    .line 171
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->setContext(Landroid/content/Context;)V

    .line 175
    :try_start_1
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 176
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 177
    .local v13, packageInfo:Landroid/content/pm/PackageInfo;
    iget v9, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 178
    .local v9, currentVersionCode:I
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const-string v3, "STATISTICS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 179
    .local v15, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_version_code"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->version:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v9           #currentVersionCode:I
    .end local v13           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    :goto_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    .line 189
    const-string v2, "Done initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    .end local v11           #errorString:Ljava/lang/String;
    .end local v16           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v10

    .line 132
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "Unexpected error while reading application info."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v10, v3}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 160
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #errorString:Ljava/lang/String;
    .restart local v16       #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v2, "NO IMEI"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    goto :goto_2

    .line 183
    :catch_1
    move-exception v10

    .line 185
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->init()V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->setCloudUrl(Ljava/lang/String;)V

    .line 42
    monitor-exit v1

    .line 47
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 207
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->getInstance()Lcom/zte/statistics/sdk/ExceptionModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ExceptionModule;->onError(Ljava/lang/Throwable;)V

    .line 207
    monitor-exit v1

    .line 210
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"

    .prologue
    .line 94
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Lcom/zte/statistics/sdk/offline/ActionManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 94
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"
    .parameter "propName"

    .prologue
    .line 83
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/zte/statistics/sdk/offline/ActionManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 83
    monitor-exit v1

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"
    .parameter "propName"
    .parameter "value"

    .prologue
    .line 72
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/zte/statistics/sdk/offline/ActionManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 72
    monitor-exit v1

    .line 75
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendCollectionInfo(Lcom/zte/statistics/sdk/CollectionSendResult;)V
    .locals 2
    .parameter "csr"

    .prologue
    .line 103
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning(Lcom/zte/statistics/sdk/CollectionSendResult;)V

    .line 103
    monitor-exit v1

    .line 106
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCloudUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 217
    if-eqz p0, :cond_0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    .line 218
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setReportUncaughtExceptions(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 198
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->getInstance()Lcom/zte/statistics/sdk/ExceptionModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ExceptionModule;->setReportUncaughtExceptions(Z)V

    .line 199
    return-void
.end method
