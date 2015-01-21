.class public Lcom/zte/update/scan/Scaner;
.super Ljava/lang/Object;
.source "Scaner.java"


# static fields
.field static requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

.field static responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/zte/update/scan/UpdateRequestBuilder;->getInstance()Lcom/zte/update/scan/UpdateRequestBuilder;

    move-result-object v0

    sput-object v0, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    .line 29
    invoke-static {}, Lcom/zte/update/scan/UpdateResponseHandler;->getInstance()Lcom/zte/update/scan/UpdateResponseHandler;

    move-result-object v0

    sput-object v0, Lcom/zte/update/scan/Scaner;->responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getRequestAppInfoJSON()Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 49
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v3, jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/update/data/DataManager;->getRequestAppInfos()Ljava/util/Collection;

    move-result-object v5

    .line 52
    .local v5, requestAppInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/update/data/RequestAppInfo;

    .line 54
    .local v2, info:Lcom/zte/update/data/RequestAppInfo;
    :try_start_0
    sget-object v6, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-virtual {v6, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v4

    .line 55
    .local v4, object:Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v4           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #info:Lcom/zte/update/data/RequestAppInfo;
    :cond_0
    return-object v3
.end method

.method public getRequestAppInfoJSONByDesc(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter "desc"

    .prologue
    .line 79
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v1, jsonArray:Lorg/json/JSONArray;
    new-instance v0, Lcom/zte/update/data/RequestAppInfo;

    invoke-direct {v0}, Lcom/zte/update/data/RequestAppInfo;-><init>()V

    .line 82
    .local v0, info:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {v0, p1}, Lcom/zte/update/data/RequestAppInfo;->setAppDescription(Ljava/lang/String;)V

    .line 83
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/zte/update/data/RequestAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/zte/update/data/RequestAppInfo;->setVersionCode(I)V

    .line 85
    sget-object v3, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-virtual {v3, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v2

    .line 86
    .local v2, object:Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 87
    return-object v1
.end method

.method public getRequestAppInfoJSONByName(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "name"

    .prologue
    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zte/update/data/DataManager;->getRequestAppInfoByPackName(Ljava/lang/String;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 67
    .local v0, info:Lcom/zte/update/data/RequestAppInfo;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 74
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 70
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequestAppInfoJSONByName:info.appName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v3, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-virtual {v3, v0}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v2

    .line 72
    .local v2, object:Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public getSelfAppDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadSingleRequestInfoByAppDescription(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "appMetaInfo"

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadSingleRequestInfoByPackageName(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zte/update/data/DataManager;->loadRequestInfoByPackage(Ljava/lang/String;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v2

    .line 175
    .local v2, reqAppInfo:Lcom/zte/update/data/RequestAppInfo;
    sget-object v3, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-virtual {v3, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->convertToJSON(Lcom/zte/update/data/RequestAppInfo;)Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;

    move-result-object v1

    .line 176
    .local v1, json:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 177
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public parseResponseJSONtoMergeStorage(Lorg/json/JSONArray;)I
    .locals 13
    .parameter "jsonArray"

    .prologue
    .line 130
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v2

    .line 131
    .local v2, datamgr:Lcom/zte/update/data/DataManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, cacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/update/data/CacheAppInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v4, downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/update/data/DownloadInfo;>;"
    const/4 v8, 0x0

    .line 135
    .local v8, num:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 137
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 138
    .local v7, jsonObject:Lorg/json/JSONObject;
    sget-object v9, Lcom/zte/update/scan/Scaner;->responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;

    invoke-virtual {v9, v7}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpCacheInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    .line 139
    .local v0, cacheInfo:Lcom/zte/update/data/CacheAppInfo;
    sget-object v9, Lcom/zte/update/scan/Scaner;->responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;

    invoke-virtual {v9, v7}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpDownloadInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v3

    .line 141
    .local v3, downloadInfo:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v0}, Lcom/zte/update/data/CacheAppInfo;->getPublishTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 135
    .end local v0           #cacheInfo:Lcom/zte/update/data/CacheAppInfo;
    .end local v3           #downloadInfo:Lcom/zte/update/data/DownloadInfo;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v5

    .line 149
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v5           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cacheList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    if-gtz v8, :cond_2

    .line 163
    :goto_2
    return v8

    .line 158
    :cond_2
    invoke-virtual {v2, v1}, Lcom/zte/update/data/DataManager;->mergeToCacheInfoStorage(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v2}, Lcom/zte/update/data/DataManager;->clearSuccessDownloadInfo()V

    .line 161
    invoke-virtual {v2, v4}, Lcom/zte/update/data/DataManager;->mergeToDownloadInfoStorage(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public parseResponseJSONtoStorage(Lorg/json/JSONArray;)I
    .locals 13
    .parameter "jsonArray"

    .prologue
    .line 92
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v2

    .line 93
    .local v2, datamgr:Lcom/zte/update/data/DataManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, cacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/update/data/CacheAppInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, downloadList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/update/data/DownloadInfo;>;"
    const/4 v8, 0x0

    .line 97
    .local v8, num:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 99
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 100
    .local v7, jsonObject:Lorg/json/JSONObject;
    sget-object v9, Lcom/zte/update/scan/Scaner;->responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;

    invoke-virtual {v9, v7}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpCacheInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    .line 101
    .local v0, cacheInfo:Lcom/zte/update/data/CacheAppInfo;
    sget-object v9, Lcom/zte/update/scan/Scaner;->responseHandler:Lcom/zte/update/scan/UpdateResponseHandler;

    invoke-virtual {v9, v7}, Lcom/zte/update/scan/UpdateResponseHandler;->dumpDownloadInfo(Lorg/json/JSONObject;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v3

    .line 103
    .local v3, downloadInfo:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v0}, Lcom/zte/update/data/CacheAppInfo;->getPublishTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    add-int/lit8 v8, v8, 0x1

    .line 97
    .end local v0           #cacheInfo:Lcom/zte/update/data/CacheAppInfo;
    .end local v3           #downloadInfo:Lcom/zte/update/data/DownloadInfo;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v5

    .line 111
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v5           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cacheList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Lcom/zte/update/data/DataManager;->saveToCacheInfoStorage(Ljava/util/Collection;)V

    .line 120
    invoke-virtual {v2}, Lcom/zte/update/data/DataManager;->clearSuccessDownloadInfo()V

    .line 121
    invoke-virtual {v2, v4}, Lcom/zte/update/data/DataManager;->mergeToDownloadInfoStorage(Ljava/util/Collection;)V

    .line 123
    return v8
.end method

.method public scanAllZteApplication(Landroid/content/pm/PackageManager;)Ljava/util/Collection;
    .locals 7
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/16 v5, 0x80

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, pckgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 36
    .local v2, pckgInfo:Landroid/content/pm/PackageInfo;
    sget-object v5, Lcom/zte/update/scan/Scaner;->requestBuilder:Lcom/zte/update/scan/UpdateRequestBuilder;

    invoke-virtual {v5, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->getRequestAppInfo(Landroid/content/pm/PackageInfo;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v1

    .line 38
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    if-eqz v1, :cond_0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    .end local v2           #pckgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method
