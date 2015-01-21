.class public Lcom/mediatek/ja3m/A3mLight;
.super Lcom/mediatek/ja3m/A3mSceneNode;
.source "A3mLight.java"

# interfaces
.implements Lcom/mediatek/j3m/Light;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mLight;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mLight(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mLight;->delete()V

    .line 27
    return-void
.end method

.method public getAmbientLevel()F
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getAmbientLevel(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getAttenuationFar()F
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getAttenuationFar(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getAttenuationNear()F
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getAttenuationNear(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getColourA()F
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getColourA(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getColourB()F
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getColourB(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getColourG()F
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getColourG(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getColourR()F
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getColourR(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getIntensity()F
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getIntensity(JLcom/mediatek/ja3m/A3mLight;)F

    move-result v0

    return v0
.end method

.method public getIsAttenuated()Z
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getIsAttenuated(JLcom/mediatek/ja3m/A3mLight;)Z

    move-result v0

    return v0
.end method

.method public getLightType()I
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getLightType(JLcom/mediatek/ja3m/A3mLight;)I

    move-result v0

    return v0
.end method

.method public getSpotInnerAngle(I)F
    .locals 2
    .parameter "units"

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getSpotInnerAngle(JLcom/mediatek/ja3m/A3mLight;I)F

    move-result v0

    return v0
.end method

.method public getSpotOuterAngle(I)F
    .locals 2
    .parameter "units"

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_getSpotOuterAngle(JLcom/mediatek/ja3m/A3mLight;I)F

    move-result v0

    return v0
.end method

.method public setAmbientLevel(F)V
    .locals 2
    .parameter "level"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setAmbientLevel(JLcom/mediatek/ja3m/A3mLight;F)V

    .line 70
    return-void
.end method

.method public setAttenuationFar(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setAttenuationFar(JLcom/mediatek/ja3m/A3mLight;F)V

    .line 102
    return-void
.end method

.method public setAttenuationNear(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setAttenuationNear(JLcom/mediatek/ja3m/A3mLight;F)V

    .line 94
    return-void
.end method

.method public setColour(FFFF)V
    .locals 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setColour(JLcom/mediatek/ja3m/A3mLight;FFFF)V

    .line 50
    return-void
.end method

.method public setIntensity(F)V
    .locals 2
    .parameter "intensity"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setIntensity(JLcom/mediatek/ja3m/A3mLight;F)V

    .line 78
    return-void
.end method

.method public setIsAttenuated(Z)V
    .locals 2
    .parameter "isAttenuated"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setIsAttenuated(JLcom/mediatek/ja3m/A3mLight;Z)V

    .line 86
    return-void
.end method

.method public setLightType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setLightType(JLcom/mediatek/ja3m/A3mLight;I)V

    .line 42
    return-void
.end method

.method public setSpotInnerAngle(IF)V
    .locals 2
    .parameter "units"
    .parameter "value"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setSpotInnerAngle(JLcom/mediatek/ja3m/A3mLight;IF)V

    .line 110
    return-void
.end method

.method public setSpotOuterAngle(IF)V
    .locals 2
    .parameter "units"
    .parameter "value"

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mLight;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mLight_setSpotOuterAngle(JLcom/mediatek/ja3m/A3mLight;IF)V

    .line 118
    return-void
.end method
