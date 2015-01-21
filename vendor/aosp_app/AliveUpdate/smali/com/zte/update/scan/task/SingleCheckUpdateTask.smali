.class public Lcom/zte/update/scan/task/SingleCheckUpdateTask;
.super Lcom/zte/update/scan/task/CheckUpdateTask;
.source "SingleCheckUpdateTask.java"


# instance fields
.field appName:Ljava/lang/String;

.field desc:Ljava/lang/String;

.field packName:Ljava/lang/String;

.field request:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packName"
    .parameter "desc"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/update/scan/task/CheckUpdateTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->packName:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->desc:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected handleResponse(Lcom/zte/update/scan/Scaner;Lorg/json/JSONArray;)V
    .locals 6
    .parameter "utils"
    .parameter "response"

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Lcom/zte/update/scan/Scaner;->parseResponseJSONtoMergeStorage(Lorg/json/JSONArray;)I

    move-result v0

    .line 60
    .local v0, num:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->appName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 25
    new-instance v2, Lcom/zte/update/scan/Scaner;

    invoke-direct {v2}, Lcom/zte/update/scan/Scaner;-><init>()V

    .line 26
    .local v2, utils:Lcom/zte/update/scan/Scaner;
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->packName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->packName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/update/scan/Scaner;->getRequestAppInfoJSONByName(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    if-nez v3, :cond_2

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    const-string v3, "packName is null!"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zte/update/scan/Scaner;->getRequestAppInfoJSONByDesc(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    goto :goto_0

    .line 38
    :cond_2
    const-string v3, "request"

    iget-object v4, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    invoke-virtual {p0, v3, v4}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->logJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "appName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->appName:Ljava/lang/String;

    .line 41
    new-instance v1, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->request:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->getResponseTimeout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, response:Lorg/json/JSONArray;
    const-string v3, "response"

    invoke-virtual {p0, v3, v1}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->logJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 44
    invoke-virtual {p0, v2, v1}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->handleResponse(Lcom/zte/update/scan/Scaner;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 46
    .end local v1           #response:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->appName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 49
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/update/scan/task/SingleCheckUpdateTask;->appName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1
.end method
