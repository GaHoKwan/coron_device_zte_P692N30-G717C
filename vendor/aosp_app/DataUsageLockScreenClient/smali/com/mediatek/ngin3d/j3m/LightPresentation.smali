.class public Lcom/mediatek/ngin3d/j3m/LightPresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "LightPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/ILightPresentation;


# static fields
.field private static final TAG:Ljava/lang/String; = "LightPresentation"


# instance fields
.field private mLight:Lcom/mediatek/j3m/Light;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 75
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createLight()Lcom/mediatek/j3m/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    .line 77
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getAnchorSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 79
    return-void
.end method

.method public setAmbientLevel(F)V
    .locals 1
    .parameter "level"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Light;->setAmbientLevel(F)V

    .line 113
    return-void
.end method

.method public setAttenuationFar(F)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Light;->setAttenuationFar(F)V

    .line 128
    return-void
.end method

.method public setAttenuationNear(F)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Light;->setAttenuationNear(F)V

    .line 123
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 6
    .parameter "color"

    .prologue
    const/high16 v5, 0x437f

    .line 105
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    iget v1, p1, Lcom/mediatek/ngin3d/Color;->red:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p1, Lcom/mediatek/ngin3d/Color;->green:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p1, Lcom/mediatek/ngin3d/Color;->blue:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p1, Lcom/mediatek/ngin3d/Color;->alpha:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/j3m/Light;->setColour(FFFF)V

    .line 108
    return-void
.end method

.method public setIntensity(F)V
    .locals 1
    .parameter "intensity"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Light;->setIntensity(F)V

    .line 118
    return-void
.end method

.method public setIsAttenuated(Z)V
    .locals 1
    .parameter "isAttenuated"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Light;->setIsAttenuated(Z)V

    .line 143
    return-void
.end method

.method public setSpotInnerAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/Light;->setSpotInnerAngle(IF)V

    .line 133
    return-void
.end method

.method public setSpotOuterAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/Light;->setSpotOuterAngle(IF)V

    .line 138
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, j3mLightType:I
    packed-switch p1, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LightPresentation;->mLight:Lcom/mediatek/j3m/Light;

    invoke-interface {v1, v0}, Lcom/mediatek/j3m/Light;->setLightType(I)V

    .line 101
    return-void

    .line 88
    :pswitch_0
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    const/4 v0, 0x0

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    const/4 v0, 0x2

    .line 95
    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
