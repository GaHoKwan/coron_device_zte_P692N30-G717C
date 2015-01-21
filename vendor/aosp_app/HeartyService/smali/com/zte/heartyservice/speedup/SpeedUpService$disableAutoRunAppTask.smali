.class Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "disableAutoRunAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
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
    .line 1535
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1535
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1539
    const/16 v8, 0x13

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1540
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    aget-object v8, p1, v11

    if-eqz v8, :cond_0

    .line 1542
    aget-object v8, p1, v11

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1547
    :goto_0
    const/4 v5, 0x0

    .line 1548
    .local v5, now:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 1549
    .local v7, size:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1551
    .local v6, progress:Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 1553
    .local v4, localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    new-array v8, v12, [Ljava/lang/Integer;

    aput-object v6, v8, v11

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1555
    iget-object v8, v4, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->compNames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1558
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->putIntoExSet(Landroid/content/ComponentName;)V

    .line 1559
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1560
    const-string v8, "SpeedUpService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyPackageManageState disable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1561
    :catch_0
    move-exception v8

    goto :goto_2

    .line 1544
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .end local v5           #now:I
    .end local v6           #progress:Ljava/lang/Integer;
    .end local v7           #size:I
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3600()Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1565
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .restart local v5       #now:I
    .restart local v6       #progress:Ljava/lang/Integer;
    .restart local v7       #size:I
    :cond_1
    iput v11, v4, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    .line 1567
    add-int/lit8 v5, v5, 0x1

    .line 1568
    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 1572
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_2
    if-nez v7, :cond_3

    .line 1574
    new-array v8, v12, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1576
    :cond_3
    new-array v8, v12, [Ljava/lang/Integer;

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 1578
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3600()Ljava/util/List;

    move-result-object v8

    return-object v8
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1583
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1584
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1535
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1588
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAutoRunAppInfoList(Ljava/util/List;)V

    .line 1589
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1590
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1593
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAutoRunAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v1

    .line 1595
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 1598
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1599
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    .line 1600
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1604
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1605
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1609
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1610
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1535
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
