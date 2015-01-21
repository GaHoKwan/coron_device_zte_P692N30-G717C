.class public Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->appContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->appContext:Landroid/content/Context;

    const-string v1, "STATISTICS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getUseTimes(Ljava/lang/String;)I
    .locals 12
    .parameter "type"

    .prologue
    .line 77
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 78
    .local v7, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 79
    .local v8, launchInfo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 80
    .local v0, count:I
    const/4 v4, 0x0

    .line 81
    .local v4, found:Z
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 109
    return v0

    .line 81
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    .local v6, keyA:Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 83
    if-nez v4, :cond_2

    .line 84
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v10, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    new-instance v1, Lcom/zte/statistics/sdk/util/DesUtils;

    const-string v10, "ZTE"

    invoke-direct {v1, v10}, Lcom/zte/statistics/sdk/util/DesUtils;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, des:Lcom/zte/statistics/sdk/util/DesUtils;
    :try_start_0
    invoke-virtual {v1, v8}, Lcom/zte/statistics/sdk/util/DesUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 92
    :goto_1
    const/4 v4, 0x1

    .line 94
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v10, "count"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 89
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 90
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v3           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 98
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 105
    .end local v1           #des:Lcom/zte/statistics/sdk/util/DesUtils;
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static increaseAppUse(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ITL"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 44
    .local v3, lastIncreaseTime:J
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v0, v6

    .line 45
    .local v0, currentTime:J
    sub-long v6, v0, v3

    sget-wide v8, Lcom/zte/statistics/sdk/comm/ConstantDefine;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v6, "launch"

    invoke-static {v6}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getUseTimes(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 51
    .local v5, useTimes:I
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "ITL"

    invoke-interface {v6, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "count"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v6, "market"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v6, "app_version"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->version:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v6, "did"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v6, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v2, v6}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->increaseLaunchInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->appContext:Landroid/content/Context;

    .line 31
    :cond_0
    return-void
.end method

.method public static varargs onEvent(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "values"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->init(Landroid/content/Context;)V

    .line 66
    const-string v2, "event"

    invoke-static {v2}, Lcom/zte/statistics/sdk/offline/ActivityLifecycleManager;->getUseTimes(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 67
    .local v1, useTimes:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "did"

    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, v2, p1}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->onEventInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;[Ljava/lang/String;)V

    .line 71
    return-void
.end method
