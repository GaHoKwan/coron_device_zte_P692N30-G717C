.class public Lcom/zte/update/scan/task/ScanRequestInfoTask;
.super Ljava/lang/Object;
.source "ScanRequestInfoTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 15
    const-string v5, "ScanRequestInfoTask begin"

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    .line 19
    .local v1, mgr:Lcom/zte/update/data/DataManager;
    invoke-virtual {v1}, Lcom/zte/update/data/DataManager;->getUnNotifyRequestInfo()Ljava/util/Collection;

    move-result-object v3

    .line 20
    .local v3, unNotifyInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unNotifyInfos ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v4, Lcom/zte/update/scan/Scaner;

    invoke-direct {v4}, Lcom/zte/update/scan/Scaner;-><init>()V

    .line 23
    .local v4, utils:Lcom/zte/update/scan/Scaner;
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 24
    .local v0, app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/update/scan/Scaner;->scanAllZteApplication(Landroid/content/pm/PackageManager;)Ljava/util/Collection;

    move-result-object v2

    .line 25
    .local v2, scanRequestInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zte/update/data/RequestAppInfo;>;"
    invoke-virtual {v1, v2}, Lcom/zte/update/data/DataManager;->clearAndSaveRequestInfoStorage(Ljava/util/Collection;)V

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unNotifyInfos ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v3}, Lcom/zte/update/data/DataManager;->updateNotificationTypeToRequestInfoStorage(Ljava/util/Collection;)V

    .line 32
    invoke-virtual {v1}, Lcom/zte/update/data/DataManager;->reloadRequestAppInfoMap()V

    .line 34
    return-void
.end method
