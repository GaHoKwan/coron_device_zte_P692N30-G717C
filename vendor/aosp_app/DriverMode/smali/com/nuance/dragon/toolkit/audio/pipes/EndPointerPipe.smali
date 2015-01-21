.class public Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;
.super Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;-><init>()V

    const-string v0, "listener"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->a:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->b:Z

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->c:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-void
.end method

.method protected onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->b:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->a:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;->onStartOfSpeech()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/nuance/dragon/toolkit/audio/pipes/BufferingPipe;->onChunkBuffered(Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioSpeechStatus:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->c:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/pipes/EndPointerPipe;->a:Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;->onEndOfSpeech()V

    goto :goto_0
.end method
