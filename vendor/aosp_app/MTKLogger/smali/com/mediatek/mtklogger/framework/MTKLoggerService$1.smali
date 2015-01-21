.class Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MTKLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MTKLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, action:Ljava/lang/String;
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storage status changed, action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current logPathType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v6, "external_sd"

    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "internal_sd"

    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 410
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 411
    .local v3, data:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 412
    .local v1, affectedPath:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_1
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-static {v6}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, currentLogPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$100(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z

    move-result v4

    .line 418
    .local v4, isLogRunning:Z
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AffectedPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new got currentLogPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isAnyLogRuning?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cached recording log path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 421
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 425
    :cond_3
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "SD card change was not happend in current log path, ignore."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v1           #affectedPath:Ljava/lang/String;
    .end local v2           #currentLogPath:Ljava/lang/String;
    .end local v3           #data:Landroid/net/Uri;
    .end local v4           #isLogRunning:Z
    :cond_4
    :goto_0
    return-void

    .line 429
    .restart local v1       #affectedPath:Ljava/lang/String;
    .restart local v2       #currentLogPath:Ljava/lang/String;
    .restart local v3       #data:Landroid/net/Uri;
    .restart local v4       #isLogRunning:Z
    :cond_5
    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 433
    :cond_6
    sget-boolean v6, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isInIPOShutdown:Z

    if-eqz v6, :cond_7

    .line 434
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Device is in IPO shut down phase, mark reason as ipo_shutdown."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v7, "ipo_shutdown"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v6, v9, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    .line 436
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "At IPO shut down time, reset log init flat to 0"

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v7, "setprop debug.mtklog.init.flag 0"

    invoke-virtual {v6, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->runShellCommand(Ljava/lang/String;)Z

    .line 438
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Send ipo_shutdown to native, stop service now."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-virtual {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->stopSelf()V

    goto :goto_0

    .line 442
    :cond_7
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v7, "storage_full_or_lost"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v6, v9, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_8
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 445
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$400(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "waiting_sd_ready_reason"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, waitSDStatuStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "waiting_sd_ready_reason"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 448
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got storage mounted event, isWaitingSDReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$600()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", waitSDStatuStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$600()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 452
    :cond_9
    invoke-static {v9}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$602(Z)Z

    .line 453
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got storage mounted event, cached waitSDStatuStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v6, v10, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_a
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v7, "storage_recovery"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v6, v10, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 460
    .end local v5           #waitSDStatuStr:Ljava/lang/String;
    :cond_b
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported broadcast action for SD card. action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    .end local v1           #affectedPath:Ljava/lang/String;
    .end local v2           #currentLogPath:Ljava/lang/String;
    .end local v3           #data:Landroid/net/Uri;
    .end local v4           #isLogRunning:Z
    :cond_c
    const-string v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 465
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Phone storage is low now. What should I do? "

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v7, "storage_full_or_lost"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v6, v9, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
