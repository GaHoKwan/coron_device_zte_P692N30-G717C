.class public interface abstract Lcom/mediatek/ngin3d/animation/Timeline$Listener;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/animation/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end method

.method public abstract onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end method

.method public abstract onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
.end method

.method public abstract onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
.end method

.method public abstract onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end method

.method public abstract onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end method
