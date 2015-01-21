.class public Lcom/mediatek/ngin3d/j3m/VideoPresentation;
.super Lcom/mediatek/ngin3d/j3m/PlanePresentation;
.source "VideoPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/VideoDisplay;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V
    .locals 0
    .parameter "engine"
    .parameter "isYUp"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->onInitialize()V

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/mediatek/j3m/Solid;

    .line 65
    .local v1, solid:Lcom/mediatek/j3m/Solid;
    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 66
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v2

    const-string v3, "ngin3d#vidquad.sp"

    invoke-interface {v2, v3}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    .line 68
    return-void
.end method

.method public setTextureTransform([F)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 82
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of 4*4 matrix array should be 16 rather than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/mediatek/j3m/Solid;

    invoke-interface {v0}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    const-string v1, "M_UV_TRANSFORM_MATRIX"

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/Appearance;->setMatrix4f(Ljava/lang/String;[F)V

    .line 89
    return-void
.end method
