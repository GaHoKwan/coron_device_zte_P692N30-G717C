.class final Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v3

    iget v4, v3, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v4

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->notifyChunksAvailable()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v3

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    move-result-object v4

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->notifySourceClosed()V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method
