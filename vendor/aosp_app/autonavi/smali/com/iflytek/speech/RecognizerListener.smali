.class public interface abstract Lcom/iflytek/speech/RecognizerListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBeginOfSpeech()V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEnd(Lcom/iflytek/speech/SpeechError;)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onResults(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/speech/RecognizerResult;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onVolumeChanged(I)V
.end method
