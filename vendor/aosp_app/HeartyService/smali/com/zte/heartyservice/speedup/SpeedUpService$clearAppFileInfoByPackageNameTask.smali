.class Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clearAppFileInfoByPackageNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
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

    .line 1992
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1994
    iput v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->size:I

    .line 1995
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->now:Ljava/lang/Integer;

    .line 1996
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->progress:Ljava/lang/Integer;

    .line 1997
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->wait:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1992
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1992
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2002
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2003
    invoke-static {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileScanState(Z)V

    .line 2004
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2005
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    aget-object v3, p1, v7

    if-eqz v3, :cond_0

    .line 2006
    aget-object v3, p1, v7

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2011
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->size:I

    .line 2013
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->wait:Ljava/lang/Object;

    monitor-enter v4

    .line 2015
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 2016
    .local v2, localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2017
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/filexplorer/FileHelper;->deleteTarget(Ljava/lang/String;)Z

    .line 2018
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2019
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->progress:Ljava/lang/Integer;

    aput-object v6, v3, v5

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->publishProgress([Ljava/lang/Object;)V

    .line 2020
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->now:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->now:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->now:Ljava/lang/Integer;

    .line 2021
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->now:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v5, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->size:I

    div-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->progress:Ljava/lang/Integer;

    goto :goto_1

    .line 2032
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2008
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2023
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    monitor-exit v4

    .line 2036
    .end local v2           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :goto_2
    return-object v3

    .line 2028
    :cond_2
    iget v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->size:I

    if-nez v3, :cond_3

    .line 2030
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->publishProgress([Ljava/lang/Object;)V

    .line 2032
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    new-array v3, v8, [Ljava/lang/Integer;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->publishProgress([Ljava/lang/Object;)V

    .line 2036
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4600()Ljava/util/List;

    move-result-object v3

    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 2041
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2042
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1992
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2046
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileInfoList(Ljava/util/List;)V

    .line 2047
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileScanState(Z)V

    .line 2048
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2049
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2052
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v4, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAppFileList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2053
    :catch_0
    move-exception v1

    .line 2054
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 2057
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2058
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v5, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    .line 2060
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.appfile_scan_completed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2062
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 2066
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2067
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2072
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1992
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
