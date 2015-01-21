.class public Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    return-void
.end method

.method protected chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getChunksAvailableForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    iget v3, v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->notifyChunksAvailable()V

    :cond_1
    return-void
.end method

.method public clearBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    return-void
.end method

.method public connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method protected framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->notifyFramesDropped()V

    return-void
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    iget v2, v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    goto :goto_0
.end method

.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getBufferedDuration()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->d:I

    return v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->isSourceActive()Z

    move-result v0

    return v0
.end method

.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    return-void
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->notifySourceClosed()V

    return-void
.end method
