.class public abstract Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;
.super Lcom/nuance/dragon/toolkit/audio/AudioSource;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/AudioSink;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;-><init>()V

    return-void
.end method


# virtual methods
.method protected final audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void
.end method

.method protected final audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Wrong sink disconnected"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
.end method

.method public final getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->getChunksAvailable()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmptyForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyChunksAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method protected notifyFramesDropped()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method protected notifySourceClosed()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/SingleSinkSource;->a:Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method protected onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    return-void
.end method

.method protected onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    return-void
.end method
