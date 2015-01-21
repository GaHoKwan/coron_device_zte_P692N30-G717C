.class public Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;


# instance fields
.field private final a:I

.field private final b:Ljava/util/LinkedList;

.field private final c:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final d:Z


# direct methods
.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/SingleSinkPipe;-><init>()V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->d:Z

    return-void
.end method


# virtual methods
.method protected chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAudioChunkForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->a:I

    iget v2, v0, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->channelCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->a:I

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->getSingleChannelChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->notifyChunksAvailable()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;->getSingleChannelChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v5

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v2, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v2, v2

    new-array v2, v2, [S

    iget-wide v3, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTtsMarkers:[Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->notifyChunksAvailable()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->notifyFramesDropped()V

    return-void
.end method

.method protected bridge synthetic getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AudioChunk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->c:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getChunksAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->isSourceActive()Z

    move-result v0

    return v0
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/ChannelFilterPipe;->notifySourceClosed()V

    return-void
.end method
