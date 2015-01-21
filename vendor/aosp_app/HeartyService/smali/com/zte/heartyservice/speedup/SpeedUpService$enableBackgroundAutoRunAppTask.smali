.class Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "enableBackgroundAutoRunAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 0
    .parameter

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1777
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1781
    const/16 v9, 0x13

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1782
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    aget-object v9, p1, v12

    if-eqz v9, :cond_0

    .line 1784
    aget-object v9, p1, v12

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1789
    :goto_0
    const/4 v5, 0x0

    .line 1790
    .local v5, now:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 1791
    .local v8, size:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1793
    .local v6, progress:Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    .line 1795
    .local v4, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    new-array v9, v13, [Ljava/lang/Integer;

    aput-object v6, v9, v12

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1797
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v9

    iget-object v10, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    iget v11, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->saveStoppedState(Ljava/lang/String;II)V

    .line 1799
    iget-object v9, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1801
    .local v7, receiver:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v9, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1803
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1786
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .end local v5           #now:I
    .end local v6           #progress:Ljava/lang/Integer;
    .end local v7           #receiver:Ljava/lang/String;
    .end local v8           #size:I
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3700()Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1808
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .restart local v5       #now:I
    .restart local v6       #progress:Ljava/lang/Integer;
    .restart local v8       #size:I
    :cond_1
    iget-object v9, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 1810
    iput v12, v4, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 1812
    add-int/lit8 v5, v5, 0x1

    .line 1814
    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 1817
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_2
    if-nez v8, :cond_3

    .line 1819
    new-array v9, v13, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1822
    :cond_3
    new-array v9, v13, [Ljava/lang/Integer;

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1824
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3700()Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1829
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1830
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1777
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1834
    .local p1, backgroundAutoRunAppInfo:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setBackgroundAutoRunAppInfoList(Ljava/util/List;)V

    .line 1835
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1836
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1839
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateBackgroundAutoRunAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1840
    :catch_0
    move-exception v1

    .line 1841
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 1844
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1845
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    .line 1846
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1851
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1852
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1857
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1777
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
