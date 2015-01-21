.class Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "disableBackgroundAutoRunAppTask"
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
    .line 1694
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1694
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

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
    .line 1698
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/16 v10, 0x13

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/4 v10, 0x0

    aget-object v10, p1, v10

    if-eqz v10, :cond_0

    .line 1701
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1706
    :goto_0
    const/4 v6, 0x0

    .line 1707
    .local v6, now:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 1708
    .local v9, size:I
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1710
    .local v7, progress:Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    .line 1712
    .local v5, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1714
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v10

    iget-object v11, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    iget v12, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->saveStoppedState(Ljava/lang/String;II)V

    .line 1716
    iget-object v10, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1718
    .local v8, receiver:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v10, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1720
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1721
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1703
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .end local v6           #now:I
    .end local v7           #progress:Ljava/lang/Integer;
    .end local v8           #receiver:Ljava/lang/String;
    .end local v9           #size:I
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3700()Ljava/util/List;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1725
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .restart local v6       #now:I
    .restart local v7       #progress:Ljava/lang/Integer;
    .restart local v9       #size:I
    :cond_1
    iget-object v10, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 1727
    const/4 v10, 0x1

    iput v10, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 1729
    add-int/lit8 v6, v6, 0x1

    .line 1731
    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 1735
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_2
    if-nez v9, :cond_3

    .line 1737
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1739
    :cond_3
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1741
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3700()Ljava/util/List;

    move-result-object v10

    return-object v10
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1746
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1747
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1694
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->onPostExecute(Ljava/util/List;)V

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
    .line 1751
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setBackgroundAutoRunAppInfoList(Ljava/util/List;)V

    .line 1752
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1753
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1756
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateBackgroundAutoRunAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1757
    :catch_0
    move-exception v1

    .line 1758
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 1761
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1762
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    .line 1763
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1767
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1768
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1772
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1773
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1694
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
