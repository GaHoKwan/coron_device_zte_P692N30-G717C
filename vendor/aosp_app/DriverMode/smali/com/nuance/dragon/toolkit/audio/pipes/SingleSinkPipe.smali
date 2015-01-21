.class public abstract Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;
.super Lcom/nuance/dragon/toolkit/audio/AudioPipe;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private b:Z

.field private c:Z

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Lcom/nuance/dragon/toolkit/audio/AudioSink;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b:Z

    return v0
.end method


# virtual methods
.method protected final audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Wrong sink disconnected"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method protected getAllAudioChunks(Ljava/util/List;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->getAllAudioChunks(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected abstract getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
.end method

.method public final getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->getChunksAvailable()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmptyForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyChunksAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method protected notifyFramesDropped()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->c:Z

    goto :goto_0
.end method

.method protected notifySourceClosed()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->b:Z

    goto :goto_0
.end method

.method protected onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    return-void
.end method

.method protected onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    return-void
.end method
