.class public Lcom/mediatek/ja3m/A3mModel;
.super Ljava/lang/Object;
.source "A3mModel.java"

# interfaces
.implements Lcom/mediatek/j3m/Model;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mModel;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mModel;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mModel(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mModel;->delete()V

    .line 28
    return-void
.end method

.method public getAnimation()Lcom/mediatek/j3m/AnimationController;
    .locals 4

    .prologue
    .line 73
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mModel_getAnimation(JLcom/mediatek/ja3m/A3mModel;)J

    move-result-wide v0

    .line 74
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mAnimationController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mAnimationController;-><init>(JZ)V

    goto :goto_0
.end method

.method public getSceneNode()Lcom/mediatek/j3m/SceneNode;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 41
    iget-wide v3, p0, Lcom/mediatek/ja3m/A3mModel;->swigCPtr:J

    invoke-static {v3, v4, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mModel_getSceneNode(JLcom/mediatek/ja3m/A3mModel;)J

    move-result-wide v1

    .line 43
    .local v1, ptr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 51
    .local v0, node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-virtual {v0}, Lcom/mediatek/ja3m/A3mSceneNode;->getNodeType()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 65
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 53
    :sswitch_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    .line 54
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 57
    :sswitch_1
    new-instance v0, Lcom/mediatek/ja3m/A3mLight;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    .line 58
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 61
    :sswitch_2
    new-instance v0, Lcom/mediatek/ja3m/A3mCamera;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    .line 62
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method
