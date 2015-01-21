.class Lcom/mediatek/mtklogger/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/MainActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 494
    const-string v8, "MTKLogger/MainActivity"

    const-string v11, "StartStopToggleButton button is clicked!"

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    instance-of v8, p1, Landroid/widget/ToggleButton;

    if-eqz v8, :cond_0

    move-object v1, p1

    .line 496
    check-cast v1, Landroid/widget/ToggleButton;

    .line 497
    .local v1, button:Landroid/widget/ToggleButton;
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    .line 498
    .local v3, isChecked:Z
    const-string v8, "MTKLogger/MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StartStopToggleButton button is checked ? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$400(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "waiting_sd_ready_reason"

    const-string v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, waitSDStatusStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 501
    const-string v8, "MTKLogger/MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "At click start button time, waitSDStatusStr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ignore start command now"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-nez v3, :cond_1

    move v8, v9

    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 503
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    iget-object v9, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const v11, 0x7f07006f

    invoke-virtual {v9, v11}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 559
    .end local v1           #button:Landroid/widget/ToggleButton;
    .end local v3           #isChecked:Z
    .end local v7           #waitSDStatusStr:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1       #button:Landroid/widget/ToggleButton;
    .restart local v3       #isChecked:Z
    .restart local v7       #waitSDStatusStr:Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 502
    goto :goto_0

    .line 506
    :cond_2
    const/4 v0, 0x0

    .line 507
    .local v0, allLogType:I
    const/4 v6, 0x1

    .line 508
    .local v6, startStopCmdResp:Z
    if-eqz v3, :cond_f

    .line 509
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 510
    .local v5, logType:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v11

    sget-object v8, Lcom/mediatek/mtklogger/settings/SettingsActivity;->KEY_LOG_SWITCH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v11, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    or-int/2addr v0, v8

    goto :goto_2

    :cond_3
    move v8, v10

    goto :goto_3

    .line 514
    .end local v5           #logType:Ljava/lang/Integer;
    :cond_4
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_8

    .line 515
    const/4 v4, 0x0

    .line 516
    .local v4, isMobileLogsOn:Z
    if-nez v4, :cond_5

    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "mobilelog_androidlog"

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    move v4, v9

    .line 518
    :goto_4
    if-nez v4, :cond_6

    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "mobilelog_kernellog"

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    move v4, v9

    .line 520
    :goto_5
    if-nez v4, :cond_7

    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "mobilelog_btlog"

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    move v4, v9

    .line 522
    :goto_6
    if-nez v4, :cond_8

    .line 523
    add-int/lit8 v0, v0, -0x1

    .line 524
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const v12, 0x7f070011

    invoke-virtual {v11, v12}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 528
    .end local v4           #isMobileLogsOn:Z
    :cond_8
    if-nez v0, :cond_d

    .line 529
    if-nez v3, :cond_c

    :goto_7
    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 530
    const-string v8, "MTKLogger/MainActivity"

    const-string v9, "No log type was enabled in settings page."

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    iget-object v9, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const v11, 0x7f070012

    invoke-virtual {v9, v11}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .restart local v4       #isMobileLogsOn:Z
    :cond_9
    move v4, v10

    .line 516
    goto :goto_4

    :cond_a
    move v4, v10

    .line 518
    goto :goto_5

    :cond_b
    move v4, v10

    .line 520
    goto :goto_6

    .end local v4           #isMobileLogsOn:Z
    :cond_c
    move v9, v10

    .line 529
    goto :goto_7

    .line 534
    :cond_d
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1000(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    move-result-object v8

    const-string v10, "from_ui"

    invoke-virtual {v8, v0, v10}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->startLog(ILjava/lang/String;)Z

    move-result v6

    .line 542
    :goto_8
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->changeWaitingDialog()V
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$300(Lcom/mediatek/mtklogger/MainActivity;)V

    .line 545
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 546
    .restart local v5       #logType:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v10

    sget-object v8, Lcom/mediatek/mtklogger/settings/SettingsActivity;->KEY_LOG_SWITCH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v10, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 548
    const-string v8, "MTKLogger/MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Log("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") new auto start value= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", startStopCmdResp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-eqz v6, :cond_12

    .line 551
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v10, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9

    .line 536
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #logType:Ljava/lang/Integer;
    :cond_f
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 537
    .restart local v5       #logType:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$400(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v11

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v11, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v9, v8, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_b
    or-int/2addr v0, v8

    goto :goto_a

    :cond_10
    move v8, v10

    goto :goto_b

    .line 540
    .end local v5           #logType:Ljava/lang/Integer;
    :cond_11
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity$7;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    invoke-static {v8}, Lcom/mediatek/mtklogger/MainActivity;->access$1000(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    move-result-object v8

    const-string v10, "from_ui"

    invoke-virtual {v8, v0, v10}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->stopLog(ILjava/lang/String;)Z

    move-result v6

    goto/16 :goto_8

    .line 554
    .restart local v5       #logType:Ljava/lang/Integer;
    :cond_12
    const-string v8, "MTKLogger/MainActivity"

    const-string v10, "Call start/stop command fail, not need to change log\'s auto start value"

    invoke-static {v8, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method
