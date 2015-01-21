.class public abstract Lcom/nuance/dragon/toolkit/audio/AudioSource;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/util/internal/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioSource;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    return-void
.end method


# virtual methods
.method protected abstract audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
.end method

.method protected abstract audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
.end method

.method public final getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioSource;->a:Lcom/nuance/dragon/toolkit/util/internal/g;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)V

    goto :goto_0
.end method

.method public getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)V
    .locals 1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
.end method

.method public abstract getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
.end method

.method public abstract getChunksAvailable()I
.end method

.method public abstract getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I
.end method

.method public abstract isActive()Z
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailable()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return v0
.end method
