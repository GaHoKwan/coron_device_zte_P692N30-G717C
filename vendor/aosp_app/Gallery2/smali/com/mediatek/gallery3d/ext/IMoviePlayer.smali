.class public interface abstract Lcom/mediatek/gallery3d/ext/IMoviePlayer;
.super Ljava/lang/Object;
.source "IMoviePlayer.java"

# interfaces
.implements Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;
.implements Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;


# virtual methods
.method public abstract addBookmark()V
.end method

.method public abstract canStop()Z
.end method

.method public abstract getLoop()Z
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract showDetail()V
.end method

.method public abstract startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
.end method

.method public abstract stopVideo()V
.end method
