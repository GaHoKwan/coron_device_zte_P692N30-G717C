.class Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;
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
    .line 475
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, action:Ljava/lang/String;
    const-string v4, "MTKLogger/MTKLoggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mIPOReceiver intent action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 481
    const-string v4, "MTKLogger/MTKLoggerService"

    const-string v5, "Get IPO_SHUTDOWN event!"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v4, "internal_sd"

    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    const/4 v2, 0x1

    .line 484
    .local v2, isSharedSDOn:Z
    const/4 v1, 0x1

    .line 485
    .local v1, isSdSwapOn:Z
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v3

    .line 486
    .local v3, sdSwapState:Z
    const-string v4, "MTKLogger/MTKLoggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSharedSDOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSdSwapOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sdSwapState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 489
    :cond_0
    const-string v4, "MTKLogger/MTKLoggerService"

    const-string v5, "For emmc with shared sd feature on, stop log directly"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    const/4 v5, 0x0

    const-string v6, "ipo_shutdown"

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V

    .line 495
    .end local v1           #isSdSwapOn:Z
    .end local v2           #isSharedSDOn:Z
    .end local v3           #sdSwapState:Z
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isInIPOShutdown:Z

    .line 497
    :cond_2
    return-void
.end method
