.class public Lcom/zte/update/ui/HandleTimer;
.super Ljava/lang/Object;
.source "HandleTimer.java"


# instance fields
.field private callback:Lcom/zte/update/ui/HandleTimerCallback;

.field private isStop:Z

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/zte/update/ui/HandleTimerCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/zte/update/ui/HandleTimer;->callback:Lcom/zte/update/ui/HandleTimerCallback;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/ui/HandleTimer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isStop()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/zte/update/ui/HandleTimer;->isStop:Z

    return v0
.end method

.method protected onTime()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected onTimeHandle()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->callback:Lcom/zte/update/ui/HandleTimerCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->callback:Lcom/zte/update/ui/HandleTimerCallback;

    invoke-interface {v0}, Lcom/zte/update/ui/HandleTimerCallback;->onTimeHandle()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/zte/update/ui/HandleTimer;->onTime()V

    goto :goto_0
.end method

.method public declared-synchronized restart(J)V
    .locals 2
    .parameter "period"

    .prologue
    .line 28
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/zte/update/ui/HandleTimer;->restart(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restart(JJ)V
    .locals 1
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/update/ui/HandleTimer;->stop()V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/update/ui/HandleTimer;->start(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    const-wide/16 v0, 0x320

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/update/ui/HandleTimer;->start(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(J)V
    .locals 2
    .parameter "period"

    .prologue
    .line 50
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/zte/update/ui/HandleTimer;->start(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(JJ)V
    .locals 2
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Lcom/zte/update/ui/HandleTimer$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/zte/update/ui/HandleTimer$1;-><init>(Lcom/zte/update/ui/HandleTimer;J)V

    iput-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;

    .line 70
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/update/ui/HandleTimer;->onTimeHandle()V

    .line 82
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/update/ui/HandleTimer;->mRunnable:Ljava/lang/Runnable;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/update/ui/HandleTimer;->isStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
