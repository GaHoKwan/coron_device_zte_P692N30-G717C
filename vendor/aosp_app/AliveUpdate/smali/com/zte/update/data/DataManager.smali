.class public Lcom/zte/update/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field private static manager:Lcom/zte/update/data/DataManager;


# instance fields
.field private cacheAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/zte/update/data/CacheAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<",
            "Lcom/zte/update/data/CacheAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/zte/update/data/CacheAppInfo;

    invoke-static {v0}, Lcom/zte/update/data/storage/AppInfoStorageFactory;->getStorage(Ljava/lang/Class;)Lcom/zte/update/data/storage/IAppInfoStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    .line 30
    const-class v0, Lcom/zte/update/data/RequestAppInfo;

    invoke-static {v0}, Lcom/zte/update/data/storage/AppInfoStorageFactory;->getStorage(Ljava/lang/Class;)Lcom/zte/update/data/storage/IAppInfoStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    .line 32
    const-class v0, Lcom/zte/update/data/DownloadInfo;

    invoke-static {v0}, Lcom/zte/update/data/storage/AppInfoStorageFactory;->getStorage(Ljava/lang/Class;)Lcom/zte/update/data/storage/IAppInfoStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    .line 44
    return-void
.end method

.method private clearInstallFinish()V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, deletMainKeyObject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zte/update/data/DownloadInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/DownloadInfo;

    .line 103
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 105
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v3, v1}, Lcom/zte/update/data/storage/IAppInfoStorage;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v1           #info:Lcom/zte/update/data/DownloadInfo;
    :cond_1
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 113
    return-void
.end method

.method public static getInstance()Lcom/zte/update/data/DataManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/zte/update/data/DataManager;->manager:Lcom/zte/update/data/DataManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/zte/update/data/DataManager;

    invoke-direct {v0}, Lcom/zte/update/data/DataManager;-><init>()V

    sput-object v0, Lcom/zte/update/data/DataManager;->manager:Lcom/zte/update/data/DataManager;

    .line 49
    sget-object v0, Lcom/zte/update/data/DataManager;->manager:Lcom/zte/update/data/DataManager;

    invoke-virtual {v0}, Lcom/zte/update/data/DataManager;->reloadAll()V

    .line 51
    :cond_0
    sget-object v0, Lcom/zte/update/data/DataManager;->manager:Lcom/zte/update/data/DataManager;

    return-object v0
.end method

.method public static mergeMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, newMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, oldMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 309
    return-void
.end method


# virtual methods
.method public clearAndSaveRequestInfoStorage(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, newInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0}, Lcom/zte/update/data/storage/IAppInfoStorage;->clearStorage()V

    .line 142
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->saveAll(Ljava/util/Collection;)V

    .line 144
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadRequestAppInfoMap()V

    .line 146
    return-void
.end method

.method public clearDownloadData(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 326
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/zte/update/data/DownloadInfo;->setStatus(I)V

    .line 327
    iget-object v2, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, pckgName:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v2, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, pathname:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pathname to delete ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-static {v0}, Lcom/zte/update/tools/FileTools;->deleteFile(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/zte/update/data/DataManager;->reloadPackageInfo(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public clearSuccessDownloadInfo()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    const-string v1, "state"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/zte/update/data/storage/IAppInfoStorage;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method protected collectionToMap(Ljava/util/Map;Ljava/util/Collection;Lcom/zte/update/data/storage/IAppInfoStorage;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;TT;>;"
    .local p2, infoset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p3, storage:Lcom/zte/update/data/storage/IAppInfoStorage;,"Lcom/zte/update/data/storage/IAppInfoStorage<TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-interface {p3, v3}, Lcom/zte/update/data/storage/IAppInfoStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, mainKeyValue:Ljava/lang/Object;
    move-object v4, v3

    .line 212
    check-cast v4, Lcom/zte/update/data/IStorageInfo;

    invoke-interface {v4, v2}, Lcom/zte/update/data/IStorageInfo;->setMainKey(Ljava/lang/Object;)V

    .line 214
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, exist:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .line 216
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_0
    check-cast v0, Lcom/zte/update/data/IStorageInfo;

    .end local v0           #exist:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, v3}, Lcom/zte/update/data/IStorageInfo;->reload(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .end local v2           #mainKeyValue:Ljava/lang/Object;
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :cond_1
    return-void
.end method

.method public deleteCacheInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->remove(Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method public getCacheAppInfoMainKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadInfosByStatus(I)Ljava/util/Set;
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 397
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/zte/update/data/DownloadInfo;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/DownloadInfo;

    .line 398
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 399
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v1           #info:Lcom/zte/update/data/DownloadInfo;
    :cond_1
    return-object v2
.end method

.method public getDownloadingInfos()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 387
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/zte/update/data/DownloadInfo;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/DownloadInfo;

    .line 388
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 389
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v1           #info:Lcom/zte/update/data/DownloadInfo;
    :cond_1
    return-object v2
.end method

.method public getInstallFinishInfos()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 407
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/DownloadInfo;

    .line 408
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v1           #info:Lcom/zte/update/data/DownloadInfo;
    :cond_1
    return-object v2
.end method

.method public getNotifyRequestMainKeys()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, availableKeys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/RequestAppInfo;

    .line 236
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v0           #appInfo:Lcom/zte/update/data/RequestAppInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotifyRequestMainKeys list= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    return-object v1
.end method

.method public getRequestAppInfoByPackName(Ljava/lang/String;)Lcom/zte/update/data/RequestAppInfo;
    .locals 5
    .parameter "packName"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->getRequestAppInfos()Ljava/util/Collection;

    move-result-object v2

    .line 192
    .local v2, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/RequestAppInfo;

    .line 193
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequestAppInfos, packname ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const-string v3, "getRequestAppInfo,got info"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    :goto_0
    return-object v1

    .line 199
    :cond_1
    const-string v3, "getRequestAppInfo,don\'t got info"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestAppInfoMainKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestAppInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUnNotifyRequestInfo()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "notification_type"

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/zte/update/data/storage/IAppInfoStorage;->loadAll([Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUnNotifyRequestMainKeys()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v1, availableKeys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/RequestAppInfo;

    .line 248
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v3

    if-nez v3, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v0           #appInfo:Lcom/zte/update/data/RequestAppInfo;
    :cond_1
    return-object v1
.end method

.method public getUpdateCheckKeys()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->getCacheAppInfoMainKeys()Ljava/util/Collection;

    move-result-object v0

    .line 263
    .local v0, cachelist:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->getNotifyRequestMainKeys()Ljava/util/Collection;

    move-result-object v2

    .line 265
    .local v2, requestList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 267
    return-object v1
.end method

.method public loadCacheAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/CacheAppInfo;
    .locals 1
    .parameter "mainKey"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/CacheAppInfo;

    return-object v0
.end method

.method public loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;
    .locals 2
    .parameter "mainKey"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/DownloadInfo;

    .line 290
    .local v0, info:Lcom/zte/update/data/DownloadInfo;
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v1, v0}, Lcom/zte/update/data/storage/IAppInfoStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/update/data/DownloadInfo;->setMainKey(Ljava/lang/Object;)V

    .line 293
    :cond_0
    return-object v0
.end method

.method public loadDownloadInfos(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 426
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/zte/update/data/DownloadInfo;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 427
    return-object v0
.end method

.method public loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;
    .locals 1
    .parameter "mainkey"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/RequestAppInfo;

    return-object v0
.end method

.method public loadRequestInfoByPackage(Ljava/lang/String;)Lcom/zte/update/data/RequestAppInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    const-string v1, "package_name"

    invoke-interface {v0, v1, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/RequestAppInfo;

    return-object v0
.end method

.method public loadStorageToMap(Ljava/util/Map;Lcom/zte/update/data/storage/IAppInfoStorage;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lcom/zte/update/data/storage/IAppInfoStorage",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;TT;>;"
    .local p2, storage:Lcom/zte/update/data/storage/IAppInfoStorage;,"Lcom/zte/update/data/storage/IAppInfoStorage<TT;>;"
    invoke-interface {p2}, Lcom/zte/update/data/storage/IAppInfoStorage;->loadAll()Ljava/util/Collection;

    move-result-object v0

    .line 205
    .local v0, infoset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p1, v0, p2}, Lcom/zte/update/data/DataManager;->collectionToMap(Ljava/util/Map;Ljava/util/Collection;Lcom/zte/update/data/storage/IAppInfoStorage;)V

    .line 206
    return-void
.end method

.method public mergeToCacheInfoStorage(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/CacheAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, newInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/CacheAppInfo;>;"
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->saveAll(Ljava/util/Collection;)V

    .line 171
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadCacheAppInfoMap()V

    .line 173
    return-void
.end method

.method public mergeToDownloadInfoStorage(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, downloadList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/DownloadInfo;>;"
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->saveAll(Ljava/util/Collection;)V

    .line 165
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadDownloadInfoMap()V

    .line 167
    return-void
.end method

.method public mergeToRequestInfoStorage(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, newInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/RequestAppInfo;

    .line 124
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    iget-object v4, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v4, v1}, Lcom/zte/update/data/storage/IAppInfoStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, mainKey:Ljava/lang/Object;
    iget-object v4, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/update/data/RequestAppInfo;

    .line 127
    .local v3, oldInfo:Lcom/zte/update/data/RequestAppInfo;
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v3}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zte/update/data/RequestAppInfo;->setNotificationType(I)V

    goto :goto_0

    .line 132
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    .end local v2           #mainKey:Ljava/lang/Object;
    .end local v3           #oldInfo:Lcom/zte/update/data/RequestAppInfo;
    :cond_1
    iget-object v4, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v4}, Lcom/zte/update/data/storage/IAppInfoStorage;->clearStorage()V

    .line 133
    iget-object v4, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v4, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->saveAll(Ljava/util/Collection;)V

    .line 135
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadRequestAppInfoMap()V

    .line 137
    return-void
.end method

.method public reloadAll()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadCacheAppInfoMap()V

    .line 117
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadRequestAppInfoMap()V

    .line 118
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadDownloadInfoMap()V

    .line 119
    return-void
.end method

.method public reloadCacheAppInfoMap()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/data/DataManager;->loadStorageToMap(Ljava/util/Map;Lcom/zte/update/data/storage/IAppInfoStorage;)V

    .line 60
    return-void
.end method

.method public reloadDownloadInfoMap()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/data/DataManager;->loadStorageToMap(Ljava/util/Map;Lcom/zte/update/data/storage/IAppInfoStorage;)V

    .line 96
    return-void
.end method

.method public reloadPackageInfo(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 361
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 363
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reloadPackageInfo packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 365
    .local v2, pckInfo:Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/zte/update/scan/UpdateRequestBuilder;->getInstance()Lcom/zte/update/scan/UpdateRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/zte/update/scan/UpdateRequestBuilder;->getRequestAppInfo(Landroid/content/pm/PackageInfo;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v4

    .line 366
    .local v4, reqInfo:Lcom/zte/update/data/RequestAppInfo;
    iget-object v5, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v5, v4}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 368
    iget-object v5, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v5, v4}, Lcom/zte/update/data/storage/IAppInfoStorage;->getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 369
    .local v1, mainKeyValue:Ljava/lang/Object;
    invoke-virtual {v4, v1}, Lcom/zte/update/data/RequestAppInfo;->setMainKey(Ljava/lang/Object;)V

    .line 370
    iget-object v5, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1           #mainKeyValue:Ljava/lang/Object;
    .end local v2           #pckInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #reqInfo:Lcom/zte/update/data/RequestAppInfo;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public reloadRequestAppInfoMap()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestAppInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/data/DataManager;->loadStorageToMap(Ljava/util/Map;Lcom/zte/update/data/storage/IAppInfoStorage;)V

    .line 71
    return-void
.end method

.method public resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/DownloadInfo;->setStatus(I)V

    .line 352
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zte/update/data/DownloadInfo;->setDownloadOffset(J)V

    .line 354
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 356
    const-string v0, "deleteFile"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/update/tools/FileTools;->deleteFile(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public resetDownloadInfo(Lcom/zte/update/data/DownloadInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "isClearFile"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/DownloadInfo;->setStatus(I)V

    .line 339
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zte/update/data/DownloadInfo;->setDownloadOffset(J)V

    .line 341
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->downloadInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 343
    const-string v0, "deleteFile"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    if-eqz p2, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/update/data/storage/AndroidFileStorage;->getUpdtDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/update/tools/FileTools;->deleteFile(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method public declared-synchronized saveRequestInfo(Lcom/zte/update/data/RequestAppInfo;)V
    .locals 1
    .parameter "appInfo"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadRequestAppInfoMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveToCacheInfoStorage(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/CacheAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, newInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/CacheAppInfo;>;"
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0}, Lcom/zte/update/data/storage/IAppInfoStorage;->clearStorage()V

    .line 177
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->cacheAppInfoStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->saveAll(Ljava/util/Collection;)V

    .line 178
    invoke-virtual {p0}, Lcom/zte/update/data/DataManager;->reloadCacheAppInfoMap()V

    .line 179
    return-void
.end method

.method public updateNotificationTypeToRequestInfoStorage(Ljava/util/Collection;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/RequestAppInfo;

    .line 158
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    iget-object v2, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "notification_type"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/zte/update/data/storage/IAppInfoStorage;->update(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    :cond_0
    return-void
.end method

.method public updateRequestAppInfo(Lcom/zte/update/data/RequestAppInfo;)V
    .locals 1
    .parameter "newInfos"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    invoke-interface {v0, p1}, Lcom/zte/update/data/storage/IAppInfoStorage;->updateOrInsert(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public updateUnNotifyTyptoRequestInfoStorage(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zte/update/data/RequestAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, unNotifyInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/RequestAppInfo;

    .line 151
    .local v1, info:Lcom/zte/update/data/RequestAppInfo;
    iget-object v2, p0, Lcom/zte/update/data/DataManager;->requestStorage:Lcom/zte/update/data/storage/IAppInfoStorage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "notification_type"

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/zte/update/data/storage/IAppInfoStorage;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v1           #info:Lcom/zte/update/data/RequestAppInfo;
    :cond_0
    return-void
.end method
