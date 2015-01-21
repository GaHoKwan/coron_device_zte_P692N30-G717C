.class public interface abstract Lcom/android/gallery3d/app/PhotoPage$Model;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract cancelCurrentMavDecodeTask()V
.end method

.method public abstract enterConsumeMode()V
.end method

.method public abstract enteredConsumeMode()Z
.end method

.method public abstract getTotalFrameCount()I
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isMavLoadingFinished()Z
.end method

.method public abstract isMavLoadingSuccess()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
.end method

.method public abstract setImageBitmap(II)V
.end method

.method public abstract setSourceAndItem(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V
.end method

.method public abstract updateMavStereoMode(Z)V
.end method
