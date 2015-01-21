.class Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listBackgroundAutoRunAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
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
    .line 736
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->needpublishProgress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/util/List;
    .locals 23
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    const/16 v20, 0x13

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->setThreadPriority(I)V

    .line 743
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->needpublishProgress:Z

    .line 745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v2, backgroudAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v15

    .line 748
    .local v15, pkgInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v14, 0x0

    .line 749
    .local v14, now:I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    .line 750
    .local v17, size:I
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 751
    .local v16, progress:Ljava/lang/Integer;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v12, localMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 755
    .local v13, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWidgetStartID()I

    move-result v18

    .line 756
    .local v18, startId:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWidgetEndID()I

    move-result v4

    .line 757
    .local v4, endId:I
    if-nez v4, :cond_3

    .line 758
    const/16 v4, 0x2710

    .line 762
    :goto_0
    const/16 v19, -0x1

    .line 763
    .local v19, startIdNow:I
    const/4 v5, -0x1

    .line 764
    .local v5, endIdNow:I
    move/from16 v6, v18

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 765
    invoke-virtual {v13, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .line 766
    .local v8, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v8, :cond_2

    .line 767
    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 768
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v9, :cond_0

    .line 769
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 774
    move/from16 v19, v6

    .line 776
    :cond_1
    move v5, v6

    .line 764
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 760
    .end local v5           #endIdNow:I
    .end local v6           #i:I
    .end local v8           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v19           #startIdNow:I
    :cond_3
    add-int/lit16 v4, v4, 0x7d0

    goto :goto_0

    .line 779
    .restart local v5       #endIdNow:I
    .restart local v6       #i:I
    .restart local v19       #startIdNow:I
    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 780
    const/16 v19, 0x0

    .line 782
    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_6

    .line 783
    const/4 v5, 0x0

    .line 785
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setWidgetStartID(I)V

    .line 786
    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setWidgetEndID(I)V

    .line 787
    const-string v20, "chenlu"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startIdNow:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",endIdNow:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 792
    .local v8, info:Landroid/content/pm/PackageInfo;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 794
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_9

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_9

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zte/heartyservice/speedup/SpeedUpService;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lcom/zte/heartyservice/common/contant/HeartyServiceIntent;->BUILT_IN_PACKAGE:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 799
    new-instance v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    invoke-direct {v10}, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;-><init>()V

    .line 800
    .local v10, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    .line 801
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    .line 803
    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->analysisReceiver(Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;)V

    .line 804
    iget-object v0, v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-eqz v20, :cond_7

    .line 807
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    iput v0, v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->hasWidget:I

    .line 808
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 809
    .local v11, localIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_8

    .line 810
    iput-object v11, v10, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->widgetIds:Ljava/util/List;

    .line 813
    :cond_8
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    .end local v10           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .end local v11           #localIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 816
    mul-int/lit8 v20, v14, 0x64

    div-int v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_2

    .line 807
    .restart local v10       #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_a
    const/16 v20, 0x0

    goto :goto_3

    .line 820
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v10           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_b
    if-nez v17, :cond_c

    .line 822
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V

    .line 825
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x64

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_4
    return-object v2

    .line 826
    :catch_0
    move-exception v3

    .line 827
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 835
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 836
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 736
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->onPostExecute(Ljava/util/List;)V

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
    .line 840
    .local p1, backgroudAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setBackgroundAutoRunAppInfoList(Ljava/util/List;)V

    .line 841
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 842
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 845
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v3, p1}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateBackgroundAutoRunAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V

    goto :goto_1

    .line 850
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 851
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v4, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    .line 852
    invoke-static {p1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3702(Ljava/util/List;)Ljava/util/List;

    .line 853
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 857
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 858
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 863
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->needpublishProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 867
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 736
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
