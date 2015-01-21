.class public interface abstract Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onGetAudioChunk(I)Lcom/nuance/dragon/toolkit/audio/AudioChunk;
.end method

.method public abstract onHasAudioChunk()Z
.end method

.method public abstract onRecognitionResult(Ljava/lang/String;)V
.end method

.method public abstract onSignalUpdate(I)V
.end method

.method public abstract onSignalWarning(I)V
.end method

.method public abstract onStartAudioPull()V
.end method

.method public abstract onStartOfSpeech()V
.end method

.method public abstract onStopAudioPull()V
.end method
