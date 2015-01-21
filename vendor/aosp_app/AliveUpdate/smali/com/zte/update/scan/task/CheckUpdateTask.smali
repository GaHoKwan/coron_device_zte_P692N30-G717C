.class public Lcom/zte/update/scan/task/CheckUpdateTask;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected retryTimes:I

.field protected sleepwaitTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x1388

    iput v0, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->sleepwaitTime:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->retryTimes:I

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "retryTimes"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x1388

    iput v0, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->sleepwaitTime:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->retryTimes:I

    .line 29
    iput p1, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->retryTimes:I

    .line 30
    return-void
.end method


# virtual methods
.method protected getResponseTimeout(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, conn:Lcom/zte/update/connection/INetworkConnection;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->retryTimes:I

    if-ge v2, v5, :cond_3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to getResponse times="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/Configuration;->getMultiUpdateServer()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, urlstr:Ljava/lang/String;
    const-string v5, "POST"

    invoke-static {v4, v5}, Lcom/zte/update/connection/NetworkConnectionFactroy;->getNetworkConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/update/connection/INetworkConnection;

    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Lcom/zte/update/connection/INetworkConnection;->connectAndWriteObject(Ljava/lang/Object;)V

    .line 85
    invoke-interface {v0}, Lcom/zte/update/connection/INetworkConnection;->getResondObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/zte/aliveupdate/AliveUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 95
    .local v3, response:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/zte/update/connection/INetworkConnection;->disconnect()V

    :cond_0
    return-object v3

    .line 89
    .end local v3           #response:Ljava/lang/Object;
    .end local v4           #urlstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Lcom/zte/aliveupdate/AliveUpdateException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get response error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/zte/aliveupdate/AliveUpdateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcom/zte/aliveupdate/AliveUpdateException;->printStackTrace()V

    .line 92
    iget v5, p0, Lcom/zte/update/scan/task/CheckUpdateTask;->sleepwaitTime:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->sleepwait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Lcom/zte/update/connection/INetworkConnection;->disconnect()V

    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1           #e:Lcom/zte/aliveupdate/AliveUpdateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Lcom/zte/update/connection/INetworkConnection;->disconnect()V

    :cond_2
    throw v5

    .line 100
    :cond_3
    new-instance v5, Lcom/zte/aliveupdate/AliveUpdateException;

    const-string v6, "connect time out"

    invoke-direct {v5, v6}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected logJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "tag"
    .parameter "array"

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, csr:Lcom/zte/statistics/sdk/CollectionSendResult;
    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo(Lcom/zte/statistics/sdk/CollectionSendResult;)V

    .line 38
    new-instance v6, Lcom/zte/update/scan/Scaner;

    invoke-direct {v6}, Lcom/zte/update/scan/Scaner;-><init>()V

    .line 39
    .local v6, utils:Lcom/zte/update/scan/Scaner;
    invoke-virtual {v6}, Lcom/zte/update/scan/Scaner;->getRequestAppInfoJSON()Lorg/json/JSONArray;

    move-result-object v4

    .line 41
    .local v4, requestArray:Lorg/json/JSONArray;
    const-string v7, "request"

    invoke-virtual {p0, v7, v4}, Lcom/zte/update/scan/task/CheckUpdateTask;->logJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 44
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/zte/update/scan/task/CheckUpdateTask;->getResponseTimeout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 45
    .local v3, object:Ljava/lang/Object;
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, responseArray:Lorg/json/JSONArray;
    const-string v7, "response"

    invoke-virtual {p0, v7, v5}, Lcom/zte/update/scan/task/CheckUpdateTask;->logJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 48
    invoke-virtual {v6, v5}, Lcom/zte/update/scan/Scaner;->parseResponseJSONtoStorage(Lorg/json/JSONArray;)I

    move-result v2

    .line 49
    .local v2, n:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call ObserverManager.getInstance().update"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/aliveupdate/Configuration;->refreshLastCheckTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2           #n:I
    .end local v3           #object:Ljava/lang/Object;
    .end local v5           #responseArray:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
