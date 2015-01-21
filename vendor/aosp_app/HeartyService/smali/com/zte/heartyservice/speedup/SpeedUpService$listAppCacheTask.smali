.class Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listAppCacheTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private appCacheInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private needpublishProgress:Z

.field private now:Ljava/lang/Integer;

.field private progress:Ljava/lang/Integer;

.field private size:I

.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

.field private wait:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 950
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->needpublishProgress:Z

    .line 953
    iput v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    .line 954
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;

    .line 955
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->progress:Ljava/lang/Integer;

    .line 956
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->appCacheInfo:Ljava/util/List;

    .line 959
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->progress:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->progress:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->appCacheInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 12
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 991
    const/16 v6, 0x13

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 992
    aget-object v6, p1, v10

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->needpublishProgress:Z

    .line 994
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 996
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->now:Ljava/lang/Integer;

    .line 997
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    .line 999
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;

    monitor-enter v7

    .line 1001
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1003
    .local v3, info:Landroid/content/pm/PackageInfo;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    .line 1004
    .local v0, args:[Ljava/lang/Object;
    const/4 v6, 0x0

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v0, v6

    .line 1005
    const/4 v6, 0x1

    new-instance v8, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask$GetStateObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    aput-object v8, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :try_start_1
    const-string v6, "android.content.pm.PackageManager"

    iget-object v8, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "getPackageSizeInfo"

    invoke-static {v6, v8, v9, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1011
    .local v5, retObject:Ljava/lang/Object;
    :try_start_2
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->wait:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1014
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v6, v8}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    .line 1015
    const-string v6, "chenlu"

    const-string v8, "listAppCacheTask break"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->appCacheInfo:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    monitor-exit v7

    .line 1031
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #retObject:Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 1018
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    .line 1019
    .restart local v1       #e:Ljava/lang/Exception;
    iget v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    goto :goto_0

    .line 1027
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1023
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_5
    iget v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->size:I

    if-nez v6, :cond_1

    .line 1025
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->publishProgress([Ljava/lang/Object;)V

    .line 1027
    :cond_1
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1029
    new-array v6, v11, [Ljava/lang/Integer;

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->publishProgress([Ljava/lang/Object;)V

    .line 1031
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->appCacheInfo:Ljava/util/List;

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1036
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1037
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppCacheInfoList(Ljava/util/List;)V

    .line 1042
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1043
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1046
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAppCacheList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 1051
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1052
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    .line 1053
    invoke-static {p1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4502(Ljava/util/List;)Ljava/util/List;

    .line 1054
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1058
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1059
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 1063
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1064
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->needpublishProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1068
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
