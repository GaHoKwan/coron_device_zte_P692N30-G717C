.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->wait:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2300(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->now:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2400(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/Integer;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->now:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2400(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->now:Ljava/lang/Integer;
    invoke-static {v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2402(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 468
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->progress:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2502(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->progress:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2500(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->progress:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2502(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->progress:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2500(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v2, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2600(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;[Ljava/lang/Object;)V

    .line 478
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->wait:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2300(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 479
    monitor-exit v3

    .line 480
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask$PackageMoveObserver;->this$1:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->progress:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->access$2502(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 479
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
