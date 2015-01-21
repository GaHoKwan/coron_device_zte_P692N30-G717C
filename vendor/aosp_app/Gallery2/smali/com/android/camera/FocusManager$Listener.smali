.class public interface abstract Lcom/android/camera/FocusManager$Listener;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract capture()Z
.end method

.method public abstract doSmileShutter()Z
.end method

.method public abstract playSound(I)V
.end method

.method public abstract readyToCapture()Z
.end method

.method public abstract setFocusParameters()V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startObjectTracking(II)V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopObjectTracking()V
.end method
