.class Lcom/mediatek/mtklogger/framework/MultiModemLog$1;
.super Ljava/lang/Object;
.source "MultiModemLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;->runMonitoringLogSizeThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 706
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v6, "Start Check log thread"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1700(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "modemlog_logsize"

    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, sizeStr:Ljava/lang/String;
    const/16 v1, 0x3e8

    .line 711
    .local v1, mSize:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v5, v5, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tag_log_ongoing"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 718
    .local v4, waitTimeBeforeRecycle:I
    if-lez v4, :cond_0

    .line 720
    mul-int/lit16 v5, v4, 0x3e8

    int-to-long v5, v5

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 721
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v5, v5, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "tag_log_ongoing"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 722
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v6, "Waiting tag log before recycle process success, begin recycle now"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$800(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 731
    sget-object v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, sdPathFromPropert:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 737
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v5

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->recycleLogFolder(ILjava/lang/String;)V
    invoke-static {v5, v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$1800(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;ILjava/lang/String;)V

    .line 743
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v6, v5, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    monitor-enter v6

    .line 745
    :try_start_2
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v5, v5, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 749
    :goto_2
    :try_start_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 712
    .end local v2           #sdPathFromPropert:Ljava/lang/String;
    .end local v4           #waitTimeBeforeRecycle:I
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "MTKLogger/MultiModemLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The size \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is error!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/16 v1, 0x3e8

    goto :goto_0

    .line 725
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #waitTimeBeforeRecycle:I
    :catch_1
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v6, "Waiting tag log before recycle process was interrupted"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 739
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #sdPathFromPropert:Ljava/lang/String;
    :cond_1
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v6, " mModemManager become null, stop recycle process"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v2           #sdPathFromPropert:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadRunning:Z
    invoke-static {v5, v9}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1902(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 752
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v6, "Exit Check log thread"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void

    .line 746
    .restart local v2       #sdPathFromPropert:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 747
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "MTKLogger/MultiModemLog"

    const-string v7, "Wait clear log check process was interrupted."

    invoke-static {v5, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
