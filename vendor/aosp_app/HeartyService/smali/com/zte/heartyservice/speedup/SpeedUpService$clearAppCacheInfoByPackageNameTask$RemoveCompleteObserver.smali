.class Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCompleteObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->access$5700(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1881
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;->this$1:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->access$5700(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1883
    monitor-exit v1

    .line 1884
    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
