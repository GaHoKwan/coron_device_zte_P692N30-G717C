.class public Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private a:I

.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Z

.field private e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

.field private f:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->c:Z

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;B)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->f:Ljava/util/TimerTask;

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->f:Ljava/util/TimerTask;

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a:I

    int-to-long v2, v2

    iget v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->a:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method protected chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v3, v2, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chunksAvailable(): chunksAdded/chunksRead: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v2, v1, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v4, v0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v5, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAudioChunk(): AVAILABLE chunksAdded/chunksRead: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public getChunksAvailable()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->c:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->getChunksAvailable()I

    move-result v0

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public pauseUpdater()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    return-void
.end method

.method public resumeUpdater()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->d:Z

    return-void
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v3, v3, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->a:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->e:Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe$a;->b:I

    if-ne v3, v4, :cond_1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PeriodicUpdaterPipe;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
