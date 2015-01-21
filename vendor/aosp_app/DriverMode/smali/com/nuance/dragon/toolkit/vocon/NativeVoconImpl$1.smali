.class final Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$InputDeviceListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAbnormalAudio(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onSignalWarning(I)V

    :cond_0
    return-void
.end method

.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onCanceled()V

    :cond_0
    return-void
.end method

.method public final onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public final onGetAudio([S)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    array-length v2, p1

    invoke-interface {v0, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onGetAudioChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v0, v0

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final onHasAudio()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onHasAudioChunk()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onProcessedAudio(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onSignalUpdate(I)V

    :cond_0
    return-void
.end method

.method public final onRecognitionResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onRecognitionResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStartAudio()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onStartAudioPull()V

    :cond_0
    return-void
.end method

.method public final onStartOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onStartOfSpeech()V

    :cond_0
    return-void
.end method

.method public final onStopAudio()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;->a:Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;->onStopAudioPull()V

    :cond_0
    return-void
.end method
