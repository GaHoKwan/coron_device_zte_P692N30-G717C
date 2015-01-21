.class Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "OneKeySpeedActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 31
    .parameter "className"
    .parameter "service"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-static/range {p2 .. p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v6

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$002(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 80
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_1

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getRunningProcessInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-eq v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_3

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAutoRunAppInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$300(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 86
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAutoRunAppInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$300(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAutoRunAppInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_4

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCacheInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_7

    .line 93
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 94
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCacheInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 96
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppFileInfoList()Ljava/util/List;

    move-result-object v14

    .line 97
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 98
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 99
    .local v15, loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    iget v5, v15, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    if-nez v5, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    .end local v15           #loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :catch_0
    move-exception v11

    .line 221
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_6
    :goto_1
    return-void

    .line 106
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAutoRunAppNum()I

    move-result v23

    .line 107
    .local v23, total_auto:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v6, 0x7f0a0055

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v25, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v7, v25

    const/16 v25, 0x1

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff8

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v7, v25

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 108
    .local v20, str_auto:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAutorunTxt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$600(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v6, 0x7f0a0054

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v26

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCache()J

    move-result-wide v27

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDeletedAppFileSize()J

    move-result-wide v29

    add-long v27, v27, v29

    invoke-static/range {v26 .. v28}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v25

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 113
    .local v21, str_cache:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->clearedGarbageTxt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$700(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/16 v24, 0x0

    .line 116
    .local v24, total_run:I
    const/4 v10, 0x0

    .line 117
    .local v10, can_close:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 120
    .local v19, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 121
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 125
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v6, 0x7f0a0051

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v25, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v7, v25

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 126
    .local v22, str_run:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->closedAppTxt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$800(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$902(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mRunningProcessInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$200(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 132
    .restart local v19       #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    .line 135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 137
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 139
    .local v4, appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .local v2, speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$900(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const/4 v6, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showCloseRunningProcess:Z
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1102(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 144
    .end local v2           #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :catch_1
    move-exception v5

    .line 149
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppCacheInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$400(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 150
    .local v16, localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 152
    .restart local v8       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .restart local v3       #appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 154
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, cacheSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v7, 0x7f0a0057

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v9, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .restart local v2       #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$900(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const/4 v6, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showClearAppCacheAndFile:Z
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1202(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 160
    .end local v2           #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #cacheSize:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :catch_2
    move-exception v5

    .line 165
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 166
    .local v17, localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    .line 167
    .restart local v3       #appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.zte.heartyservice"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 169
    .restart local v8       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 170
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, fileSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v7, 0x7f0a0057

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v12, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .restart local v2       #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$900(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const/4 v6, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showClearAppCacheAndFile:Z
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1202(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 176
    .end local v2           #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v12           #fileSize:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :catch_3
    move-exception v5

    .line 181
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAutoRunAppInfo:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$300(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 182
    .local v18, localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    move-object/from16 v0, v18

    iget v5, v0, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    if-eqz v5, :cond_e

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 187
    .restart local v8       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    .restart local v3       #appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 193
    .restart local v4       #appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .restart local v2       #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->listItems:Ljava/util/List;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$900(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const/4 v6, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->showDisableAutoRunApp:Z
    invoke-static {v5, v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$1302(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 199
    .end local v2           #speedItem:Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #localAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :catch_4
    move-exception v5

    .line 203
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-eq v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_11

    .line 204
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getRunningProcessInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V

    .line 206
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-eq v5, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_13

    .line 207
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAutoRunAppInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->disableAutoRunApp(Ljava/util/List;)V

    .line 209
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_14

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCacheInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V

    .line 215
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->speedType:Lcom/zte/heartyservice/common/datatype/SpeedType;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$100(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/common/datatype/SpeedType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    if-ne v5, v6, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v5

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCacheInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$000(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mAppFileInfo:Ljava/util/List;
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$500(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppFile(Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;->access$002(Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 228
    return-void
.end method
