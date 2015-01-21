.class public interface abstract Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
.super Ljava/lang/Object;
.source "IControllerRewindAndForward.java"

# interfaces
.implements Lcom/android/gallery3d/app/ControllerOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;
    }
.end annotation


# virtual methods
.method public abstract getPlayPauseEanbled()Z
.end method

.method public abstract getTimeBarEanbled()Z
.end method

.method public abstract setIListener(Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;)V
.end method

.method public abstract showControllerButtonsView(ZZZ)V
.end method
