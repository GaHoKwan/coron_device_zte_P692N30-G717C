.class public Lcom/mediatek/ja3m/A3mCamera;
.super Lcom/mediatek/ja3m/A3mSceneNode;
.source "A3mCamera.java"

# interfaces
.implements Lcom/mediatek/j3m/Camera;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mCamera;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mCamera(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/mediatek/ja3m/A3mSceneNode;->delete()V
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mCamera;->delete()V

    .line 27
    return-void
.end method

.method public getFar()F
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_getFar(JLcom/mediatek/ja3m/A3mCamera;)F

    move-result v0

    return v0
.end method

.method public getFov(I)F
    .locals 2
    .parameter "units"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_getFov(JLcom/mediatek/ja3m/A3mCamera;I)F

    move-result v0

    return v0
.end method

.method public getNear()F
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_getNear(JLcom/mediatek/ja3m/A3mCamera;)F

    move-result v0

    return v0
.end method

.method public getProjectionType()I
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_getProjectionType(JLcom/mediatek/ja3m/A3mCamera;)I

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_getWidth(JLcom/mediatek/ja3m/A3mCamera;)F

    move-result v0

    return v0
.end method

.method public isStereo()Z
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_isStereo(JLcom/mediatek/ja3m/A3mCamera;)Z

    move-result v0

    return v0
.end method

.method public setFar(F)V
    .locals 2
    .parameter "far_"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setFar(JLcom/mediatek/ja3m/A3mCamera;F)V

    .line 74
    return-void
.end method

.method public setFov(IF)V
    .locals 2
    .parameter "units"
    .parameter "fov"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setFov(JLcom/mediatek/ja3m/A3mCamera;IF)V

    .line 50
    return-void
.end method

.method public setNear(F)V
    .locals 2
    .parameter "near_"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setNear(JLcom/mediatek/ja3m/A3mCamera;F)V

    .line 66
    return-void
.end method

.method public setProjectionType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setProjectionType(JLcom/mediatek/ja3m/A3mCamera;I)V

    .line 42
    return-void
.end method

.method public setStereo(FF)V
    .locals 2
    .parameter "focalDistance"
    .parameter "eyeSeparation"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setStereo(JLcom/mediatek/ja3m/A3mCamera;FF)V

    .line 82
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mCamera;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mCamera_setWidth(JLcom/mediatek/ja3m/A3mCamera;F)V

    .line 58
    return-void
.end method
