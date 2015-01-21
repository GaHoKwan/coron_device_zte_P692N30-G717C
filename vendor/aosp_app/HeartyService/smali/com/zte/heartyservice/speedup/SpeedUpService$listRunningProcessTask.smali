.class Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listRunningProcessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private needpublishProgress:Z

.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->needpublishProgress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method

.method private getUseMemorybyPid(I)I
    .locals 6
    .parameter "pid"

    .prologue
    .line 359
    const/4 v3, 0x0

    .line 362
    .local v3, useMemory:I
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 363
    .local v2, pids:[I
    const/4 v4, 0x0

    aput p1, v2, v4

    .line 364
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 365
    .local v1, memoryinfo:Landroid/os/Debug$MemoryInfo;
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v5, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v3, v4, v5

    .line 371
    .end local v1           #memoryinfo:Landroid/os/Debug$MemoryInfo;
    .end local v2           #pids:[I
    :goto_0
    return v3

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 40
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    const/16 v37, 0x13

    invoke-static/range {v37 .. v37}, Landroid/os/Process;->setThreadPriority(I)V

    .line 379
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v37

    if-eqz v37, :cond_0

    sget-boolean v37, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    if-eqz v37, :cond_0

    .line 380
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3100()Ljava/util/List;

    move-result-object v23

    .line 545
    :goto_0
    return-object v23

    .line 384
    :cond_0
    const/16 v37, 0x0

    aget-object v37, p1, v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->needpublishProgress:Z

    .line 386
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v23, packageList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v30

    .line 389
    .local v30, runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v37

    const/16 v38, 0x64

    invoke-virtual/range {v37 .. v38}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v32

    .line 390
    .local v32, runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v20, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v20, mainIntent:Landroid/content/Intent;
    const-string v37, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 393
    .local v19, mainActivitys:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 395
    .local v25, packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    move-object/from16 v0, v37

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v7, homeIntent:Landroid/content/Intent;
    const-string v37, "android.intent.category.HOME"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v37

    const/high16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 399
    .local v6, homeInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v13, launcherSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 403
    .local v5, homeInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 404
    .local v24, packageName:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 540
    .end local v5           #homeInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #homeInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #homeIntent:Landroid/content/Intent;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #launcherSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19           #mainActivitys:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #mainIntent:Landroid/content/Intent;
    .end local v24           #packageName:Ljava/lang/String;
    .end local v25           #packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v30           #runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v32           #runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_0
    move-exception v4

    .line 542
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 407
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #homeInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #homeIntent:Landroid/content/Intent;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v13       #launcherSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #mainActivitys:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20       #mainIntent:Landroid/content/Intent;
    .restart local v25       #packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v30       #runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v32       #runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v37

    new-instance v38, Landroid/content/Intent;

    const-string v39, "android.service.wallpaper.WallpaperService"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v39, 0x80

    invoke-virtual/range {v37 .. v39}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 411
    .local v17, liveWallpaperlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 413
    .local v16, liveWallpaperSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 415
    .local v15, liveWallpaper:Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 416
    .restart local v24       #packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 419
    .end local v15           #liveWallpaper:Landroid/content/pm/ResolveInfo;
    .end local v24           #packageName:Ljava/lang/String;
    :cond_2
    const/16 v22, 0x0

    .line 421
    .local v22, now:I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v35

    .line 423
    .local v35, size:I
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 426
    .local v29, progress:Ljava/lang/Integer;
    const/16 v21, 0x0

    .line 427
    .local v21, mediaRelativePid:I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 428
    .local v31, runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v37, v0

    const-string v38, "android.process.media"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 429
    const-string v37, "SpeedUpService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "liuji ------ importanceReasonPid:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v21, v0

    goto :goto_3

    .line 435
    .end local v31           #runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 437
    .restart local v31       #runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 438
    .local v28, process_name:Ljava/lang/String;
    move-object/from16 v0, v31

    iget v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 440
    .local v11, importance:I
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v29, v37, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->publishProgress([Ljava/lang/Object;)V

    .line 442
    sget-object v37, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_10

    .line 444
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .local v10, i$:I
    :goto_5
    if-ge v10, v14, :cond_10

    aget-object v26, v3, v10

    .line 446
    .local v26, package_name:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    const-string v37, "com.gau.go.launcherex.gowidget."

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_f

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    .line 451
    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    const/16 v27, 0x0

    .line 455
    .local v27, pkg_find:Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 457
    .local v12, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 459
    const/16 v27, 0x1

    .line 464
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    :cond_6
    const/16 v37, 0x1

    move/from16 v0, v27

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 466
    new-instance v18, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    invoke-direct/range {v18 .. v18}, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;-><init>()V

    .line 468
    .local v18, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    .line 470
    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->getUseMemorybyPid(I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->memory:I

    .line 472
    move-object/from16 v0, v18

    iput v11, v0, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->importance:I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->unCheckedPkgSet:Ljava/util/HashSet;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1900(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/util/HashSet;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 476
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    .line 489
    :goto_6
    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 490
    const-string v37, "SpeedUpService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "liuji ------ process_name:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->mediaFlag:I

    .line 495
    :cond_7
    const/16 v34, 0x0

    .line 497
    .local v34, services:Ljava/util/List;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 499
    .local v33, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 501
    if-nez v34, :cond_9

    .line 503
    new-instance v34, Ljava/util/ArrayList;

    .end local v34           #services:Ljava/util/List;
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .restart local v34       #services:Ljava/util/List;
    :cond_9
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 478
    .end local v33           #serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v34           #services:Ljava/util/List;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->context:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3300(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInWhiteApps(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 480
    :cond_b
    const/16 v37, 0x2

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    goto/16 :goto_6

    .line 484
    :cond_c
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    goto/16 :goto_6

    .line 509
    .restart local v34       #services:Ljava/util/List;
    :cond_d
    if-eqz v34, :cond_e

    .line 511
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 512
    .local v36, tmplist:[Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 513
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->services:[Ljava/lang/String;

    .line 523
    .end local v36           #tmplist:[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v37, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->toString()Ljava/lang/String;

    move-result-object v38

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    .line 444
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    .end local v27           #pkg_find:Z
    .end local v34           #services:Ljava/util/List;
    :cond_f
    add-int/lit8 v9, v10, 0x1

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_5

    .line 529
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v26           #package_name:Ljava/lang/String;
    :cond_10
    add-int/lit8 v22, v22, 0x1

    .line 530
    mul-int/lit8 v37, v22, 0x64

    div-int v37, v37, v35

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 531
    goto/16 :goto_4

    .line 533
    .end local v11           #importance:I
    .end local v28           #process_name:Ljava/lang/String;
    .end local v31           #runningProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_11
    if-nez v35, :cond_12

    .line 535
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->publishProgress([Ljava/lang/Object;)V

    .line 537
    :cond_12
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x64

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 551
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
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
    .line 555
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 556
    .local v3, mi:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 559
    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    if-nez v4, :cond_1

    .line 560
    :cond_0
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3502(J)J

    .line 562
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setRunningProcessInfoList(Ljava/util/List;)V

    .line 564
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 565
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 573
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-static {}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3500()J

    move-result-wide v5

    invoke-interface {v4, p1, v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateRunningProcessList(Ljava/util/List;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 579
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 580
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v5, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    .line 583
    invoke-static {p1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3102(Ljava/util/List;)Ljava/util/List;

    .line 585
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 589
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 590
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 595
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->needpublishProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 599
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
