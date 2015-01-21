.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStateObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)V

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
    .line 751
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->access$3400(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 752
    if-eqz p1, :cond_0

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->storageSpace:Ljava/lang/Long;
    invoke-static {v0, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->access$3502(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;Ljava/lang/Long;)Ljava/lang/Long;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask$GetStateObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->access$3400(Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 758
    monitor-exit v1

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
