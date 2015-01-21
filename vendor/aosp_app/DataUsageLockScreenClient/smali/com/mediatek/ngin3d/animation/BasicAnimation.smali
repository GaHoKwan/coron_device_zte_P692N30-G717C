.class public abstract Lcom/mediatek/ngin3d/animation/BasicAnimation;
.super Lcom/mediatek/ngin3d/animation/Animation;
.source "BasicAnimation.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "BasicAnimation"


# instance fields
.field protected mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

.field protected mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x7d0

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->LINEAR:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>(ILcom/mediatek/ngin3d/animation/Mode;)V

    .line 59
    return-void
.end method

.method public constructor <init>(ILcom/mediatek/ngin3d/animation/Mode;)V
    .locals 1
    .parameter "duration"
    .parameter "mode"

    .prologue
    .line 62
    new-instance v0, Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;-><init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V
    .locals 0
    .parameter "timeline"
    .parameter "mode"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/Animation;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setAlphaMode(Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 68
    return-void
.end method

.method private setAlphaMode(Lcom/mediatek/ngin3d/animation/Mode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 177
    new-instance v0, Lcom/mediatek/ngin3d/animation/Alpha;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-direct {v0, v1, p1}, Lcom/mediatek/ngin3d/animation/Alpha;-><init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    .line 178
    return-void
.end method

.method private setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    .line 72
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    new-instance v1, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public addMarkerAtTime(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "time"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->addMarkerAtTime(Ljava/lang/String;I)V

    .line 191
    return-void
.end method

.method public bridge synthetic clone()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/Animation;->clone()Lcom/mediatek/ngin3d/animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 361
    .local v0, animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->clone()Lcom/mediatek/ngin3d/animation/Timeline;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 362
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Alpha;->getMode()Lcom/mediatek/ngin3d/animation/Mode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setAlphaMode(Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 363
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->clone()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method

.method public complete()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->complete()V

    .line 302
    return-object p0
.end method

.method public getAutoReverse()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getAutoReverse()Z

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getDirection()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getDuration()I

    move-result v0

    return v0
.end method

.method public getLoop()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getLoop()Z

    move-result v0

    return v0
.end method

.method public getMode()Lcom/mediatek/ngin3d/animation/Mode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Alpha;->getMode()Lcom/mediatek/ngin3d/animation/Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalDuration()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getProgress()F

    move-result v0

    return v0
.end method

.method public getTimeScale()F
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->getTimeScale()F

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v0

    return v0
.end method

.method public pause()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->pause()V

    .line 275
    return-object p0
.end method

.method public reset()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->rewind()V

    .line 296
    return-object p0
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->reverse()V

    .line 333
    return-void
.end method

.method protected final runCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 181
    invoke-static {}, Lcom/mediatek/ngin3d/Stage;->getUiHandler()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v0

    .line 182
    .local v0, uiHandler:Lcom/mediatek/ngin3d/UiHandler;
    if-nez v0, :cond_0

    .line 183
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/ngin3d/UiHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAutoReverse(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "autoReverse"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setAutoReverse(Z)V

    .line 204
    return-object p0
.end method

.method public setDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setDirection(I)V

    .line 323
    return-void
.end method

.method public setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "duration"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setDuration(I)V

    .line 219
    return-object p0
.end method

.method public setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "loop"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setLoop(Z)V

    .line 240
    return-object p0
.end method

.method public setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "mode"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mAlpha:Lcom/mediatek/ngin3d/animation/Alpha;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Alpha;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 199
    return-object p0
.end method

.method public setProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setProgress(F)V

    .line 232
    return-void
.end method

.method public setTag(I)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/animation/Animation;->setTag(I)V

    .line 368
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setTag(I)V

    .line 369
    return-void
.end method

.method public setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1
    .parameter "visible"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTarget()Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    .line 338
    .local v0, target:Lcom/mediatek/ngin3d/Actor;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 341
    :cond_0
    return-object p0
.end method

.method public setTimeScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;->setTimeScale(F)V

    .line 313
    return-void
.end method

.method public start()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Animation;->getTarget()Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    .line 256
    .local v0, target:Lcom/mediatek/ngin3d/Actor;
    if-nez v0, :cond_0

    iget v1, p0, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->start()V

    .line 260
    :cond_1
    return-object p0
.end method

.method public startDragging()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/Animation;->disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDirection(I)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setProgress(F)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTargetVisible(Z)Lcom/mediatek/ngin3d/animation/Animation;

    .line 269
    return-object p0
.end method

.method public stop()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->stop()V

    .line 284
    return-object p0
.end method

.method public stopDragging()Lcom/mediatek/ngin3d/animation/Animation;
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 290
    return-object p0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/Timeline;->waitForCompletion()V

    .line 351
    return-void
.end method
