.class public abstract Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final b:Ljava/util/List;

.field private c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;-><init>()V

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioType"

    const-string v1, "a type supported by this player"

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->j:Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i:Z

    return-void

    :cond_0
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->d:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->f:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->f:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected handleFramesDropped()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$6;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$6;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LATCHK] handleNewAudio() audio:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$4;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleSourceClosed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->handleSourceClosed(Z)V

    return-void
.end method

.method protected handleSourceClosed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$5;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleStarted()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->e:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$3;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V

    return-void
.end method

.method public startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Already started"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v3, "com.nuance.dragon.toolkit.audio.sources.RecorderSource"

    invoke-direct {v0, v3}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->c:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->d:Landroid/os/Handler;

    :cond_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->f:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->h:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->i:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected abstract startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
.end method

.method public stopRecording()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->h:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract stopRecordingInternal()V
.end method
