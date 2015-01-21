.class public Lcom/mediatek/ngin3d/animation/TimelineGroup;
.super Lcom/mediatek/ngin3d/animation/Timeline;
.source "TimelineGroup.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Owner;


# instance fields
.field private final mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/Timeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/Timeline;-><init>(I)V

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    return-void
.end method

.method private stopAndComplete()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->stop()V

    .line 64
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mCurrentTickTime:J

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/TimelineGroup;->onComplete(J)Z

    .line 65
    return-void
.end method


# virtual methods
.method public attach(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 0
    .parameter "timeline"

    .prologue
    .line 135
    invoke-virtual {p1, p0}, Lcom/mediatek/ngin3d/animation/Timeline;->setOwner(Lcom/mediatek/ngin3d/animation/Timeline$Owner;)V

    .line 136
    return-void
.end method

.method public detach(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mediatek/ngin3d/animation/Timeline;->setOwner(Lcom/mediatek/ngin3d/animation/Timeline$Owner;)V

    .line 140
    return-void
.end method

.method public doTick(J)V
    .locals 6
    .parameter "tickTime"

    .prologue
    .line 69
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 70
    .local v3, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v3, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->doTick(J)V

    goto :goto_0

    .line 73
    .end local v3           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    if-eqz v4, :cond_3

    .line 74
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mStartedTickTime:J

    .line 75
    iput-wide p1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    .line 76
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mWaitingFirstTick:Z

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLoop:Z

    if-nez v4, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/mediatek/ngin3d/animation/TimelineGroup;->stopAndComplete()V

    .line 89
    :cond_2
    return-void

    .line 78
    :cond_3
    iget-wide v4, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    sub-long v0, p1, v4

    .line 79
    .local v0, delta:J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/animation/TimelineGroup;->updateDeltaTime(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->doFrame(J)Z

    goto :goto_1
.end method

.method public freeze()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->freeze()V

    .line 149
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 150
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->freeze()V

    goto :goto_0

    .line 152
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    return-void
.end method

.method protected isComplete()Z
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onComplete(J)Z
    .locals 1
    .parameter "tickTime"

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDirection:I

    if-nez v0, :cond_0

    .line 113
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDuration:I

    iput v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mElapsedTime:I

    .line 117
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/animation/Timeline;->onComplete(J)Z

    move-result v0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mElapsedTime:I

    goto :goto_0
.end method

.method public register(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeline cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public unfreeze()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->unfreeze()V

    .line 157
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Timeline;

    .line 158
    .local v1, timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/Timeline;->unfreeze()V

    goto :goto_0

    .line 160
    .end local v1           #timeline:Lcom/mediatek/ngin3d/animation/Timeline;
    :cond_0
    return-void
.end method

.method public unregister(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/TimelineGroup;->mTimelines:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method protected updateDeltaTime(J)Z
    .locals 3
    .parameter "delta"

    .prologue
    const-wide/16 v1, 0x0

    .line 93
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 95
    :cond_0
    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 96
    iget-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mLastFrameTickTime:J

    .line 101
    invoke-super {p0}, Lcom/mediatek/ngin3d/animation/Timeline;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    long-to-float v1, p1

    iget v2, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    .line 107
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    long-to-float v0, p1

    iget v1, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mTimeScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/Timeline;->mDeltaTime:I

    goto :goto_1
.end method
