.class public Lcom/mediatek/ja3m/A3mSolid;
.super Lcom/mediatek/ja3m/A3mSceneNode;
.source "A3mSolid.java"

# interfaces
.implements Lcom/mediatek/j3m/Solid;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mSolid_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mSolid;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mSolid(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mSolid;->delete()V

    .line 27
    return-void
.end method

.method public getAppearance()Lcom/mediatek/j3m/Appearance;
    .locals 4

    .prologue
    .line 41
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSolid_getAppearance(JLcom/mediatek/ja3m/A3mSolid;)J

    move-result-wide v0

    .line 42
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mAppearance;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mAppearance;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMesh()Lcom/mediatek/j3m/Mesh;
    .locals 4

    .prologue
    .line 46
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mSolid;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSolid_getMesh(JLcom/mediatek/ja3m/A3mSolid;)J

    move-result-wide v0

    .line 47
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mMesh;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mMesh;-><init>(JZ)V

    goto :goto_0
.end method
