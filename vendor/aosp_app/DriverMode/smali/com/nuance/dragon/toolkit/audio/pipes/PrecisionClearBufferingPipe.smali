.class public Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private final a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->b:Z

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->a:I

    return-void
.end method


# virtual methods
.method public clearBuffers(J)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->getChunksAvailable()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->getAudioChunk()Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    cmp-long v3, v3, p1

    if-ltz v3, :cond_3

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    iget-wide v2, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v3

    new-array v3, v3, [S

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v5, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v5

    array-length v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-wide v6, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    invoke-virtual {p0, v4}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->a(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->a(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected bridge synthetic onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-void
.end method

.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LATCHK] Buffering chunk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->getBufferedDuration()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->a:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->clearBuffers()V

    goto :goto_0
.end method

.method protected onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->b:Z

    return-void
.end method

.method protected onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/PrecisionClearBufferingPipe;->b:Z

    return-void
.end method
