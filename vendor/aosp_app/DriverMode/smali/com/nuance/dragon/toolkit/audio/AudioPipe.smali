.class public abstract Lcom/nuance/dragon/toolkit/audio/AudioPipe;
.super Lcom/nuance/dragon/toolkit/audio/AudioSource;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioPipe;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    return-void
.end method


# virtual methods
.method protected abstract chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
.end method

.method public connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Source was already connected to this pipe"

    invoke-static {p0, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->b:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->b:Z

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
.end method

.method protected final getAudioChunkFromSource()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getAudioTypeFromSource()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getChunksAvailableFromSource()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    goto :goto_0
.end method

.method protected final getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method protected isAudioSourceTypeSupported(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final isSourceActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->getConnectedSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->isActive()Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
.end method
