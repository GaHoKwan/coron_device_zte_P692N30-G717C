.class Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;
.super Ljava/lang/Thread;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 228
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    iput-object v1, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 229
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Begin to construct ModemManager with ModemLog handler."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v3, v3, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;Landroid/os/Handler;)V

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$002(Lcom/mediatek/mtklogger/framework/MultiModemLog;Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    .line 231
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v1, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->modemLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->modemLogLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 233
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
