.class public Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;->a:Z

    return-void
.end method


# virtual methods
.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LATCHK] Buffering chunk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LATCHK] Ignoring chunk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;->clearBuffers()V

    goto :goto_0
.end method

.method protected onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onSinkConnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;->a:Z

    return-void
.end method

.method protected onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onSinkDisconnected(Lcom/nuance/dragon/toolkit/audio/AudioSink;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/AutoClearBufferingPipe;->a:Z

    return-void
.end method
