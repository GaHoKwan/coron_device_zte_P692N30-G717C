.class public Lcom/zte/update/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static instance:Lcom/zte/update/download/DownloadManager; = null

.field private static final nWorkTask:I = 0x3


# instance fields
.field private idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tskMgr:Lcom/zte/update/download/TaskManager;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/zte/update/download/TaskManager;

    invoke-direct {v0, p1}, Lcom/zte/update/download/TaskManager;-><init>(I)V

    iput-object v0, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    .line 34
    return-void
.end method

.method private checkParams(Lcom/zte/update/data/DownloadInfo;)V
    .locals 5
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string v1, "download info can not be loaded"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadUrlstr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 191
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 194
    :cond_3
    const-string v1, ""

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_4

    const-string v1, ""

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    :cond_4
    const-string v1, ""

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadUrlstr()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 195
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 199
    :cond_6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->procParams(Lcom/zte/update/data/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static getInstance()Lcom/zte/update/download/DownloadManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/zte/update/download/DownloadManager;->instance:Lcom/zte/update/download/DownloadManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zte/update/download/DownloadManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/zte/update/download/DownloadManager;-><init>(I)V

    sput-object v0, Lcom/zte/update/download/DownloadManager;->instance:Lcom/zte/update/download/DownloadManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/zte/update/download/DownloadManager;->instance:Lcom/zte/update/download/DownloadManager;

    return-object v0
.end method

.method private getTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;
    .locals 3
    .parameter "info"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/zte/update/download/DownloadManager;->isExisting(Lcom/zte/update/data/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zte/update/download/TaskManager;->getTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/zte/update/download/DownloadTask;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private procParams(Lcom/zte/update/data/DownloadInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 209
    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 213
    .local v1, lastIndex:I
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, appname:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/zte/update/data/DownloadInfo;->setAppName(Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.setAppName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .end local v0           #appname:Ljava/lang/String;
    .end local v1           #lastIndex:I
    :cond_1
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zte/update/data/DownloadInfo;->setDownloadfileName(Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.setDownloadfileName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :cond_2
    return-void
.end method


# virtual methods
.method public addTask(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 54
    new-instance v0, Lcom/zte/update/download/DownloadTask;

    invoke-direct {v0, p1}, Lcom/zte/update/download/DownloadTask;-><init>(Lcom/zte/update/data/DownloadInfo;)V

    .line 55
    .local v0, dlTsk:Lcom/zte/update/download/DownloadTask;
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The task can be found by the key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/zte/update/download/DownloadManager;->delTask(Lcom/zte/update/data/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const-string v2, "Failed to delete the legacy download task"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add Task ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    invoke-virtual {v2, v0}, Lcom/zte/update/download/TaskManager;->addTask(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 65
    const-string v2, "The task id is null"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearDownloadTask(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->getTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;

    move-result-object v0

    .line 161
    .local v0, task:Lcom/zte/update/download/DownloadTask;
    if-eqz v0, :cond_0

    .line 162
    const-string v1, "clearDownloadTask task clear"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/zte/update/download/DownloadTask;->clear()V

    .line 165
    :cond_0
    return-void
.end method

.method public delAllTasks()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, meId:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v1           #meId:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    invoke-virtual {v2}, Lcom/zte/update/download/TaskManager;->delAllTasks()V

    .line 156
    return-void
.end method

.method public delTask(Lcom/zte/update/data/DownloadInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager:delTask key ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/zte/update/download/DownloadManager;->getDownloadTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;

    move-result-object v1

    .line 87
    .local v1, tsk:Lcom/zte/update/download/DownloadTask;
    if-nez v1, :cond_0

    .line 88
    const-string v2, "Can not find download task before deleting"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 100
    .end local v1           #tsk:Lcom/zte/update/download/DownloadTask;
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 82
    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #tsk:Lcom/zte/update/download/DownloadTask;
    :cond_0
    invoke-virtual {v1}, Lcom/zte/update/download/DownloadTask;->stop()V

    .line 93
    const-string v2, "After stop the download task"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/zte/update/download/TaskManager;->delTask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "Failed to delete the download task"

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 100
    goto :goto_0
.end method

.method public getDownloadTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;
    .locals 3
    .parameter "info"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 106
    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zte/update/download/TaskManager;->getTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/zte/update/download/DownloadTask;

    goto :goto_0
.end method

.method public getExecTaskMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    iget-object v0, v0, Lcom/zte/update/download/TaskManager;->execTaskMap:Ljava/util/Map;

    return-object v0
.end method

.method public isAllTaskEnd()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    invoke-virtual {v0}, Lcom/zte/update/download/TaskManager;->isAllTaskEnd()Z

    move-result v0

    return v0
.end method

.method public isExisting(Lcom/zte/update/data/DownloadInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 177
    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/zte/update/download/DownloadManager;->tskMgr:Lcom/zte/update/download/TaskManager;

    iget-object v0, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zte/update/download/TaskManager;->isExisting(Ljava/lang/String;)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseTask(Lcom/zte/update/data/DownloadInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/zte/update/download/DownloadManager;->getDownloadTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;

    move-result-object v1

    .line 120
    .local v1, tsk:Lcom/zte/update/download/DownloadTask;
    if-nez v1, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 125
    .end local v1           #tsk:Lcom/zte/update/download/DownloadTask;
    :goto_0
    return v2

    .line 116
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 117
    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #tsk:Lcom/zte/update/download/DownloadTask;
    :cond_0
    invoke-virtual {v1}, Lcom/zte/update/download/DownloadTask;->stop()V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager:To pause task id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 125
    goto :goto_0
.end method

.method public restartTask(Lcom/zte/update/data/DownloadInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/zte/update/download/DownloadManager;->checkParams(Lcom/zte/update/data/DownloadInfo;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/zte/update/download/DownloadManager;->getDownloadTask(Lcom/zte/update/data/DownloadInfo;)Lcom/zte/update/download/DownloadTask;

    move-result-object v0

    .line 131
    .local v0, tsk:Lcom/zte/update/download/DownloadTask;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadManager:To restart task id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/zte/update/download/DownloadManager;->idMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/zte/update/download/DownloadTask;->restart()V

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method
