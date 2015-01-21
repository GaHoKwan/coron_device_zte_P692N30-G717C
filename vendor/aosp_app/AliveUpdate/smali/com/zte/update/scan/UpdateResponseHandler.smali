.class public Lcom/zte/update/scan/UpdateResponseHandler;
.super Ljava/lang/Object;
.source "UpdateResponseHandler.java"


# static fields
.field private static handler:Lcom/zte/update/scan/UpdateResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/zte/update/scan/UpdateResponseHandler;

    invoke-direct {v0}, Lcom/zte/update/scan/UpdateResponseHandler;-><init>()V

    sput-object v0, Lcom/zte/update/scan/UpdateResponseHandler;->handler:Lcom/zte/update/scan/UpdateResponseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zte/update/scan/UpdateResponseHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zte/update/scan/UpdateResponseHandler;->handler:Lcom/zte/update/scan/UpdateResponseHandler;

    return-object v0
.end method

.method private hasDiff(Lorg/json/JSONObject;)Z
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, b:Z
    :try_start_0
    const-string v1, "diff"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method dumpCacheInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/CacheAppInfo;
    .locals 13
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 130
    :goto_0
    return-object v2

    .line 95
    :cond_0
    new-instance v2, Lcom/zte/update/data/CacheAppInfo;

    invoke-direct {v2}, Lcom/zte/update/data/CacheAppInfo;-><init>()V

    .line 97
    .local v2, cacheInfo:Lcom/zte/update/data/CacheAppInfo;
    const-string v12, "publishtime"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 98
    .local v5, publishTime:J
    invoke-virtual {v2, v5, v6}, Lcom/zte/update/data/CacheAppInfo;->setPublishTime(J)V

    .line 100
    const-string v12, "summary"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, summary:Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/zte/update/data/CacheAppInfo;->setSummary(Ljava/lang/String;)V

    .line 103
    const-string v12, "versionCode"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 104
    .local v10, versionCode:I
    invoke-virtual {v2, v10}, Lcom/zte/update/data/CacheAppInfo;->setVersionCode(I)V

    .line 106
    const-string v12, "versionName"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, versionName:Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/zte/update/data/CacheAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 109
    const-string v12, "appName"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, appName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/zte/update/data/CacheAppInfo;->setAppName(Ljava/lang/String;)V

    .line 115
    const-string v12, "ZTE_AutoUpdate_Url"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, apkUrl:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/zte/update/data/CacheAppInfo;->setApkUrl(Ljava/lang/String;)V

    .line 118
    const-string v12, "size"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 119
    .local v7, size:J
    invoke-virtual {v2, v7, v8}, Lcom/zte/update/data/CacheAppInfo;->setAllSize(J)V

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/update/scan/UpdateResponseHandler;->hasDiff(Lorg/json/JSONObject;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 122
    const-string v12, "diff_size"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 123
    .local v3, diffSize:J
    invoke-virtual {v2, v3, v4}, Lcom/zte/update/data/CacheAppInfo;->setPatchSize(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v3           #diffSize:J
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/zte/update/data/CacheAppInfo;->setAppUid(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method dumpDownloadInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/DownloadInfo;
    .locals 6
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    const/4 v3, 0x0

    .line 86
    :cond_0
    :goto_0
    return-object v3

    .line 63
    :cond_1
    new-instance v3, Lcom/zte/update/data/DownloadInfo;

    invoke-direct {v3}, Lcom/zte/update/data/DownloadInfo;-><init>()V

    .line 64
    .local v3, dlInfo:Lcom/zte/update/data/DownloadInfo;
    const-string v4, "ZTE_AutoUpdate_Url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setDownloadUrlstr(Ljava/lang/String;)V

    .line 65
    const-string v4, "size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/zte/update/data/DownloadInfo;->setDownloadTotalSize(J)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setDownloadfileName(Ljava/lang/String;)V

    .line 68
    const-string v4, "appName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, appName:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/zte/update/data/DownloadInfo;->setAppName(Ljava/lang/String;)V

    .line 72
    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setInstallType(I)V

    .line 73
    const-string v4, "AliveUpdate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setInstallType(I)V

    .line 78
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/update/scan/UpdateResponseHandler;->hasDiff(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, "diff_size"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 80
    .local v1, diffSize:J
    invoke-virtual {v3, v1, v2}, Lcom/zte/update/data/DownloadInfo;->setDownloadTotalSize(J)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_diff.diff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setDownloadfileName(Ljava/lang/String;)V

    .line 82
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/zte/update/data/DownloadInfo;->setInstallType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1           #diffSize:J
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public parseJSONArray(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .parameter "array"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/update/data/CacheAppInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    .local p2, cacheMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/update/data/CacheAppInfo;>;"
    .local p3, dlMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/zte/update/data/DownloadInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 41
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "appName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, appName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpCacheInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, v3}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpDownloadInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v4

    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #appName:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #obj:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
