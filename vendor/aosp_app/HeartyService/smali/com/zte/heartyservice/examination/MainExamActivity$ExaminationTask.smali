.class Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;
.super Landroid/os/AsyncTask;
.source "MainExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExaminationTask"
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
.field private final sleepInterval:I

.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 818
    const/16 v0, 0x64

    iput v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->sleepInterval:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .parameter "arg0"

    .prologue
    .line 824
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x2

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 826
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    const/4 v10, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNetworkTrafficMonitorStatus()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 831
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 839
    :goto_0
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x4

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 841
    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    const/4 v10, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getSaveElectricityProtectorStatus()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 846
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 854
    :goto_1
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x6

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 856
    const-wide/16 v10, 0x64

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 860
    const/4 v10, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getSaveElectricityProtectorStatus()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 861
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x7

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 868
    :goto_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v10

    if-nez v10, :cond_0

    .line 869
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x26

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 871
    const-wide/16 v10, 0x64

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 875
    const/4 v10, 0x1

    const-string v11, "hs_auto_update"

    invoke-static {v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v11

    if-ne v10, v11, :cond_7

    .line 876
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x27

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 883
    :cond_0
    :goto_3
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->includePhoneFindBack()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 885
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v7

    .line 886
    .local v7, status:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 887
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x29

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 889
    const-wide/16 v10, 0x64

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 893
    if-lez v7, :cond_8

    .line 894
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x2a

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 901
    .end local v7           #status:I
    :cond_1
    :goto_4
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v10

    if-nez v10, :cond_2

    .line 902
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBackupStatus()J

    move-result-wide v8

    .line 903
    .local v8, time:J
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-ltz v10, :cond_2

    .line 904
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x2b

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 906
    const-wide/16 v10, 0x64

    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 910
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x2c

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 921
    .end local v8           #time:J
    :cond_2
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xa

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 923
    :try_start_6
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskWaiting()V
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2800(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    .line 928
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xb

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 934
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x24

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 936
    :try_start_7
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskWaiting()V
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2800(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 941
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x25

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 947
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xc

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 949
    :try_start_8
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskWaiting()V
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2800(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8

    .line 955
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xd

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 960
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xe

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 962
    :try_start_9
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->taskWaiting()V
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2800(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9

    .line 968
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0xf

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 972
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v10

    if-nez v10, :cond_d

    .line 974
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x10

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 978
    const/4 v10, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->initAntivirusEngine()Z

    move-result v11

    if-ne v10, v11, :cond_9

    .line 979
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 989
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1800(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 990
    .local v0, appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_b

    .line 992
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 993
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3

    .line 994
    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 827
    .end local v0           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    .line 1045
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_6
    return-object v10

    .line 833
    :cond_4
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 842
    :catch_1
    move-exception v1

    .line 843
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto :goto_6

    .line 848
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 857
    :catch_2
    move-exception v1

    .line 858
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto :goto_6

    .line 863
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/4 v11, 0x7

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 872
    :catch_3
    move-exception v1

    .line 873
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto :goto_6

    .line 878
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x27

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 890
    .restart local v7       #status:I
    :catch_4
    move-exception v1

    .line 891
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto :goto_6

    .line 896
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x2a

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 907
    .end local v7           #status:I
    .restart local v8       #time:J
    :catch_5
    move-exception v1

    .line 908
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto :goto_6

    .line 924
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v8           #time:J
    :catch_6
    move-exception v1

    .line 925
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "chenlu"

    const-string v11, "wait SCAN_APP_CACHE break;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v10, 0x0

    goto :goto_6

    .line 937
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v1

    .line 938
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "chenlu"

    const-string v11, "wait SCAN_APP_DATA break;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v10, 0x0

    goto :goto_6

    .line 951
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_8
    move-exception v1

    .line 952
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "chenlu"

    const-string v11, "wait SCAN_AUTORUN_APP break;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v10, 0x0

    goto :goto_6

    .line 964
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_9
    move-exception v1

    .line 965
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "chenlu"

    const-string v11, "wait SCAN_RUNNING_PROCESS break;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v10, 0x0

    goto :goto_6

    .line 981
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_9
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 982
    const/4 v10, 0x0

    goto :goto_6

    .line 997
    .restart local v0       #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    .line 1000
    const-wide/16 v10, 0x64

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_a

    .line 1004
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x14

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1013
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_b
    :goto_7
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getOpenCloudScan(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1015
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x15

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1016
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->cloudVinusScan()Ljava/util/List;

    move-result-object v6

    .line 1018
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    const-wide/16 v10, 0x64

    :try_start_b
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_b

    .line 1023
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :cond_c
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x16

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1028
    .end local v0           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x17

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1029
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->doPermissionScan()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    move-result-object v5

    .line 1031
    .local v5, result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    const-wide/16 v10, 0x64

    :try_start_c
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_c

    .line 1035
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x18

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1039
    const-wide/16 v10, 0x64

    :try_start_d
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_d

    .line 1043
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v11, 0x19

    const/4 v12, 0x0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v10, v11, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V

    .line 1045
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1001
    .end local v5           #result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    .restart local v0       #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_a
    move-exception v1

    .line 1002
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1006
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_e
    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;
    invoke-static {v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2900(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/utils/CallBack;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V

    goto :goto_7

    .line 1019
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v6       #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :catch_b
    move-exception v1

    .line 1020
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1032
    .end local v0           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    .restart local v5       #result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    :catch_c
    move-exception v1

    .line 1033
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1040
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v1

    .line 1041
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 817
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
