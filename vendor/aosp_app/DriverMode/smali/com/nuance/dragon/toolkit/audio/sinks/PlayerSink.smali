.class public abstract Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field protected _workerThreadHandler:Landroid/os/Handler;

.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

.field private k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioType"

    const-string v1, "a type supported by this player"

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->e:Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    goto :goto_0
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILjava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    add-int/2addr v1, v2

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v1, p2, :cond_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    return p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Lcom/nuance/dragon/toolkit/audio/AudioSource;ILjava/util/List;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    return v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object v0
.end method

.method static synthetic l(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    return-object v0
.end method

.method static synthetic m(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    return-object v0
.end method

.method static synthetic n(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    return-object v0
.end method


# virtual methods
.method protected audioSourceDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$3;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->audioSourceDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0
.end method

.method public chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a(Lcom/nuance/dragon/toolkit/audio/AudioSource;ILjava/util/List;)I

    move-result v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    return-void
.end method

.method protected getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getReferenceSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    return-object v0
.end method

.method protected handleAudioNeeded(I)V
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    sub-int/2addr p1, v0

    :cond_0
    if-lez p1, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->i:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$7;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected handleChunksPlayed(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleStarted()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$8;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$8;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleStopped()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$9;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
.end method

.method protected abstract newChunksInternal(Ljava/util/List;)V
.end method

.method protected abstract noNewChunksInternal()V
.end method

.method public sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startPlaying()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V

    return-void
.end method

.method public startPlaying(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Already started."

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v3, "com.nuance.dragon.toolkit.audio.sinks.PlayerSink"

    invoke-direct {v0, v3}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    :cond_0
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->d:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;

    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->h:I

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->k:Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->j:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/pipes/DuplicatorPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$4;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected abstract startPlayingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
.end method

.method public stopPlaying()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->g:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$5;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$5;-><init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract stopPlayingInternal()V
.end method
