.class Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;
.super Ljava/lang/Thread;
.source "TagLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Lcom/mediatek/mtklogger/taglog/TagLogManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 498
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "-->begin tag log compressing thread"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_compressing"

    const/16 v33, 0x1

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 503
    .local v24, sDCardPath:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->checkSdCardSpace(Ljava/lang/String;)I

    move-result v25

    .line 504
    .local v25, sDCardSpaceStatus:I
    const/16 v31, 0x191

    move/from16 v0, v25

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_compressing"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    :goto_0
    return-void

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->getLogPath()Landroid/util/SparseArray;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;

    move-result-object v21

    .line 511
    .local v21, logToolPath:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1502(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/util/List;)Ljava/util/List;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "modem_exception_path"

    const-string v33, ""

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, eeModemLogPath:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_d

    const-string v31, "polling"

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    const/16 v16, 0x1

    .line 516
    .local v16, isModemLogReady:Z
    :goto_1
    const/4 v11, 0x0

    .line 517
    .local v11, i:I
    :cond_1
    :goto_2
    if-nez v16, :cond_3

    const/16 v31, 0x258

    move/from16 v0, v31

    if-ge v11, v0, :cond_3

    .line 519
    const-wide/16 v31, 0x3e8

    :try_start_0
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V

    .line 520
    add-int/lit8 v11, v11, 0x1

    .line 521
    rem-int/lit8 v31, v11, 0x5

    if-nez v31, :cond_2

    .line 522
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Modem Log is not Ready , wait for 5s"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "modem_exception_path"

    const-string v33, ""

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_e

    const-string v31, "polling"

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_e

    const/16 v16, 0x1

    .line 526
    :goto_3
    const/16 v31, 0x1e

    move/from16 v0, v31

    if-lt v11, v0, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 527
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Wait 30s but still no modem dump begin information, treat it as timeout EE"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z
    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1702(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_3
    const/16 v31, 0x258

    move/from16 v0, v31

    if-lt v11, v0, :cond_4

    .line 536
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " Modem dump cost too much time, eeModemLogPath="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "modem_exception_path"

    const-string v33, ""

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "MODEM_EXCEPTION_PATH : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", mIsTimeoutEE="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v33, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z
    invoke-static/range {v33 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1800(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    new-instance v32, Lcom/mediatek/mtklogger/taglog/LogInformation;

    const/16 v33, 0x2

    new-instance v34, Ljava/io/File;

    move-object/from16 v0, v34

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v32 .. v34}, Lcom/mediatek/mtklogger/taglog/LogInformation;-><init>(ILjava/io/File;)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v10           #eeModemLogPath:Ljava/lang/String;
    .end local v11           #i:I
    .end local v16           #isModemLogReady:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->initToolStatus()V
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 545
    sget-object v31, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 558
    .local v22, logType:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 559
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Type of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " log is running!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-eqz v31, :cond_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1800(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 565
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Modem log is running!"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1900(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    move-result-object v31

    const/16 v32, 0x2

    invoke-virtual/range {v31 .. v32}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstanceRunningStatus(I)I

    move-result v7

    .line 567
    .local v7, currentRunningStage:I
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "modemLogRunningDetailStatus : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v11, 0x0

    .line 569
    .restart local v11       #i:I
    :cond_8
    :goto_5
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_9

    .line 571
    const-wide/16 v31, 0x1f4

    :try_start_1
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1900(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    move-result-object v31

    const/16 v32, 0x2

    invoke-virtual/range {v31 .. v32}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstanceRunningStatus(I)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 573
    add-int/lit8 v11, v11, 0x1

    .line 574
    const/16 v31, 0xa

    move/from16 v0, v31

    if-ne v11, v0, :cond_8

    .line 581
    :cond_9
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "After wait for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    int-to-double v0, v11

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    mul-double v33, v33, v35

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "s, modemLogRunningDetailStatus : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_a

    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v7, v0, :cond_f

    :cond_a
    const/4 v14, 0x1

    .line 585
    .local v14, isModem1Running:Z
    :goto_6
    if-eqz v14, :cond_b

    .line 586
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Modem one is running!"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v33, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 588
    .local v18, logFile:Ljava/io/File;
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    new-instance v32, Lcom/mediatek/mtklogger/taglog/LogInformation;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;-><init>(ILjava/io/File;)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v18           #logFile:Ljava/io/File;
    :cond_b
    const/16 v31, 0x2

    move/from16 v0, v31

    if-eq v7, v0, :cond_c

    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v7, v0, :cond_10

    :cond_c
    const/4 v15, 0x1

    .line 594
    .local v15, isModem2Running:Z
    :goto_7
    if-eqz v15, :cond_6

    .line 595
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Modem two is running!"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/mtklog/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "dualmdlog"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 598
    .local v8, dualModemPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v32

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v8, v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 599
    .restart local v18       #logFile:Ljava/io/File;
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    new-instance v32, Lcom/mediatek/mtklogger/taglog/LogInformation;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;-><init>(ILjava/io/File;)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 515
    .end local v7           #currentRunningStage:I
    .end local v8           #dualModemPath:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #isModem1Running:Z
    .end local v15           #isModem2Running:Z
    .end local v18           #logFile:Ljava/io/File;
    .end local v22           #logType:Ljava/lang/Integer;
    .restart local v10       #eeModemLogPath:Ljava/lang/String;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 525
    .restart local v11       #i:I
    .restart local v16       #isModemLogReady:Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 531
    :catch_0
    move-exception v9

    .line 532
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Catch InterruptedException"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 577
    .end local v9           #e:Ljava/lang/InterruptedException;
    .end local v10           #eeModemLogPath:Ljava/lang/String;
    .end local v16           #isModemLogReady:Z
    .restart local v7       #currentRunningStage:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v22       #logType:Ljava/lang/Integer;
    :catch_1
    move-exception v9

    .line 578
    .restart local v9       #e:Ljava/lang/InterruptedException;
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Catch InterruptedException"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 583
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 592
    .restart local v14       #isModem1Running:Z
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 605
    .end local v7           #currentRunningStage:I
    .end local v11           #i:I
    .end local v14           #isModem1Running:Z
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v33, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 606
    .restart local v18       #logFile:Ljava/io/File;
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    new-instance v32, Lcom/mediatek/mtklogger/taglog/LogInformation;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;-><init>(ILjava/io/File;)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 612
    .end local v18           #logFile:Ljava/io/File;
    .end local v22           #logType:Ljava/lang/Integer;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I
    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2202(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 614
    .local v20, logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogFilesCount()I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2212(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)I

    goto :goto_8

    .line 616
    .end local v20           #logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :cond_13
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Total taglog files count is : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v33, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I
    invoke-static/range {v33 .. v33}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/app/ProgressDialog;

    move-result-object v31

    if-eqz v31, :cond_14

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/app/ProgressDialog;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 621
    :cond_14
    new-instance v28, Landroid/os/StatFs;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 622
    .local v28, stat:Landroid/os/StatFs;
    invoke-virtual/range {v28 .. v28}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 623
    .local v3, availableBlocks:I
    invoke-virtual/range {v28 .. v28}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    .line 624
    .local v4, blockSize:I
    int-to-long v0, v3

    move-wide/from16 v31, v0

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v26, v31, v33

    .line 625
    .local v26, sdAvailableSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getTagLogNeededSize(Ljava/util/List;)J

    move-result-wide v32

    sub-long v32, v32, v26

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mNeedMoreSpace:J

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mNeedMoreSpace:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-lez v31, :cond_15

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    move-result-object v31

    const/16 v32, 0x192

    invoke-virtual/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_compressing"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 632
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->startOrStopAllLogTool(Z)V
    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2500(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 637
    :cond_16
    const-wide/16 v5, 0x0

    .line 638
    .local v5, currentLogSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 639
    .local v19, logInfo:Lcom/mediatek/mtklogger/taglog/LogInformation;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogSize()J

    move-result-wide v31

    add-long v5, v5, v31

    goto :goto_9

    .line 641
    .end local v19           #logInfo:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_ongoing"

    const-wide/16 v33, 0x400

    div-long v33, v5, v33

    const-wide/16 v35, 0x400

    div-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    div-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v33, v0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_20

    .line 645
    const/4 v13, 0x0

    .line 646
    .local v13, isAllStop:Z
    const/16 v30, 0x0

    .line 647
    .local v30, timer:I
    :cond_18
    :goto_a
    if-nez v13, :cond_1f

    .line 648
    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v30, v0

    .line 649
    const/16 v31, 0x3e80

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_19

    .line 650
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "Waiting log stopped timeout"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_compressing"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 655
    :cond_19
    const-wide/16 v31, 0x1f4

    :try_start_2
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 660
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsWaitingLogStateChange:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 661
    sget-object v31, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1a
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 662
    .restart local v22       #logType:Ljava/lang/Integer;
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v33

    sget-object v31, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    move/from16 v0, v32

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 664
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-eqz v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-eqz v31, :cond_1a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1800(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v31

    if-nez v31, :cond_1a

    .line 667
    :cond_1c
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "The type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " log is not stopped!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v13, 0x0

    .line 670
    goto/16 :goto_a

    .line 656
    .end local v22           #logType:Ljava/lang/Integer;
    :catch_2
    move-exception v9

    .line 657
    .restart local v9       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_b

    .line 672
    .end local v9           #e:Ljava/lang/InterruptedException;
    .restart local v22       #logType:Ljava/lang/Integer;
    :cond_1d
    sget-object v31, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 673
    .local v17, key:Ljava/lang/String;
    const-string v31, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 674
    .local v23, nativeStatus:Ljava/lang/String;
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " Native log("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") running status="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v31, "1"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 676
    const/4 v13, 0x0

    .line 677
    goto/16 :goto_a

    .line 679
    :cond_1e
    const-string v31, "MTKLogger/TagLogManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "The type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " log is stopped!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v13, 0x1

    .line 682
    goto/16 :goto_c

    .line 685
    .end local v17           #key:Ljava/lang/String;
    .end local v22           #logType:Ljava/lang/Integer;
    .end local v23           #nativeStatus:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->startOrStopAllLogTool(Z)V
    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2500(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    .line 688
    .end local v13           #isAllStop:Z
    .end local v30           #timer:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->createTagLogFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 692
    .local v29, tagLogFolderName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->rememberCurrentTaggingLogFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2700(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->tagSelectedLogFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2800(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-object/from16 v31, v0

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v31 .. v31}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "tag_log_compressing"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    const-string v31, "MTKLogger/TagLogManager"

    const-string v32, "<--tag log compressing thread end"

    invoke-static/range {v31 .. v32}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
