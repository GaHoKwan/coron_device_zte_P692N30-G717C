.class final Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;
.super Lcom/nuance/dragon/toolkit/audio/AudioSink;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/AudioSink;-><init>()V

    return-void
.end method


# virtual methods
.method public final chunksAvailable(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p0}, Lcom/nuance/dragon/toolkit/audio/AudioSource;->getAllAudioChunksForSink(Lcom/nuance/dragon/toolkit/audio/AudioSink;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v7, v1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioEndTimestamp:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    :goto_1
    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v5, v5

    invoke-static {v1, v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;I)I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->a(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got delayed secondary audio ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " missing)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->b(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe$1;->a:Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;->c(Lcom/nuance/dragon/toolkit/audio/pipes/AlignedMergerPipe;)V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public final framesDropped(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    return-void
.end method

.method public final sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 0

    return-void
.end method
