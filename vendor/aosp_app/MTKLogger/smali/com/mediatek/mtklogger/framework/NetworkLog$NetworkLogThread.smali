.class Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;
.super Ljava/lang/Thread;
.source "NetworkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/NetworkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/NetworkLog;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 81
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    invoke-direct {v1, v2}, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;-><init>(Lcom/mediatek/mtklogger/framework/NetworkLog;)V

    iput-object v1, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 82
    const-string v0, "MTKLogger/NetworkLog"

    const-string v1, "Begin to construct NetworkLogConnection instance with NetworkLog handler."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    new-instance v1, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;

    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    const-string v3, "netdiag"

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    iget-object v4, v4, Lcom/mediatek/mtklogger/framework/NetworkLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/NetworkLog;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 84
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    iget-object v1, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->networLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->networLogLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
