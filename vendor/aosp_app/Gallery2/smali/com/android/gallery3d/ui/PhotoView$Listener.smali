.class public interface abstract Lcom/android/gallery3d/ui/PhotoView$Listener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final FULLSCREEN_TYPE_CENETER:I = 0x2

.field public static final FULLSCREEN_TYPE_MINIMAL_SCALE:I = 0x1


# virtual methods
.method public abstract canSlideToPrePicture()Z
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract onActionBarAllowed(Z)V
.end method

.method public abstract onActionBarWanted()V
.end method

.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
.end method

.method public abstract onFilmModeChanged(Z)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onFullScreenChanged(ZI)V
.end method

.method public abstract onLongPress(II)V
.end method

.method public abstract onMavSeekBarAllowed(Z)V
.end method

.method public abstract onPanoramaFrameUpdate(I)V
.end method

.method public abstract onPictureCenter(Z)V
.end method

.method public abstract onSingleTapConfirmed(II)V
.end method

.method public abstract onSingleTapUp(II)V
.end method

.method public abstract onUndoBarVisibilityChanged(Z)V
.end method

.method public abstract onUndoDeleteImage()V
.end method

.method public abstract unlockOrientation()V
.end method
