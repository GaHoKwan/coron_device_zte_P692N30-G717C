.class public Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;-><init>()V

    return-void
.end method


# virtual methods
.method public chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->notifyChunksAvailable()V

    return-void
.end method

.method public framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->notifyFramesDropped()V

    return-void
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->getAudioChunkFromSource()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    return-object v0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->getAudioTypeFromSource()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->getChunksAvailableFromSource()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SimplePipe;->notifySourceClosed()V

    return-void
.end method
