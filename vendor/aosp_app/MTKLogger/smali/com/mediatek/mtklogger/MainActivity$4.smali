.class Lcom/mediatek/mtklogger/MainActivity$4;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/MainActivity;
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
    .line 259
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x5

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/mtklogger/MainActivity;->access$614(Lcom/mediatek/mtklogger/MainActivity;J)J

    .line 263
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$800(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->calculateTimer()Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$700(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 265
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "mMessageHandler->handleMessage() msg.what == MSG_WAITING_DIALOG_TIMER"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->stopWaitingDialog()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$000(Lcom/mediatek/mtklogger/MainActivity;)V

    goto :goto_0

    .line 267
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 268
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "mMessageHandler->handleMessage() msg.what == MSG_MONITOR_SDCARD_BAR"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->refreshSdcardBar()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$900(Lcom/mediatek/mtklogger/MainActivity;)V

    goto :goto_0

    .line 270
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 271
    sget-boolean v0, Lcom/mediatek/mtklogger/framework/LogReceiver;->canKillSelf:Z

    if-nez v0, :cond_4

    .line 272
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "Log service is ready, release UI blocking."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    iget-object v2, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {v1, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/MainActivity;->access$1002(Lcom/mediatek/mtklogger/MainActivity;Lcom/mediatek/mtklogger/framework/MTKLoggerManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 274
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->hideWaitingServiceDialog()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$1100(Lcom/mediatek/mtklogger/MainActivity;)V

    goto :goto_0

    .line 276
    :cond_4
    invoke-static {}, Lcom/mediatek/mtklogger/MainActivity;->access$1200()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_5

    .line 277
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "After so long waiting, service is not ready yet, start it myself"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    iget-object v2, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {v1, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/MainActivity;->access$1002(Lcom/mediatek/mtklogger/MainActivity;Lcom/mediatek/mtklogger/framework/MTKLoggerManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 279
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #calls: Lcom/mediatek/mtklogger/MainActivity;->hideWaitingServiceDialog()V
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$1100(Lcom/mediatek/mtklogger/MainActivity;)V

    goto :goto_0

    .line 281
    :cond_5
    const-string v0, "MTKLogger/MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log service is still not ready, keep waiting, last waiting index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mtklogger/MainActivity;->access$1200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/mediatek/mtklogger/MainActivity;->access$1208()I

    .line 284
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$500(Lcom/mediatek/mtklogger/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/mtklogger/MainActivity;->access$500(Lcom/mediatek/mtklogger/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$4;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$500(Lcom/mediatek/mtklogger/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
