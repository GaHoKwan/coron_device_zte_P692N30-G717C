.class Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;
.super Ljava/lang/Thread;
.source "MTKLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MTKLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogFolderMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 626
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Begin to monitor log folder status..."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :goto_0
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$800(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 628
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStorageReady()Z
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$900(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z

    move-result v4

    .line 629
    .local v4, isStorageReady:Z
    if-eqz v4, :cond_2

    .line 630
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->checkRemainingStorage()V
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$1000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    .line 632
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 633
    .local v5, logType:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    #getter for: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 635
    .local v0, currentState:I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 636
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->this$0:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    #calls: Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;
    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->access$1100(Lcom/mediatek/mtklogger/framework/MTKLoggerService;I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v3

    .line 637
    .local v3, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v3, :cond_1

    .line 638
    invoke-virtual {v3}, Lcom/mediatek/mtklogger/framework/LogInstance;->checkLogFolder()V

    goto :goto_1

    .line 640
    :cond_1
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Fail to get log instance when checking log folder."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    .end local v0           #currentState:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    .end local v5           #logType:Ljava/lang/Integer;
    :cond_2
    const-wide/32 v6, 0xea60

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Waiting check log folder been interrupted."

    invoke-static {v6, v7, v1}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 654
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #isStorageReady:Z
    :cond_3
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "End monitor log folder status."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method
