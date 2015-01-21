.class public Lcom/mediatek/ja3m/A3mRenderBlock;
.super Lcom/mediatek/ja3m/A3mRenderBlockBase;
.source "A3mRenderBlock.java"

# interfaces
.implements Lcom/mediatek/j3m/RenderBlock;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mRenderBlockBase;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mRenderBlock;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mRenderBlock(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/mediatek/ja3m/A3mRenderBlockBase;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mRenderBlock;->delete()V

    .line 27
    return-void
.end method

.method public setBackgroundColour(FFFF)V
    .locals 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setBackgroundColour(JLcom/mediatek/ja3m/A3mRenderBlock;FFFF)V

    .line 50
    return-void
.end method

.method public setCamera(Lcom/mediatek/j3m/Camera;)V
    .locals 6
    .parameter "camera"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mCamera;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mCamera;->getCPtr(Lcom/mediatek/ja3m/A3mCamera;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mCamera;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setCamera(JLcom/mediatek/ja3m/A3mRenderBlock;JLcom/mediatek/ja3m/A3mCamera;)V

    .line 42
    return-void
.end method

.method public setColourClear(Z)V
    .locals 2
    .parameter "clear"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setColourClear(JLcom/mediatek/ja3m/A3mRenderBlock;Z)V

    .line 58
    return-void
.end method

.method public setDepthClear(Z)V
    .locals 2
    .parameter "clear"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setDepthClear(JLcom/mediatek/ja3m/A3mRenderBlock;Z)V

    .line 62
    return-void
.end method

.method public setRenderFlags(Lcom/mediatek/j3m/FlagMask;Lcom/mediatek/j3m/FlagMask;)V
    .locals 9
    .parameter "renderFlags"
    .parameter "recursiveFlags"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v6

    move-object v8, p2

    check-cast v8, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setRenderFlags(JLcom/mediatek/ja3m/A3mRenderBlock;JLcom/mediatek/ja3m/A3mFlagMask;JLcom/mediatek/ja3m/A3mFlagMask;)V

    .line 54
    return-void
.end method

.method public setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V
    .locals 6
    .parameter "target"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mRenderTarget;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mRenderTarget;->getCPtr(Lcom/mediatek/ja3m/A3mRenderTarget;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mRenderTarget;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setRenderTarget(JLcom/mediatek/ja3m/A3mRenderBlock;JLcom/mediatek/ja3m/A3mRenderTarget;)V

    .line 66
    return-void
.end method

.method public setViewport(FFFF)V
    .locals 7
    .parameter "left"
    .parameter "bottom"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlock;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlock_setViewport(JLcom/mediatek/ja3m/A3mRenderBlock;FFFF)V

    .line 46
    return-void
.end method
