.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "moveApptoSDTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask$PackageMoveObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private now:Ljava/lang/Integer;

.field private progress:Ljava/lang/String;

.field private size:I

.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

.field private wait:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 549
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 552
    iput v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->size:I

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->now:Ljava/lang/Integer;

    .line 554
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->wait:Ljava/lang/Object;

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->progress:Ljava/lang/String;

    .line 557
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->progress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->progress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    const/4 v7, 0x0

    .line 580
    aget-object v4, p1, v7

    .line 582
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->size:I

    .line 584
    iget-object v8, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->wait:Ljava/lang/Object;

    monitor-enter v8

    .line 585
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;

    .line 586
    .local v5, localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    .line 587
    .local v0, args:[Ljava/lang/Object;
    const/4 v7, 0x0

    iget-object v9, v5, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->packageName:Ljava/lang/String;

    aput-object v9, v0, v7

    .line 588
    const/4 v7, 0x1

    new-instance v9, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask$PackageMoveObserver;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask$PackageMoveObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)V

    aput-object v9, v0, v7

    .line 589
    const/4 v7, 0x2

    iget v9, v5, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->moveFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :try_start_1
    const-string v7, "android.content.pm.PackageManager"

    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "movePackage"

    invoke-static {v7, v9, v10, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 597
    .local v6, retObject:Ljava/lang/Object;
    :try_start_2
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->wait:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, ex:Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    :try_start_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    :try_start_4
    monitor-exit v8

    .line 609
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .end local v5           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .end local v6           #retObject:Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 602
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v5       #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    :catch_1
    move-exception v1

    .line 603
    .local v1, e:Ljava/lang/Exception;
    iget v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->size:I

    goto :goto_0

    .line 607
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 609
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 600
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v5       #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    .restart local v6       #retObject:Ljava/lang/Object;
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 549
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 613
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 614
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 617
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->cancel(Z)Z

    .line 619
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 622
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 624
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 549
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 549
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 627
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 628
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 629
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 631
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "moveApptoSDTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 637
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 638
    return-void
.end method
