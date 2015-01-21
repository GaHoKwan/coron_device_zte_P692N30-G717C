.class public Lcom/mediatek/ja3m/A3mRay;
.super Ljava/lang/Object;
.source "A3mRay.java"

# interfaces
.implements Lcom/mediatek/j3m/Ray;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mRay;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mRay;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mRay(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mRay;->delete()V

    .line 28
    return-void
.end method

.method public getDirectionX()F
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getDirectionX(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public getDirectionY()F
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getDirectionY(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public getDirectionZ()F
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getDirectionZ(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public getPositionX()F
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getPositionX(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public getPositionY()F
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getPositionY(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public getPositionZ()F
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_getPositionZ(JLcom/mediatek/ja3m/A3mRay;)F

    move-result v0

    return v0
.end method

.method public setDirection(FFF)V
    .locals 6
    .parameter "directionX"
    .parameter "directionY"
    .parameter "directionZ"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_setDirection(JLcom/mediatek/ja3m/A3mRay;FFF)V

    .line 58
    return-void
.end method

.method public setPosition(FFF)V
    .locals 6
    .parameter "positionX"
    .parameter "positionY"
    .parameter "positionZ"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_setPosition(JLcom/mediatek/ja3m/A3mRay;FFF)V

    .line 42
    return-void
.end method

.method public setToCameraRay(Lcom/mediatek/j3m/Camera;FFFF)V
    .locals 10
    .parameter "camera"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "pickX"
    .parameter "pickY"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRay;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mCamera;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mCamera;->getCPtr(Lcom/mediatek/ja3m/A3mCamera;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mCamera;

    move-object v2, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/mediatek/ja3m/A3mJni;->A3mRay_setToCameraRay(JLcom/mediatek/ja3m/A3mRay;JLcom/mediatek/ja3m/A3mCamera;FFFF)V

    .line 74
    return-void
.end method
