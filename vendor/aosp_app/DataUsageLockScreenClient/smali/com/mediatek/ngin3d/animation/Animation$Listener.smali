.class public Lcom/mediatek/ngin3d/animation/Animation$Listener;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 286
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Animation;ILjava/lang/String;)V
    .locals 0
    .parameter "animation"
    .parameter "direction"
    .parameter "marker"

    .prologue
    .line 255
    return-void
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Animation;I)V
    .locals 0
    .parameter "animation"
    .parameter "elapsedMsec"

    .prologue
    .line 277
    return-void
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 264
    return-void
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 244
    return-void
.end method
