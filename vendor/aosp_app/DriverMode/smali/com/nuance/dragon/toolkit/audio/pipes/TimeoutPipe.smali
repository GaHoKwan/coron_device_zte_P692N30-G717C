.class public Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private final a:I

.field private final b:Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe$Listener;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe$Listener;)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const-string v1, "timeoutMs"

    const-string v2, "greater than 0"

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "listener"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->a:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->b:Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe$Listener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->c:I

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->d:Z

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->connectAudioSource(Lcom/nuance/dragon/toolkit/audio/AudioSource;)V

    return-void
.end method

.method protected bridge synthetic onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-void
.end method

.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->c:I

    iget v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->c:I

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->c:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->a:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe;->b:Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe$Listener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/pipes/TimeoutPipe$Listener;->onTimeout()V

    :cond_0
    return-void
.end method
