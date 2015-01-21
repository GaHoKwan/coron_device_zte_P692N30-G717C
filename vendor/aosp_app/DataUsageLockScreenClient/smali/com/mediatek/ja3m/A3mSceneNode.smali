.class public Lcom/mediatek/ja3m/A3mSceneNode;
.super Ljava/lang/Object;
.source "A3mSceneNode.java"

# interfaces
.implements Lcom/mediatek/j3m/SceneNode;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/mediatek/ja3m/A3mJni;->new_A3mSceneNode__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 42
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mSceneNode;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mSceneNode(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mSceneNode;->delete()V

    .line 28
    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    .line 101
    iget-wide v3, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v3, v4, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_find(JLcom/mediatek/ja3m/A3mSceneNode;Ljava/lang/String;)J

    move-result-wide v1

    .line 103
    .local v1, ptr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 111
    .local v0, node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-virtual {v0}, Lcom/mediatek/ja3m/A3mSceneNode;->getNodeType()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 125
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 113
    :sswitch_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    .line 114
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 117
    :sswitch_1
    new-instance v0, Lcom/mediatek/ja3m/A3mLight;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    .line 118
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 121
    :sswitch_2
    new-instance v0, Lcom/mediatek/ja3m/A3mCamera;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    .line 122
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public getChild(I)Lcom/mediatek/j3m/SceneNode;
    .locals 6
    .parameter "i"

    .prologue
    const/4 v5, 0x1

    .line 69
    iget-wide v3, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v3, v4, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getChild(JLcom/mediatek/ja3m/A3mSceneNode;I)J

    move-result-wide v1

    .line 71
    .local v1, ptr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 79
    .local v0, node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-virtual {v0}, Lcom/mediatek/ja3m/A3mSceneNode;->getNodeType()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 93
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 81
    :sswitch_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    .line 82
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 85
    :sswitch_1
    new-instance v0, Lcom/mediatek/ja3m/A3mLight;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    .line 86
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 89
    :sswitch_2
    new-instance v0, Lcom/mediatek/ja3m/A3mCamera;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    .line 90
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getChildCount(JLcom/mediatek/ja3m/A3mSceneNode;)I

    move-result v0

    return v0
.end method

.method public getDerivedFlags(Lcom/mediatek/j3m/FlagMask;)Z
    .locals 6
    .parameter "mask"

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getDerivedFlags(JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mFlagMask;)Z

    move-result v0

    return v0
.end method

.method public getFlags(Lcom/mediatek/j3m/FlagMask;)Z
    .locals 6
    .parameter "mask"

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getFlags(JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mFlagMask;)Z

    move-result v0

    return v0
.end method

.method public getLocalMirrored()Z
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getLocalMirrored(JLcom/mediatek/ja3m/A3mSceneNode;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getName(JLcom/mediatek/ja3m/A3mSceneNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()C
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getNodeType(JLcom/mediatek/ja3m/A3mSceneNode;)C

    move-result v0

    return v0
.end method

.method public getParent()Lcom/mediatek/j3m/SceneNode;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 149
    iget-wide v3, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v3, v4, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getParent(JLcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v1

    .line 151
    .local v1, ptr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 159
    .local v0, node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-virtual {v0}, Lcom/mediatek/ja3m/A3mSceneNode;->getNodeType()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 173
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 161
    :sswitch_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    .line 162
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 165
    :sswitch_1
    new-instance v0, Lcom/mediatek/ja3m/A3mLight;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    .line 166
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 169
    :sswitch_2
    new-instance v0, Lcom/mediatek/ja3m/A3mCamera;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    .line 170
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPositionX()F
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getPositionX(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getPositionY()F
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getPositionY(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getPositionZ()F
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getPositionZ(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getRotationA()F
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getRotationA(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getRotationB()F
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getRotationB(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getRotationC()F
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getRotationC(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getRotationD()F
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getRotationD(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getScaleX(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getScaleY(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getScaleZ()F
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getScaleZ(JLcom/mediatek/ja3m/A3mSceneNode;)F

    move-result v0

    return v0
.end method

.method public getWorldMirrored()Z
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_getWorldMirrored(JLcom/mediatek/ja3m/A3mSceneNode;)Z

    move-result v0

    return v0
.end method

.method public point(FFF)V
    .locals 6
    .parameter "worldForwardX"
    .parameter "worldForwardY"
    .parameter "worldForwardZ"

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_point__SWIG_0(JLcom/mediatek/ja3m/A3mSceneNode;FFF)V

    .line 134
    return-void
.end method

.method public point(FFFFFF)V
    .locals 9
    .parameter "worldForwardX"
    .parameter "worldForwardY"
    .parameter "worldForwardZ"
    .parameter "worldUpX"
    .parameter "worldUpY"
    .parameter "worldUpZ"

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_point__SWIG_1(JLcom/mediatek/ja3m/A3mSceneNode;FFFFFF)V

    .line 138
    return-void
.end method

.method public point(FFFFFFFFF)V
    .locals 12
    .parameter "worldForwardX"
    .parameter "worldForwardY"
    .parameter "worldForwardZ"
    .parameter "worldUpX"
    .parameter "worldUpY"
    .parameter "worldUpZ"
    .parameter "localForwardX"
    .parameter "localForwardY"
    .parameter "localForwardZ"

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_point__SWIG_2(JLcom/mediatek/ja3m/A3mSceneNode;FFFFFFFFF)V

    .line 142
    return-void
.end method

.method public point(FFFFFFFFFFFF)V
    .locals 15
    .parameter "worldForwardX"
    .parameter "worldForwardY"
    .parameter "worldForwardZ"
    .parameter "worldUpX"
    .parameter "worldUpY"
    .parameter "worldUpZ"
    .parameter "localForwardX"
    .parameter "localForwardY"
    .parameter "localForwardZ"
    .parameter "localUpX"
    .parameter "localUpY"
    .parameter "localUpZ"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v0 .. v14}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_point__SWIG_3(JLcom/mediatek/ja3m/A3mSceneNode;FFFFFFFFFFFF)V

    .line 146
    return-void
.end method

.method public setFlags(Lcom/mediatek/j3m/FlagMask;Z)V
    .locals 7
    .parameter "mask"
    .parameter "state"

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mFlagMask;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mFlagMask;->getCPtr(Lcom/mediatek/ja3m/A3mFlagMask;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mFlagMask;

    move-object v2, p0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setFlags(JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mFlagMask;Z)V

    .line 242
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setName(JLcom/mediatek/ja3m/A3mSceneNode;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setParent(Lcom/mediatek/j3m/SceneNode;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mSceneNode;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mSceneNode;->getCPtr(Lcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mSceneNode;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setParent__SWIG_1(JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mSceneNode;)V

    .line 62
    return-void
.end method

.method public setParent(Lcom/mediatek/j3m/SceneNode;Z)V
    .locals 7
    .parameter "node"
    .parameter "preserveWorldTransform"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mSceneNode;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mSceneNode;->getCPtr(Lcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mSceneNode;

    move-object v2, p0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setParent__SWIG_0(JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mSceneNode;Z)V

    .line 58
    return-void
.end method

.method public setPosition(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setPosition(JLcom/mediatek/ja3m/A3mSceneNode;FFF)V

    .line 182
    return-void
.end method

.method public setRotation(FFFF)V
    .locals 7
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setRotation(JLcom/mediatek/ja3m/A3mSceneNode;FFFF)V

    .line 198
    return-void
.end method

.method public setScale(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mSceneNode;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mSceneNode_setScale(JLcom/mediatek/ja3m/A3mSceneNode;FFF)V

    .line 218
    return-void
.end method
