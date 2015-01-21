.class public Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const-string v2, "durationToDiscard"

    const-string v3, ">= 0"

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->a:I

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->b:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->b:I

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;->audioDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->b:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->b:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->a:I

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms of audio dropped so far."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/DropChunksPipe;->clearBuffers()V

    :cond_0
    return-void
.end method
