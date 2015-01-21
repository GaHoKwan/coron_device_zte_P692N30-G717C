.class public Lcom/mediatek/ngin3d/j3m/Object3dPresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "Object3dPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/IObject3d;


# static fields
.field private static final TAG:Ljava/lang/String; = "Object3dPresentation"


# instance fields
.field private mAnimation:Lcom/mediatek/j3m/AnimationController;

.field private mApplyProgress:Z

.field private mProgress:F

.field private mStarting:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 72
    return-void
.end method

.method private getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/SceneNode;->find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableNewAnimation()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->removeAnimationController(Lcom/mediatek/j3m/AnimationController;)V

    .line 231
    :cond_0
    return-void
.end method

.method public enableApplyProgress()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mApplyProgress:Z

    .line 235
    return-void
.end method

.method public getAnimationLength()F
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0}, Lcom/mediatek/j3m/AnimationController;->getLength()F

    move-result v0

    goto :goto_0
.end method

.method public getAnimationLoopEnabled()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0}, Lcom/mediatek/j3m/AnimationController;->getLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public getAnimationProgress()F
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 195
    :goto_0
    return v1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v1}, Lcom/mediatek/j3m/AnimationController;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->getStart()F

    move-result v2

    sub-float v0, v1, v2

    .line 195
    .local v0, offset:F
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v1}, Lcom/mediatek/j3m/AnimationController;->getLength()F

    move-result v1

    div-float v1, v0, v1

    goto :goto_0
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0}, Lcom/mediatek/j3m/AnimationController;->getEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0}, Lcom/mediatek/j3m/AnimationController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUninitialize()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->disableNewAnimation()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mApplyProgress:Z

    .line 81
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 82
    return-void
.end method

.method public setAnimationLoopEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/AnimationController;->setLooping(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public setAnimationPlaying(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/AnimationController;->setEnabled(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->getEnabled()Z

    move-result v0

    .line 183
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    iget-boolean v3, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mApplyProgress:Z

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/AnimationController;->setEnabled(Z)V

    .line 184
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->getLength()F

    move-result v2

    mul-float v1, p1, v2

    .line 185
    .local v1, offset:F
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v3}, Lcom/mediatek/j3m/AnimationController;->getStart()F

    move-result v3

    add-float/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/AnimationController;->seek(F)V

    .line 186
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2, v0}, Lcom/mediatek/j3m/AnimationController;->setEnabled(Z)V

    .line 188
    .end local v0           #enabled:Z
    .end local v1           #offset:F
    :cond_0
    return-void
.end method

.method public setAnimationSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/AnimationController;->setSpeed(F)V

    .line 217
    :cond_0
    return-void
.end method

.method public setObjectSource(Lcom/mediatek/ngin3d/presentation/ObjectSource;)V
    .locals 8
    .parameter "src"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 94
    iget v2, p1, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcType:I

    if-eq v2, v6, :cond_0

    iget v2, p1, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 97
    const-string v3, "Object3dPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading file asset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v3

    iget-object v2, p1, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderBlockParent()Lcom/mediatek/j3m/SceneNode;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/mediatek/j3m/AssetPool;->loadModel(Ljava/lang/String;Lcom/mediatek/j3m/SceneNode;)Lcom/mediatek/j3m/Model;

    move-result-object v0

    .line 101
    .local v0, model:Lcom/mediatek/j3m/Model;
    const/4 v1, 0x0

    .line 102
    .local v1, node:Lcom/mediatek/j3m/SceneNode;
    iput-object v7, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    .line 104
    if-nez v0, :cond_3

    .line 105
    const-string v3, "Object3dPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load file asset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p1, Lcom/mediatek/ngin3d/presentation/ObjectSource;->srcInfo:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getAnchorSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 119
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2, v5}, Lcom/mediatek/j3m/AnimationController;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->hasLoop()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2, v6}, Lcom/mediatek/j3m/AnimationController;->setLooping(Z)V

    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->addAnimationController(Lcom/mediatek/j3m/AnimationController;)V

    .line 144
    .end local v0           #model:Lcom/mediatek/j3m/Model;
    .end local v1           #node:Lcom/mediatek/j3m/SceneNode;
    :cond_2
    return-void

    .line 107
    .restart local v0       #model:Lcom/mediatek/j3m/Model;
    .restart local v1       #node:Lcom/mediatek/j3m/SceneNode;
    :cond_3
    invoke-interface {v0}, Lcom/mediatek/j3m/Model;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Lcom/mediatek/j3m/Model;->getAnimation()Lcom/mediatek/j3m/AnimationController;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    goto :goto_0

    .line 129
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v3}, Lcom/mediatek/j3m/AnimationController;->getStart()F

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v4}, Lcom/mediatek/j3m/AnimationController;->getEnd()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/j3m/AnimationController;->setLoopRange(FF)V

    .line 131
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    invoke-interface {v2, v5}, Lcom/mediatek/j3m/AnimationController;->setLooping(Z)V

    goto :goto_1
.end method

.method public setRotation(Ljava/lang/String;Lcom/mediatek/ngin3d/Rotation;)V
    .locals 5
    .parameter "sceneNodeName"
    .parameter "rotation"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->getSceneNode(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 152
    .local v0, node:Lcom/mediatek/j3m/SceneNode;
    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v1

    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v2

    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v3

    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 157
    return-void
.end method

.method public update(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    if-eqz v0, :cond_1

    .line 244
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mStarting:Z

    if-eqz v0, :cond_0

    .line 245
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mProgress:F

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mStarting:Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mAnimation:Lcom/mediatek/j3m/AnimationController;

    iget v1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mProgress:F

    sub-float v1, p1, v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/AnimationController;->update(F)V

    .line 250
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;->mProgress:F

    .line 252
    :cond_1
    return-void
.end method
