.class Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStateObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 7
    .parameter "pStats"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$3800(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->progress:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$3900(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4000(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;[Ljava/lang/Object;)V

    .line 969
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 971
    new-instance v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;-><init>()V

    .line 972
    .local v0, loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    .line 973
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    .line 974
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->appCacheInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4100(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    iget-object v1, v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    .line 978
    .end local v0           #loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4200(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4200(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4202(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 979
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4200(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$4300(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->progress:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$3902(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 982
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->access$3800(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 984
    monitor-exit v2

    .line 985
    return-void

    .line 984
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
