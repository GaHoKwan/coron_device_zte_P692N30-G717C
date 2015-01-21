.class Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clearAppCacheInfoByPackageNameTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

.field private wait:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 1
    .parameter

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1866
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    .line 1868
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1861
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1861
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1890
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const/16 v18, 0x13

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1891
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    const/16 v18, 0x0

    aget-object v18, p1, v18

    if-nez v18, :cond_0

    .line 1893
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v15, statfs:Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 1895
    .local v6, bsize:J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v4, v0

    .line 1896
    .local v4, avail:J
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1897
    .local v16, total:J
    mul-long v9, v16, v6

    .line 1898
    .local v9, freeSize:J
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/Object;

    .line 1899
    .local v3, args:[Ljava/lang/Object;
    const/16 v18, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1900
    const/16 v18, 0x1

    new-instance v19, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    aput-object v19, v3, v18

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1903
    :try_start_0
    const-string v18, "android.content.pm.PackageManager"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "freeStorageAndNotify"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V

    .line 1905
    const-string v18, "SpeedUpService"

    const-string v20, "liuji debug test clearAppCache ****** "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    :goto_0
    :try_start_1
    monitor-exit v19

    .line 1954
    .end local v3           #args:[Ljava/lang/Object;
    .end local v4           #avail:J
    .end local v6           #bsize:J
    .end local v9           #freeSize:J
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    .end local v15           #statfs:Landroid/os/StatFs;
    .end local v16           #total:J
    :goto_1
    return-object v12

    .line 1906
    .restart local v3       #args:[Ljava/lang/Object;
    .restart local v4       #avail:J
    .restart local v6       #bsize:J
    .restart local v9       #freeSize:J
    .restart local v12       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    .restart local v15       #statfs:Landroid/os/StatFs;
    .restart local v16       #total:J
    :catch_0
    move-exception v8

    .line 1907
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "SpeedUpService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "liuji debug test clearAppCache err:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1909
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1919
    .end local v3           #args:[Ljava/lang/Object;
    .end local v4           #avail:J
    .end local v6           #bsize:J
    .end local v9           #freeSize:J
    .end local v15           #statfs:Landroid/os/StatFs;
    .end local v16           #total:J
    :cond_0
    const/16 v18, 0x0

    aget-object v18, p1, v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1923
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 1925
    .local v13, localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/Object;

    .line 1926
    .restart local v3       #args:[Ljava/lang/Object;
    const/16 v18, 0x0

    iget-object v0, v13, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v3, v18

    .line 1927
    const/16 v18, 0x1

    new-instance v20, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask$RemoveCompleteObserver;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V

    aput-object v20, v3, v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1931
    :try_start_3
    const-string v18, "android.content.pm.PackageManager"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "deleteApplicationCacheFiles"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 1934
    .local v14, retObject:Ljava/lang/Object;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->wait:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V

    .line 1936
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4500()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1937
    :catch_1
    move-exception v8

    .line 1938
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    .line 1939
    const-string v18, "chenlu"

    const-string v20, "clearAppCacheInfoByPackageNameTask break"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4500()Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v12

    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    :try_start_6
    monitor-exit v19

    goto/16 :goto_1

    .line 1950
    .end local v3           #args:[Ljava/lang/Object;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    .end local v14           #retObject:Ljava/lang/Object;
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v18

    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    :cond_1
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1954
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4500()Ljava/util/List;

    move-result-object v12

    goto/16 :goto_1

    .line 1942
    .restart local v3       #args:[Ljava/lang/Object;
    .restart local v13       #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :catch_2
    move-exception v18

    goto/16 :goto_2
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1959
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1960
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1861
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->onPostExecute(Ljava/util/List;)V

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
    .line 1964
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    if-eqz p1, :cond_0

    .line 1965
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppCacheInfoList(Ljava/util/List;)V

    .line 1967
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1968
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1971
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAppCacheList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1972
    :catch_0
    move-exception v1

    .line 1973
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 1976
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1977
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    .line 1978
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1982
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1983
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1988
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1861
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
