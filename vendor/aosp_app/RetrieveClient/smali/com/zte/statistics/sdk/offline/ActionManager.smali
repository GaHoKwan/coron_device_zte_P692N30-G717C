.class public Lcom/zte/statistics/sdk/offline/ActionManager;
.super Ljava/lang/Object;
.source "ActionManager.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->appContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPerfs(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActionManager;->init(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->appContext:Landroid/content/Context;

    const-string v1, "STATISTICS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getUseTimes(Ljava/lang/String;)I
    .locals 10
    .parameter "type"

    .prologue
    .line 80
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 81
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 82
    .local v6, launchInfo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 83
    .local v0, count:I
    const/4 v2, 0x0

    .line 84
    .local v2, found:Z
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 105
    return v0

    .line 84
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, keyA:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    if-nez v2, :cond_2

    .line 87
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v8, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    const/4 v2, 0x1

    .line 90
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v8, "count"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 93
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 101
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static increaseAppUse(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActionManager;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ITL"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 47
    .local v3, lastIncreaseTime:J
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v0, v6

    .line 48
    .local v0, currentTime:J
    sub-long v6, v0, v3

    sget-wide v8, Lcom/zte/statistics/sdk/comm/ConstantDefine;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v6, "launch"

    invoke-static {v6}, Lcom/zte/statistics/sdk/offline/ActionManager;->getUseTimes(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 54
    .local v5, useTimes:I
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "ITL"

    invoke-interface {v6, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "count"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v6, "market"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v6, "app_version"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->version:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v6, "did"

    sget-object v7, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v6, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v2, v6}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->increaseLaunchInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->appContext:Landroid/content/Context;

    .line 30
    :cond_0
    return-void
.end method

.method public static varargs onEvent(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "values"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActionManager;->init(Landroid/content/Context;)V

    .line 69
    const-string v2, "event"

    invoke-static {v2}, Lcom/zte/statistics/sdk/offline/ActionManager;->getUseTimes(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 70
    .local v1, useTimes:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "did"

    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, v2, p1}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->onEventInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;[Ljava/lang/String;)V

    .line 74
    return-void
.end method
