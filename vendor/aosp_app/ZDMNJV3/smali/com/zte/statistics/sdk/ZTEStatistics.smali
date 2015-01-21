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
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 277
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->fetchAppConfiguration()V

    return-void
.end method

.method private static asyncFetchAppConfiguration()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/zte/statistics/sdk/ZTEStatistics$2;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/ZTEStatistics$2;-><init>()V

    .line 312
    invoke-virtual {v0}, Lcom/zte/statistics/sdk/ZTEStatistics$2;->start()V

    .line 313
    return-void
.end method

.method private static fetchAppConfiguration()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 278
    sget-object v5, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const-string v6, "STATISTICS"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 286
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "Fetching new configuration."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    new-instance v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;-><init>()V

    .line 288
    .local v0, client:Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
    sget-object v5, Lcom/zte/statistics/sdk/GlobalInfo;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAppConfiguration(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 289
    .local v1, config:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App configuration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 305
    return-void

    .line 290
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 292
    .local v4, value:Ljava/lang/Object;
    const-string v6, "- %s = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 294
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appConfiguration."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Ljava/lang/Integer;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 295
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 296
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appConfiguration."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 297
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 298
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appConfiguration."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 299
    .restart local v4       #value:Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 300
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appConfiguration."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Ljava/lang/Long;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 301
    .restart local v4       #value:Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_0

    .line 302
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appConfiguration."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Ljava/lang/Float;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static getFeedbackModule()Lcom/zte/statistics/sdk/FeedbackModule;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/zte/statistics/sdk/FeedbackModule;->getInstance()Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v0

    return-object v0
.end method

.method public static increaseUseTimes(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->increaseAppUse(Landroid/content/Context;)V

    .line 63
    monitor-exit v1

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static init()V
    .locals 19

    .prologue
    .line 111
    sget-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "Already initialized..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .local v1, gc:Ljava/util/GregorianCalendar;
    .local v11, errorString:Ljava/lang/String;
    .local v12, market:Ljava/lang/String;
    .local v13, networkStateListener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    .local v17, tm:Landroid/telephony/TelephonyManager;
    .local v18, uid:Ljava/lang/String;
    :goto_0
    return-void

    .line 115
    .end local v1           #gc:Ljava/util/GregorianCalendar;
    .end local v11           #errorString:Ljava/lang/String;
    .end local v12           #market:Ljava/lang/String;
    .end local v13           #networkStateListener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    .end local v17           #tm:Landroid/telephony/TelephonyManager;
    .end local v18           #uid:Ljava/lang/String;
    :cond_0
    const-string v2, "Initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v1, Ljava/util/GregorianCalendar;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 118
    .restart local v1       #gc:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "GMT"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 119
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/zte/statistics/sdk/GlobalInfo;->criterion:J

    .line 121
    invoke-static {}, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->clearListeners()V

    .line 123
    const/4 v2, 0x0

    sput-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->isAppDebuggable:Z

    .line 125
    const/16 v18, 0x0

    .line 126
    .restart local v18       #uid:Ljava/lang/String;
    const/4 v12, 0x0

    .line 128
    .restart local v12       #market:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 129
    const/16 v4, 0x80

    .line 128
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 130
    .local v8, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ztefeedback_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ztefeedback_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 133
    :cond_1
    if-eqz v8, :cond_2

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 136
    :cond_2
    if-eqz v8, :cond_3

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 137
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->isAppDebuggable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v8           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    const-string v11, "No ZTEStatistics api key specified. Please make sure you have specified your api key in your AndroidManifest.xml"

    .line 147
    .restart local v11       #errorString:Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    :cond_4
    sget-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->isAppDebuggable:Z

    if-eqz v2, :cond_5

    .line 149
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v11           #errorString:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 141
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "Unexpected error while reading application info."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v10, v3}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #errorString:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_6
    if-eqz v12, :cond_7

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    :cond_7
    const-string v12, "preload"

    .line 159
    :cond_8
    sput-object v18, Lcom/zte/statistics/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    .line 160
    sput-object v12, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 163
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 164
    .restart local v17       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->carrier:Ljava/lang/String;

    .line 165
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->currentCarrier:Ljava/lang/String;

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    sput v2, Lcom/zte/statistics/sdk/GlobalInfo;->networkType:I

    .line 167
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appPackage:Ljava/lang/String;

    .line 168
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 169
    const-string v3, "android_id"

    .line 168
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->androidId:Ljava/lang/String;

    .line 170
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->userEmail:Ljava/lang/String;

    .line 171
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->getUserPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->userPhone:Ljava/lang/String;

    .line 173
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 174
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 180
    :goto_2
    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-static {v2}, Lcom/zte/statistics/sdk/util/Util;->transferDid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->setContext(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/offline/PayloadManager;->init()V

    .line 185
    invoke-static {}, Lcom/zte/statistics/sdk/FeedbackModule;->getInstance()Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/FeedbackModule;->setContext(Landroid/content/Context;)V

    .line 187
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->setContext(Landroid/content/Context;)V

    .line 190
    new-instance v13, Lcom/zte/statistics/sdk/ZTEStatistics$1;

    invoke-direct {v13}, Lcom/zte/statistics/sdk/ZTEStatistics$1;-><init>()V

    .line 203
    .restart local v13       #networkStateListener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    invoke-static {v13}, Lcom/zte/statistics/sdk/comm/NetworkStateReceiver;->addListener(Lcom/zte/statistics/sdk/comm/NetworkStateListener;)V

    .line 207
    :try_start_1
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 208
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 209
    .local v14, packageInfo:Landroid/content/pm/PackageInfo;
    iget v9, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 210
    .local v9, currentVersionCode:I
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    const-string v3, "STATISTICS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 211
    .local v16, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_version_code"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->version:Ljava/lang/String;

    .line 215
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appDisplayName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .end local v9           #currentVersionCode:I
    .end local v14           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v15           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #prefs:Landroid/content/SharedPreferences;
    :goto_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    .line 224
    const-string v2, "Done initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    .end local v13           #networkStateListener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    :cond_9
    const-string v2, "NO IMEI"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    goto/16 :goto_2

    .line 218
    .restart local v13       #networkStateListener:Lcom/zte/statistics/sdk/comm/NetworkStateListener;
    :catch_1
    move-exception v10

    .line 220
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "this app"

    sput-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appDisplayName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V
    .locals 2
    .parameter "context"
    .parameter "sendMode"

    .prologue
    .line 46
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 47
    :try_start_0
    sput-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->appContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->init()V

    .line 50
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->bFetchAppConfiguration:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->asyncFetchAppConfiguration()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->setCloudUrl(Ljava/lang/String;)V

    .line 46
    monitor-exit v1

    .line 55
    return-void

    .line 46
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
    .line 268
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 269
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->getInstance()Lcom/zte/statistics/sdk/ExceptionModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ExceptionModule;->onError(Ljava/lang/Throwable;)V

    .line 268
    monitor-exit v1

    .line 271
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "eventName"

    .prologue
    .line 96
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 97
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 96
    monitor-exit v1

    .line 99
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "eventName"
    .parameter "propName"

    .prologue
    .line 85
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 86
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 85
    monitor-exit v1

    .line 88
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "eventName"
    .parameter "propName"
    .parameter "value"

    .prologue
    .line 74
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 75
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->onEvent(Landroid/content/Context;[Ljava/lang/String;)V

    .line 74
    monitor-exit v1

    .line 77
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendCollectionInfo()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning()V

    .line 105
    monitor-exit v1

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendFeedBackDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "content"
    .parameter "phone"
    .parameter "email"

    .prologue
    .line 235
    sget-object v2, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v2

    .line 236
    :try_start_0
    new-instance v0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    const-string v1, "feedback"

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    invoke-virtual {v0, p2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setPhone(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->feedBackPutPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 235
    monitor-exit v2

    .line 242
    return-void

    .line 235
    .end local v0           #feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setCloudUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 335
    if-eqz p0, :cond_0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    .line 336
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_1
    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setProxyPackageName(Ljava/lang/String;)Z
    .locals 3
    .parameter "pn"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, result:Z
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->bSendMode:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-virtual {v1, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    sput-object p0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->proxyPackage:Ljava/lang/String;

    .line 325
    const/4 v0, 0x1

    .line 327
    :cond_0
    return v0
.end method

.method public static setReportUncaughtExceptions(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 259
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->getInstance()Lcom/zte/statistics/sdk/ExceptionModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ExceptionModule;->setReportUncaughtExceptions(Z)V

    .line 260
    return-void
.end method
