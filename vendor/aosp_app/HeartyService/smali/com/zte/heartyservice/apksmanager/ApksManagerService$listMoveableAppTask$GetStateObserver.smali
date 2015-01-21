.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStateObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)V

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
    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->access$1800(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->storageSpace:Ljava/lang/Long;
    invoke-static {v0, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->access$1902(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;Ljava/lang/Long;)Ljava/lang/Long;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->access$1800(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 270
    monitor-exit v1

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
