.class Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 787
    iget v1, p1, Landroid/os/Message;->what:I

    .line 788
    .local v1, what:I
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mStartStopRespHandler receive message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 791
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "At boot up/IPO time, waiting SD card time out."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "waiting_sd_ready_reason"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$602(Z)Z

    .line 794
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const-string v3, "sd_timeout"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v2, v5, v3}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 798
    :cond_0
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 801
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleLogStateChangeMsg(Landroid/os/Handler;Landroid/os/Message;)V
    invoke-static {v2, p0, p1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$1200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 802
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 803
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 804
    .local v0, stageEvent:I
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleGlobalRunningStageChange(I)V
    invoke-static {v2, v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$1300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;I)V

    goto :goto_0

    .line 807
    .end local v0           #stageEvent:I
    :cond_3
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "Unknown message"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
