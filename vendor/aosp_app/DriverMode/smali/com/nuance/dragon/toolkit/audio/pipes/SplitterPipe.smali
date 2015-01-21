.class public Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;
.super Lcom/nuance/dragon/toolkit/audio/AudioPipe;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/nuance/dragon/toolkit/audio/util/a;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioPipe;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/util/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected audioSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/util/a;->a()Lcom/nuance/dragon/toolkit/audio/util/a$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->isSourceActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    :cond_0
    return-void
.end method

.method protected audioSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/util/a$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->c()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Couldn\'t find audio sink to remove"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->b:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/util/a$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->getSingleChannelChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "getAudioChunkForSink(): Expected non-null chunk"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "getAudioChunkForSink(): Can\'t find sink"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->getAudioTypeFromSource()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/util/a$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->isSourceActive()Z

    move-result v0

    return v0
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/SplitterPipe;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioSink;

    invoke-virtual {v0, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
