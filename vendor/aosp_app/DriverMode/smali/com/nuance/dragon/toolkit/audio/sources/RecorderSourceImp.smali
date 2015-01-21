.class public abstract Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;
.super Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;


# instance fields
.field private final _audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final _buffer:Ljava/util/List;

.field private _closed:Z

.field private _listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

.field private final _mainThreadHandler:Landroid/os/Handler;

.field private _started:Z

.field private _stopped:Z

.field private _useOwnWorkerThread:Z

.field private _workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

.field private _workerThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;-><init>()V

    const-string v0, "audioType"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/Checker;->checkArgForNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audioType"

    const-string v1, "a type supported by this player"

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->isCodecSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/Checker;->checkArgForCondition(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_useOwnWorkerThread:Z

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_mainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z

    return-void

    :cond_0
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/util/WorkerThread;)Lcom/nuance/dragon/toolkit/util/WorkerThread;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    return-object p1
.end method


# virtual methods
.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected handleFramesDropped()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$6;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$6;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleNewAudio(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleSourceClosed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->handleSourceClosed(Z)V

    return-void
.end method

.method protected handleSourceClosed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleStarted()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z

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

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;)V

    return-void
.end method

.method public startRecording(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Already started"

    invoke-static {p0, v0, v3}, Lcom/nuance/dragon/toolkit/util/internal/Checker;->checkState(Ljava/lang/Object;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_useOwnWorkerThread:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/util/WorkerThread;

    const-string v3, "com.nuance.dragon.toolkit.audio.sources.RecorderSource"

    invoke-direct {v0, v3}, Lcom/nuance/dragon/toolkit/util/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->start()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThreadHandler:Landroid/os/Handler;

    :cond_0
    const-string v0, "Starting recording"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_stopped:Z

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

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

    const-string v0, "Stopping recording"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_stopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_stopped:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$2;-><init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract stopRecordingInternal()V
.end method
