.class Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listAutoRunAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
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
    .line 603
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->needpublishProgress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 18
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    const/16 v15, 0x13

    invoke-static {v15}, Landroid/os/Process;->setThreadPriority(I)V

    .line 610
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->needpublishProgress:Z

    .line 612
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v3, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, autoRunAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v4, bootCompleteIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x220

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    const/4 v11, 0x0

    .line 623
    .local v11, now:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 624
    .local v13, size:I
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 625
    .local v12, progress:Ljava/lang/Integer;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 629
    .local v1, autoRunAppInfo:Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 631
    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_1

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/speedup/SpeedUpService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v16, Lcom/zte/heartyservice/common/contant/HeartyServiceIntent;->BUILT_IN_PACKAGE:[Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 637
    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 638
    .local v9, localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    if-nez v9, :cond_0

    .line 639
    new-instance v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .end local v9           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    invoke-direct {v9}, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;-><init>()V

    .line 640
    .restart local v9       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->packageName:Ljava/lang/String;

    .line 641
    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const/4 v15, 0x0

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    .line 643
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->compNames:Ljava/util/List;

    .line 646
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v6, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v14

    .line 649
    .local v14, status:I
    packed-switch v14, :pswitch_data_0

    .line 673
    :goto_1
    iget-object v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->compNames:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 675
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v9           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .end local v14           #status:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 680
    mul-int/lit8 v15, v11, 0x64

    div-int/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto/16 :goto_0

    .line 651
    .restart local v6       #cn:Landroid/content/ComponentName;
    .restart local v9       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .restart local v14       #status:I
    :pswitch_0
    iget v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    or-int/lit8 v15, v15, 0x0

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    goto :goto_1

    .line 654
    :pswitch_1
    iget v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    or-int/lit8 v15, v15, 0x1

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    goto :goto_1

    .line 657
    :pswitch_2
    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_2

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 658
    .local v5, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-boolean v15, v5, Landroid/content/pm/ComponentInfo;->enabled:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 659
    iget v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    or-int/lit8 v15, v15, 0x1

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    goto :goto_1

    .line 657
    .end local v5           #ci:Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2

    .line 661
    .restart local v5       #ci:Landroid/content/pm/ComponentInfo;
    :cond_3
    iget v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    or-int/lit8 v15, v15, 0x0

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    .line 663
    add-int/lit8 v11, v11, 0x1

    .line 664
    mul-int/lit8 v15, v11, 0x64

    div-int/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 665
    goto/16 :goto_0

    .line 669
    .end local v5           #ci:Landroid/content/pm/ComponentInfo;
    :pswitch_3
    iget v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    or-int/lit8 v15, v15, 0x0

    iput v15, v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    goto :goto_1

    .line 684
    .end local v1           #autoRunAppInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v9           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    .end local v14           #status:I
    :cond_4
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_5

    .line 685
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 686
    .restart local v9       #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v9}, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    .line 684
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 689
    .end local v9           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_5
    if-nez v13, :cond_6

    .line 691
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 693
    :cond_6
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x64

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 695
    return-object v3

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 700
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 701
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 603
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->onPostExecute(Ljava/util/List;)V

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
    .line 705
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAutoRunAppInfoList(Ljava/util/List;)V

    .line 706
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 707
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 710
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAutoRunAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 716
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    .line 717
    invoke-static {p1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3602(Ljava/util/List;)Ljava/util/List;

    .line 718
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 722
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 723
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 728
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->needpublishProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 732
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 603
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
