.class Lcom/mediatek/ngin3d/animation/Alpha$1;
.super Ljava/lang/Object;
.source "Alpha.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/Alpha;->setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/Alpha;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/Alpha;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 3
    .parameter "timeline"

    .prologue
    .line 379
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Alpha$Listener;

    .line 380
    .local v1, l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/animation/Timeline;->getDirection()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/animation/Alpha$Listener;->onCompleted(I)V

    goto :goto_0

    .line 382
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    :cond_0
    return-void
.end method

.method public onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 0
    .parameter "timeline"

    .prologue
    .line 386
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
    .locals 0
    .parameter "timeline"
    .parameter "elapsedMsecs"
    .parameter "marker"
    .parameter "direction"

    .prologue
    .line 370
    return-void
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
    .locals 4
    .parameter "timeline"
    .parameter "elapsedMsecs"

    .prologue
    .line 362
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/Alpha;->getAlpha()F

    move-result v0

    .line 363
    .local v0, alpha:F
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v3, v3, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/Alpha$Listener;

    .line 364
    .local v2, l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    invoke-interface {v2, v0}, Lcom/mediatek/ngin3d/animation/Alpha$Listener;->onAlphaUpdate(F)V

    goto :goto_0

    .line 366
    .end local v2           #l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    :cond_0
    return-void
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 3
    .parameter "timeline"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Alpha$Listener;

    .line 374
    .local v1, l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    invoke-interface {v1}, Lcom/mediatek/ngin3d/animation/Alpha$Listener;->onPaused()V

    goto :goto_0

    .line 376
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    :cond_0
    return-void
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 3
    .parameter "timeline"

    .prologue
    .line 356
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/Alpha$1;->this$0:Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Alpha$Listener;

    .line 357
    .local v1, l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    invoke-interface {v1}, Lcom/mediatek/ngin3d/animation/Alpha$Listener;->onStarted()V

    goto :goto_0

    .line 359
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    :cond_0
    return-void
.end method
