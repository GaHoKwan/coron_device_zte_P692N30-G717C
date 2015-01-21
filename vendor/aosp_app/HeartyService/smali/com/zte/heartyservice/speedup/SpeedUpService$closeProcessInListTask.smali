.class Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeProcessInListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
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
    .line 1418
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1418
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1418
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    const/16 v17, 0x13

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1423
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    const/16 v17, 0x0

    aget-object v17, p1, v17

    if-eqz v17, :cond_1

    .line 1426
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1433
    :goto_0
    const/4 v11, 0x0

    .line 1434
    .local v11, now:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    .line 1435
    .local v15, size:I
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1437
    .local v12, progress:Ljava/lang/Integer;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 1439
    .local v10, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->publishProgress([Ljava/lang/Object;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v17, v0

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->getTopApp()Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$5400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/lang/String;

    move-result-object v16

    .line 1442
    .local v16, topApp:Ljava/lang/String;
    iget v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const-string v17, "com.zte.heartyservice"

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.zte.cloudhub"

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.zte.mobile.Zte3DLauncher"

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.vlife.zte.wallpaper"

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v16, :cond_0

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1450
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v17, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v17

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_2
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1473
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v17

    iget v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->memory:I

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3502(J)J

    .line 1476
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 1477
    mul-int/lit8 v17, v11, 0x64

    div-int v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1478
    goto/16 :goto_1

    .line 1427
    .end local v10           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .end local v11           #now:I
    .end local v12           #progress:Ljava/lang/Integer;
    .end local v15           #size:I
    .end local v16           #topApp:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 1428
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1451
    .restart local v10       #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .restart local v11       #now:I
    .restart local v12       #progress:Ljava/lang/Integer;
    .restart local v15       #size:I
    .restart local v16       #topApp:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1452
    .local v5, e1:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1453
    iget-object v14, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->services:[Ljava/lang/String;

    .line 1454
    .local v14, services:[Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 1456
    move-object v2, v14

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v8, :cond_2

    aget-object v13, v2, v7

    .line 1459
    .local v13, service:Ljava/lang/String;
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .local v3, cn:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->stopService(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1456
    .end local v3           #cn:Landroid/content/ComponentName;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1462
    :catch_1
    move-exception v4

    .line 1464
    .local v4, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_4

    .line 1469
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v13           #service:Ljava/lang/String;
    :cond_2
    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_2

    .line 1480
    .end local v5           #e1:Ljava/lang/Exception;
    .end local v10           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .end local v14           #services:[Ljava/lang/String;
    .end local v16           #topApp:Ljava/lang/String;
    :cond_3
    if-nez v15, :cond_4

    .line 1482
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->publishProgress([Ljava/lang/Object;)V

    .line 1485
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x64

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->publishProgress([Ljava/lang/Object;)V

    .line 1487
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v9

    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    .end local v11           #now:I
    .end local v12           #progress:Ljava/lang/Integer;
    .end local v15           #size:I
    :cond_5
    return-object v9
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1492
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1493
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1418
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1498
    .local v5, mi:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1500
    const/4 v6, 0x1

    sput-boolean v6, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    .line 1501
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$5600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mProtectTime:I
    invoke-static {v8}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$5500(Lcom/zte/heartyservice/speedup/SpeedUpService;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1502
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    sget-boolean v6, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    if-eqz v6, :cond_0

    .line 1503
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v1

    .line 1504
    .local v1, availMemory:J
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/SysInfo;->setAvailableMemory(J)V

    .line 1508
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setRunningProcessInfoList(Ljava/util/List;)V

    .line 1509
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1510
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 1513
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v6, p1, v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateRunningProcessList(Ljava/util/List;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1506
    .end local v0           #N:I
    .end local v1           #availMemory:J
    .end local v4           #i:I
    :cond_0
    iget-wide v1, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .restart local v1       #availMemory:J
    goto :goto_0

    .line 1514
    .restart local v0       #N:I
    .restart local v4       #i:I
    :catch_0
    move-exception v3

    .line 1515
    .local v3, e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_2

    .line 1518
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1519
    iget-object v6, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v7, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    invoke-static {v6, v7}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    .line 1520
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1524
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1525
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1529
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1530
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1418
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
