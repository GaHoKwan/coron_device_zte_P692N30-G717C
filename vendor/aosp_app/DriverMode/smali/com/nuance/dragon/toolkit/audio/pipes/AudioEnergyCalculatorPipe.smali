.class public Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

.field private final b:Ljava/util/LinkedList;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const-string v0, "AudioEnergyListener"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->a:Lcom/nuance/dragon/toolkit/audio/AudioEnergyListener;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-void
.end method

.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 12

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_5

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_5

    const-string v1, "big AudioChunk"

    invoke-static {v1, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "big audio chunk\'s duration"

    const-string v3, "greater than 20ms"

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    const/16 v4, 0x14

    if-le v1, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    div-int/lit8 v4, v1, 0x14

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    rem-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    const-string v1, "the given big Chunk\'s duration is not the multipler of 20ms we may miss some audio in the end for calculating the audio energy level."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-array v5, v4, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v1, v1

    div-int v6, v1, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_4

    new-array v7, v6, [S

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    mul-int v2, v3, v6

    const/4 v8, 0x0

    invoke-static {v1, v2, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v1, 0x0

    iget-wide v8, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    iget-wide v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioTimestamp:J

    iget v8, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    int-to-long v8, v8

    int-to-long v10, v4

    div-long/2addr v8, v10

    add-long/2addr v1, v8

    :cond_1
    new-instance v8, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-object v9, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v8, v9, v7, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    aput-object v8, v5, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    array-length v2, v5

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v5, v1

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe$1;-><init>(Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    return-void
.end method

.method protected sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AudioEnergyCalculatorPipe;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-super {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->sourceClosed(Lcom/nuance/dragon/toolkit/audio/AudioSource;Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    return-void
.end method
