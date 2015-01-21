.class Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;
.super Landroid/os/AsyncTask;
.source "MainExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1050
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1054
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1a

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1055
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;
    invoke-static {v7}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$400(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 1056
    .local v6, localItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-virtual {v6}, Lcom/zte/heartyservice/common/datatype/CommonListItem;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/examination/ExamType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/examination/ExamType;

    move-result-object v1

    .line 1057
    .local v1, examType:Lcom/zte/heartyservice/examination/ExamType;
    sget-object v7, Lcom/zte/heartyservice/examination/MainExamActivity$4;->$SwitchMap$com$zte$heartyservice$examination$ExamType:[I

    invoke-virtual {v1}, Lcom/zte/heartyservice/examination/ExamType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    const-string v7, "chenlu"

    const-string v8, "AUTORUNNING"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v7}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->disableAutoRunApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_1
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x20

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1070
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    const-string v7, "chenlu"

    const-string v8, "NETTRAFFIC"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setNetworkTrafficMonitorStatus(I)V

    .line 1072
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1c

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1076
    :pswitch_2
    const-string v7, "chenlu"

    const-string v8, "POWERPROTECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setSaveElectricityProtectorStatus(I)V

    .line 1078
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1d

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1082
    :pswitch_3
    const-string v7, "chenlu"

    const-string v8, "AUTOUPDATE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string v7, "hs_auto_update"

    invoke-static {v7, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1084
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x28

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1088
    :pswitch_4
    const-string v7, "chenlu"

    const-string v8, "PERMISSION"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPermissionMonitorStatus(I)V

    .line 1090
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1e

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1094
    :pswitch_5
    const-string v7, "chenlu"

    const-string v8, "MEMORYANDDEVICE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1098
    :pswitch_6
    const-string v7, "chenlu"

    const-string v8, "VIRRUS"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v5

    .line 1100
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1101
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 1102
    .local v4, item:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeNotSecurityApp(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)Z

    goto :goto_2

    .line 1105
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x22

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1109
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :pswitch_7
    const-string v7, "chenlu"

    const-string v8, "GABAGECLEAR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :try_start_1
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v7}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;
    invoke-static {v8}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2600(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1115
    :goto_3
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1f

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1112
    :catch_1
    move-exception v0

    .line 1113
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1119
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_8
    const-string v7, "chenlu"

    const-string v8, "SENSITIVEPERMISSION"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x23

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1124
    :pswitch_9
    const-string v7, "chenlu"

    const-string v8, "RUNNINGAPP"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :try_start_2
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v7}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1130
    :goto_4
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x21

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v6}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1127
    :catch_2
    move-exception v0

    .line 1128
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1134
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #examType:Lcom/zte/heartyservice/examination/ExamType;
    .end local v6           #localItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v8, 0x1b

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1135
    return-object v9

    .line 1057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1050
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
