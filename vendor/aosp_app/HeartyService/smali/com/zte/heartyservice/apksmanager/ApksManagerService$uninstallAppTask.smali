.class Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
.super Landroid/os/AsyncTask;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "uninstallAppTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
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

    .line 642
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 645
    iput v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->size:I

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;

    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->wait:Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;

    .line 650
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->now:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->progress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const/4 v7, 0x0

    .line 670
    aget-object v2, p1, v7

    .line 671
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const-string v7, "<==>tsj"

    const-string v8, "uninstallAppTask doInBackground"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->size:I

    .line 675
    iget-object v8, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->wait:Ljava/lang/Object;

    monitor-enter v8

    .line 676
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 677
    .local v3, localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    .line 678
    .local v0, args:[Ljava/lang/Object;
    const/4 v7, 0x0

    iget-object v9, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    aput-object v9, v0, v7

    .line 679
    const/4 v7, 0x1

    new-instance v9, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    aput-object v9, v0, v7

    .line 680
    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :try_start_1
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v9, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    new-instance v10, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask$PackageDeleteObserver;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v5

    .line 694
    .local v5, se:Ljava/lang/SecurityException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 695
    .local v4, packageURI:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DELETE"

    invoke-direct {v6, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 696
    .local v6, uninstallIntent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v7, v6}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 700
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #localUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v4           #packageURI:Landroid/net/Uri;
    .end local v5           #se:Ljava/lang/SecurityException;
    .end local v6           #uninstallIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 702
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 706
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 707
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 710
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->cancel(Z)Z

    .line 712
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$802(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;)V

    #setter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$802(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 715
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 717
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 720
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 721
    .local v3, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 722
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 724
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    const-string v5, "uninstallAppTask"

    invoke-interface {v4, v3, v5}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;->NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 730
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;->this$0:Lcom/zte/heartyservice/apksmanager/ApksManagerService;

    #getter for: Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 731
    return-void
.end method
