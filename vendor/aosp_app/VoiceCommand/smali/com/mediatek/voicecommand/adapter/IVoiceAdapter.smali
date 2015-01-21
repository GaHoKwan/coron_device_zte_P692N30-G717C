.class public interface abstract Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;
.super Ljava/lang/Object;
.source "IVoiceAdapter.java"


# virtual methods
.method public abstract getNativeIntensity()I
.end method

.method public abstract isNativePrepared()Z
.end method

.method public abstract release()V
.end method

.method public abstract resetVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract setCurHeadsetMode(Z)V
.end method

.method public abstract startVoicePWRecognition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract startVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/String;I)I
.end method

.method public abstract startVoiceUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract stopCurMode(Ljava/lang/String;I)V
.end method

.method public abstract stopVoicePWRecognition(Ljava/lang/String;I)I
.end method

.method public abstract stopVoiceTraining(Ljava/lang/String;I)I
.end method

.method public abstract stopVoiceUI(Ljava/lang/String;I)I
.end method
