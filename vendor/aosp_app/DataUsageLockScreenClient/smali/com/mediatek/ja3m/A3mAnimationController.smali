.class public Lcom/mediatek/ja3m/A3mAnimationController;
.super Ljava/lang/Object;
.source "A3mAnimationController.java"

# interfaces
.implements Lcom/mediatek/j3m/AnimationController;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mAnimationController;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mAnimationController(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mAnimationController;->delete()V

    .line 28
    return-void
.end method

.method public getAnimation()Lcom/mediatek/j3m/Animation;
    .locals 4

    .prologue
    .line 185
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getAnimation(JLcom/mediatek/ja3m/A3mAnimationController;)J

    move-result-wide v0

    .line 186
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mAnimation;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mAnimation;-><init>(JZ)V

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getEnabled(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public getEnd()F
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getEnd(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getLength(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getLoopEnd()F
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getLoopEnd(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getLoopLength()F
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getLoopLength(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getLoopStart()F
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getLoopStart(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getLooping()Z
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getLooping(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public getPaused()Z
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getPaused(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getProgress(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getSpeed(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public getStart()F
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_getStart(JLcom/mediatek/ja3m/A3mAnimationController;)F

    move-result v0

    return v0
.end method

.method public hasLoop()Z
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_hasLoop(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_isFinished(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public isInsideLoop()Z
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_isInsideLoop(JLcom/mediatek/ja3m/A3mAnimationController;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_pause__SWIG_1(JLcom/mediatek/ja3m/A3mAnimationController;)V

    .line 62
    return-void
.end method

.method public pause(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_pause__SWIG_0(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 58
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_play__SWIG_1(JLcom/mediatek/ja3m/A3mAnimationController;)V

    .line 54
    return-void
.end method

.method public play(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_play__SWIG_0(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 50
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_rewind__SWIG_1(JLcom/mediatek/ja3m/A3mAnimationController;)V

    .line 82
    return-void
.end method

.method public rewind(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_rewind__SWIG_0(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 78
    return-void
.end method

.method public seek(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_seek(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 74
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setEnabled(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 102
    return-void
.end method

.method public setEnd(F)V
    .locals 2
    .parameter "end"

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setEnd(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 142
    return-void
.end method

.method public setLoopEnd(F)V
    .locals 2
    .parameter "end"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setLoopEnd(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 166
    return-void
.end method

.method public setLoopRange(FF)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setLoopRange(JLcom/mediatek/ja3m/A3mAnimationController;FF)V

    .line 174
    return-void
.end method

.method public setLoopStart(F)V
    .locals 2
    .parameter "start"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setLoopStart(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 158
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .parameter "looping"

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setLooping(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 118
    return-void
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "paused"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setPaused(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 110
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setProgress(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 94
    return-void
.end method

.method public setRange(FF)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setRange(JLcom/mediatek/ja3m/A3mAnimationController;FF)V

    .line 150
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setSpeed(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 126
    return-void
.end method

.method public setStart(F)V
    .locals 2
    .parameter "start"

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_setStart(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 134
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_stop__SWIG_1(JLcom/mediatek/ja3m/A3mAnimationController;)V

    .line 70
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_stop__SWIG_0(JLcom/mediatek/ja3m/A3mAnimationController;Z)V

    .line 66
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_update__SWIG_1(JLcom/mediatek/ja3m/A3mAnimationController;)V

    .line 46
    return-void
.end method

.method public update(F)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimationController;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimationController_update__SWIG_0(JLcom/mediatek/ja3m/A3mAnimationController;F)V

    .line 42
    return-void
.end method
