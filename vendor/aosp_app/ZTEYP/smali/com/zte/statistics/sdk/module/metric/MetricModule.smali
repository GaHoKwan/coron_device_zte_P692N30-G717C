.class public Lcom/zte/statistics/sdk/module/metric/MetricModule;
.super Ljava/lang/Object;
.source "MetricModule.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2
    .parameter
    .parameter "eventArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "count"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "count"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance p1, Lorg/json/JSONArray;

    .end local p1
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .restart local p1
    return-object p1
.end method

.method private static faultTolerant(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, times:Ljava/lang/String;
    const-string v1, "count"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "count"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "count"

    const-string v2, "1"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    return-object v0
.end method

.method public static increaseLaunchInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V
    .locals 16
    .parameter
    .parameter "recordType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v13, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    const-string v14, "STATISTICS"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 41
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v13, "appConfiguration.metrics_enabled"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 42
    new-instance v8, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    .line 43
    .local v8, payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    const/4 v7, 0x0

    .line 44
    .local v7, launchInfo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, found:Z
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 46
    .local v6, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 55
    :goto_0
    const/4 v11, 0x0

    .line 56
    .local v11, times:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 58
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v13, "count"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 60
    .local v12, useTimes:I
    const-string v13, "times"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 61
    const-string v13, ";"

    invoke-static {v11, v13}, Lcom/zte/statistics/sdk/util/Util;->containSubs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v10, v13, 0x1

    .line 64
    .local v10, reallyTimes:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 65
    if-eq v12, v10, :cond_1

    .line 66
    invoke-static/range {p0 .. p0}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultTolerant(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 69
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->maxTimesInvestigate(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 79
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #reallyTimes:I
    .end local v12           #useTimes:I
    :goto_1
    invoke-virtual {v8, v11}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putTime(Ljava/lang/String;)V

    .line 81
    if-eqz p0, :cond_2

    .line 82
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 85
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 88
    .end local v2           #found:Z
    .end local v6           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7           #launchInfo:Ljava/lang/String;
    .end local v8           #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    .end local v11           #times:Ljava/lang/String;
    :cond_2
    return-void

    .line 46
    .restart local v2       #found:Z
    .restart local v6       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7       #launchInfo:Ljava/lang/String;
    .restart local v8       #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    .local v5, keyA:Ljava/lang/String;
    const-string v14, "launch"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 48
    const/4 v2, 0x1

    .line 49
    const-string v13, ""

    invoke-interface {v9, v5, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 71
    .end local v5           #keyA:Ljava/lang/String;
    .restart local v11       #times:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    invoke-static/range {p0 .. p0}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultTolerant(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 82
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v4, v13}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->increaseAppUsePutData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static maxTimesEvent(Ljava/util/Map;Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 4
    .parameter
    .parameter "eventArray"
    .parameter "nowCount"
    .parameter "newEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "I",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    if-lt p2, v2, :cond_2

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 202
    const-string v2, "count"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v2, "count"

    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v0           #i:I
    :goto_1
    return-object p1

    .line 196
    .restart local v0       #i:I
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 199
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 205
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_2
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method private static maxTimesInvestigate(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "times"
    .parameter "useTimes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    if-le p2, v3, :cond_0

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    sub-int v3, p2, v3

    if-le v1, v3, :cond_1

    .line 183
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, value:Ljava/lang/String;
    const-string v3, "count"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "count"

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v3, "count"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1           #i:I
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-object p1

    .line 180
    .restart local v1       #i:I
    :cond_1
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, firstIndex:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs onEventInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;[Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter "recordType"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v20, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    const-string v21, "STATISTICS"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 98
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v20, "appConfiguration.event_enabled"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 99
    new-instance v16, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    .line 100
    .local v16, payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    const/4 v6, 0x0

    .line 101
    .local v6, eventInfo:Ljava/lang/String;
    const/4 v7, 0x0

    .line 102
    .local v7, found:Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 103
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 112
    :goto_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v5, eventArray:Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v12, newEvent:Lorg/json/JSONObject;
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v14

    .line 116
    .local v14, nowTime:Ljava/lang/String;
    :try_start_0
    const-string v20, "time"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    move-object/from16 v0, p2

    array-length v10, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v10, length:I
    packed-switch v10, :pswitch_data_0

    .line 138
    .end local v10           #length:I
    :goto_1
    const/4 v11, 0x0

    .line 139
    .local v11, nCount:I
    if-eqz v7, :cond_1

    .line 141
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v15, object:Lorg/json/JSONObject;
    const-string v20, "Events"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 144
    .local v18, reallyCount:I
    const-string v20, "count"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 145
    .local v13, nowCount:I
    move v11, v13

    .line 146
    move/from16 v0, v18

    if-eq v0, v13, :cond_1

    .line 147
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 162
    .end local v13           #nowCount:I
    .end local v15           #object:Lorg/json/JSONObject;
    .end local v18           #reallyCount:I
    :cond_1
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->maxTimesEvent(Ljava/util/Map;Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 167
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putEvent(Lorg/json/JSONArray;)V

    .line 168
    if-eqz p0, :cond_2

    .line 169
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 172
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 175
    .end local v5           #eventArray:Lorg/json/JSONArray;
    .end local v6           #eventInfo:Ljava/lang/String;
    .end local v7           #found:Z
    .end local v9           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #nCount:I
    .end local v12           #newEvent:Lorg/json/JSONObject;
    .end local v14           #nowTime:Ljava/lang/String;
    .end local v16           #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_2
    return-void

    .line 103
    .restart local v6       #eventInfo:Ljava/lang/String;
    .restart local v7       #found:Z
    .restart local v9       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16       #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 104
    .local v8, keyA:Ljava/lang/String;
    const-string v21, "event"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 105
    const/4 v7, 0x1

    .line 106
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 120
    .end local v8           #keyA:Ljava/lang/String;
    .restart local v5       #eventArray:Lorg/json/JSONArray;
    .restart local v10       #length:I
    .restart local v12       #newEvent:Lorg/json/JSONObject;
    .restart local v14       #nowTime:Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v20, "event"

    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 135
    .end local v10           #length:I
    :catch_0
    move-exception v4

    .line 136
    .local v4, e1:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 123
    .end local v4           #e1:Lorg/json/JSONException;
    .restart local v10       #length:I
    :pswitch_1
    :try_start_4
    const-string v20, "event"

    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v20, "prop"

    const/16 v21, 0x1

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 127
    :pswitch_2
    const-string v20, "event"

    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v20, "prop"

    const/16 v21, 0x1

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v20, "value"

    const/16 v21, 0x2

    aget-object v21, p2, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 151
    .end local v10           #length:I
    .restart local v11       #nCount:I
    :catch_1
    move-exception v3

    .line 152
    .local v3, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v5

    goto/16 :goto_2

    .line 155
    .end local v3           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v5

    goto/16 :goto_2

    .line 164
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 165
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 169
    .end local v3           #e:Lorg/json/JSONException;
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 170
    .local v19, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->increaseAppUsePutData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "appContext"

    .prologue
    .line 30
    sput-object p0, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    .line 31
    return-void
.end method
