.class Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStateObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .parameter "pStats"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->wait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$4700(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1307
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->progress:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$4800(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$4900(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;[Ljava/lang/Object;)V

    .line 1309
    new-instance v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;-><init>()V

    .line 1310
    .local v0, loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    .line 1311
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    .line 1312
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    .line 1313
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->codeSize:J

    .line 1315
    const-string v1, "SpeedUpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lmj:: onGetStatsCompleted- pStats:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->appDatasizeInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5000(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    const-string v1, "SpeedUpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji test onGetStatsCompleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->now:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5100(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->now:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5100(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->now:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5102(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1322
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->now:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5100(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->size:I
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$5200(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->progress:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$4802(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1324
    const-string v1, "SpeedUpService"

    const-string v3, "send wait.notify() begin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->wait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;->access$4700(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1326
    const-string v1, "SpeedUpService"

    const-string v3, "send wait.notify() end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    monitor-exit v2

    .line 1328
    return-void

    .line 1327
    .end local v0           #loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
