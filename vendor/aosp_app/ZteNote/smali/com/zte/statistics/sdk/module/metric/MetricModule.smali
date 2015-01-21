.class public Lcom/zte/statistics/sdk/module/metric/MetricModule;
.super Ljava/lang/Object;
.source "MetricModule.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 228
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "count"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "count"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance p1, Lorg/json/JSONArray;

    .end local p1
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 231
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
    .line 219
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, times:Ljava/lang/String;
    const-string v1, "count"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "count"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "count"

    const-string v2, "1"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-object v0
.end method

.method public static increaseLaunchInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V
    .locals 17
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
    .line 41
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v14, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    const-string v15, "STATISTICS"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 42
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v14, "appConfiguration.metrics_enabled"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 43
    new-instance v9, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    .line 44
    .local v9, payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    const/4 v8, 0x0

    .line 45
    .local v8, launchInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 46
    .local v3, found:Z
    invoke-interface {v10}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 47
    .local v7, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 56
    :goto_0
    const/4 v12, 0x0

    .line 57
    .local v12, times:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 59
    :try_start_0
    new-instance v1, Lcom/zte/statistics/sdk/util/DesUtils;

    const-string v14, "ZTE"

    invoke-direct {v1, v14}, Lcom/zte/statistics/sdk/util/DesUtils;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, des:Lcom/zte/statistics/sdk/util/DesUtils;
    invoke-virtual {v1, v8}, Lcom/zte/statistics/sdk/util/DesUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v14, "count"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 64
    .local v13, useTimes:I
    const-string v14, "times"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    const-string v14, ";"

    invoke-static {v12, v14}, Lcom/zte/statistics/sdk/util/Util;->containSubs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v11, v14, 0x1

    .line 68
    .local v11, reallyTimes:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    if-eq v13, v11, :cond_1

    .line 70
    invoke-static/range {p0 .. p0}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultTolerant(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 73
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->maxTimesInvestigate(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 83
    .end local v1           #des:Lcom/zte/statistics/sdk/util/DesUtils;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #reallyTimes:I
    .end local v13           #useTimes:I
    :goto_1
    invoke-virtual {v9, v12}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putTime(Ljava/lang/String;)V

    .line 85
    if-eqz p0, :cond_2

    .line 86
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 89
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 92
    .end local v3           #found:Z
    .end local v7           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #launchInfo:Ljava/lang/String;
    .end local v9           #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    .end local v12           #times:Ljava/lang/String;
    :cond_2
    return-void

    .line 47
    .restart local v3       #found:Z
    .restart local v7       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8       #launchInfo:Ljava/lang/String;
    .restart local v9       #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 48
    .local v6, keyA:Ljava/lang/String;
    const-string v15, "launch"

    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 49
    const/4 v3, 0x1

    .line 50
    const-string v14, ""

    invoke-interface {v10, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 75
    .end local v6           #keyA:Ljava/lang/String;
    .restart local v12       #times:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    invoke-static/range {p0 .. p0}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultTolerant(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 81
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 86
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v5, v14}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->increaseAppUsePutData(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 200
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    if-lt p2, v2, :cond_2

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 208
    const-string v2, "count"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "count"

    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v0           #i:I
    :goto_1
    return-object p1

    .line 202
    .restart local v0       #i:I
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 205
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
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
    .line 184
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    if-le p2, v3, :cond_0

    .line 185
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    sub-int v3, p2, v3

    if-le v1, v3, :cond_1

    .line 189
    sget v3, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, value:Ljava/lang/String;
    const-string v3, "count"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const-string v3, "count"

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v3, "count"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v1           #i:I
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-object p1

    .line 186
    .restart local v1       #i:I
    :cond_1
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, firstIndex:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs onEventInfo(Ljava/util/Map;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;[Ljava/lang/String;)V
    .locals 24
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
    .line 101
    .local p0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v21, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    const-string v22, "STATISTICS"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 102
    .local v18, prefs:Landroid/content/SharedPreferences;
    const-string v21, "appConfiguration.event_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 103
    new-instance v17, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;)V

    .line 104
    .local v17, payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    const/4 v7, 0x0

    .line 105
    .local v7, eventInfo:Ljava/lang/String;
    const/4 v8, 0x0

    .line 106
    .local v8, found:Z
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 107
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_3

    .line 116
    :goto_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .local v6, eventArray:Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v13, newEvent:Lorg/json/JSONObject;
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, nowTime:Ljava/lang/String;
    :try_start_0
    const-string v21, "time"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    move-object/from16 v0, p2

    array-length v11, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v11, length:I
    packed-switch v11, :pswitch_data_0

    .line 142
    .end local v11           #length:I
    :goto_1
    const/4 v12, 0x0

    .line 143
    .local v12, nCount:I
    if-eqz v8, :cond_1

    .line 145
    :try_start_1
    new-instance v3, Lcom/zte/statistics/sdk/util/DesUtils;

    const-string v21, "ZTE"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/zte/statistics/sdk/util/DesUtils;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, des:Lcom/zte/statistics/sdk/util/DesUtils;
    invoke-virtual {v3, v7}, Lcom/zte/statistics/sdk/util/DesUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v16, object:Lorg/json/JSONObject;
    const-string v21, "Events"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 149
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 150
    .local v19, reallyCount:I
    const-string v21, "count"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 151
    .local v14, nowCount:I
    move v12, v14

    .line 152
    move/from16 v0, v19

    if-eq v0, v14, :cond_1

    .line 153
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 168
    .end local v3           #des:Lcom/zte/statistics/sdk/util/DesUtils;
    .end local v14           #nowCount:I
    .end local v16           #object:Lorg/json/JSONObject;
    .end local v19           #reallyCount:I
    :cond_1
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v6, v12, v13}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->maxTimesEvent(Ljava/util/Map;Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 173
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->putEvent(Lorg/json/JSONArray;)V

    .line 174
    if-eqz p0, :cond_2

    .line 175
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 178
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/offline/PayloadManager;->putPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 181
    .end local v6           #eventArray:Lorg/json/JSONArray;
    .end local v7           #eventInfo:Ljava/lang/String;
    .end local v8           #found:Z
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #nCount:I
    .end local v13           #newEvent:Lorg/json/JSONObject;
    .end local v15           #nowTime:Ljava/lang/String;
    .end local v17           #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_2
    return-void

    .line 107
    .restart local v7       #eventInfo:Ljava/lang/String;
    .restart local v8       #found:Z
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17       #payload:Lcom/zte/statistics/sdk/module/metric/MetricPayload;
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 108
    .local v9, keyA:Ljava/lang/String;
    const-string v22, "event"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 109
    const/4 v8, 0x1

    .line 110
    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 124
    .end local v9           #keyA:Ljava/lang/String;
    .restart local v6       #eventArray:Lorg/json/JSONArray;
    .restart local v11       #length:I
    .restart local v13       #newEvent:Lorg/json/JSONObject;
    .restart local v15       #nowTime:Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v21, "event"

    const/16 v22, 0x0

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 139
    .end local v11           #length:I
    :catch_0
    move-exception v5

    .line 140
    .local v5, e1:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v5           #e1:Lorg/json/JSONException;
    .restart local v11       #length:I
    :pswitch_1
    :try_start_4
    const-string v21, "event"

    const/16 v22, 0x0

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v21, "prop"

    const/16 v22, 0x1

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 131
    :pswitch_2
    const-string v21, "event"

    const/16 v22, 0x0

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v21, "prop"

    const/16 v22, 0x1

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v21, "value"

    const/16 v22, 0x2

    aget-object v22, p2, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 157
    .end local v11           #length:I
    .restart local v12       #nCount:I
    :catch_1
    move-exception v4

    .line 158
    .local v4, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6

    goto/16 :goto_2

    .line 161
    .end local v4           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v4

    .line 162
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/zte/statistics/sdk/module/metric/MetricModule;->faultByEvent(Ljava/util/Map;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6

    goto/16 :goto_2

    .line 170
    .end local v4           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 171
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 175
    .end local v4           #e:Lorg/json/JSONException;
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 176
    .local v20, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->increaseAppUsePutData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 122
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
    .line 31
    sput-object p0, Lcom/zte/statistics/sdk/module/metric/MetricModule;->appContext:Landroid/content/Context;

    .line 32
    return-void
.end method
