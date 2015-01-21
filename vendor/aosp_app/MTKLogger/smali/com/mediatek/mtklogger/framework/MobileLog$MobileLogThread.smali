.class Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;
.super Ljava/lang/Thread;
.source "MobileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MobileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MobileLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MobileLog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-direct {v1, v2}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;-><init>(Lcom/mediatek/mtklogger/framework/MobileLog;)V

    iput-object v1, v0, Lcom/mediatek/mtklogger/framework/MobileLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 89
    const-string v0, "MTKLogger/MobileLog"

    const-string v1, "Begin to construct MobileLogConnection instance with MobileLog handler."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const-string v3, "mobilelogd"

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v4, v4, Lcom/mediatek/mtklogger/framework/MobileLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/MobileLog;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 91
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v1, v0, Lcom/mediatek/mtklogger/framework/MobileLog;->mobileLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MobileLog;->mobileLogLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
