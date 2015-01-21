.class public Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;
.super Ljava/lang/Object;
.source "ActorNodePresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ActorNodePresentation"


# instance fields
.field private mCollisionType:I

.field private mCollisionVisible:Z

.field private mDebugSolid:Lcom/mediatek/j3m/Solid;

.field private mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

.field private mNode:Lcom/mediatek/j3m/SceneNode;

.field private mOpacity:F

.field private mOwner:Ljava/lang/Object;

.field private mParentOpacity:F

.field private mShape:Lcom/mediatek/j3m/Shape;

.field private final mShapeNode:Lcom/mediatek/j3m/SceneNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/ActorPresentation;Ljava/lang/String;)V
    .locals 2
    .parameter "actorPresentation"
    .parameter "nodeName"

    .prologue
    const/high16 v0, 0x3f80

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOpacity:F

    .line 66
    iput v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mParentOpacity:F

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionType:I

    .line 77
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    .line 79
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, p2}, Lcom/mediatek/j3m/SceneNode;->find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 88
    :cond_1
    return-void
.end method

.method private updateDebugSolid()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 252
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Solid;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 254
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionVisible:Z

    if-eqz v0, :cond_1

    .line 259
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionType:I

    packed-switch v0, :pswitch_data_0

    .line 277
    sget-boolean v0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/AssetPool;->createSquare()Lcom/mediatek/j3m/Solid;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    .line 283
    :cond_1
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/j3m/Solid;->setFlags(Lcom/mediatek/j3m/FlagMask;Z)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Solid;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 287
    :cond_2
    return-void

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/mediatek/j3m/AssetPool;->createSphere(II)Lcom/mediatek/j3m/Solid;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mDebugSolid:Lcom/mediatek/j3m/Solid;

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateOpacity()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOpacity:F

    iget v3, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mParentOpacity:F

    mul-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/mediatek/ngin3d/j3m/Utility;->setOpacityRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;F)V

    .line 187
    return-void
.end method


# virtual methods
.method public getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOwner:Ljava/lang/Object;

    return-object v0
.end method

.method getShape()Lcom/mediatek/j3m/Shape;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Shape;->setTransform(Lcom/mediatek/j3m/SceneNode;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    return-object v0
.end method

.method public initialize(Ljava/lang/Object;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOwner:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method notifyOfParentOpacity(F)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 178
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mParentOpacity:F

    .line 179
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->updateOpacity()V

    .line 180
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->requestRender()V

    .line 317
    return-void
.end method

.method public setCollisionPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    .line 228
    return-void
.end method

.method public setCollisionRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 6
    .parameter "rotation"

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 236
    .local v0, q:Lcom/mediatek/ngin3d/Quaternion;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 237
    return-void
.end method

.method public setCollisionScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShapeNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Scale;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Scale;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setScale(FFF)V

    .line 245
    return-void
.end method

.method public setCollisionShape(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 194
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionType:I

    if-eq p1, v0, :cond_0

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 213
    const-string v0, "ActorNodePresentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid collision shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    .line 217
    :goto_1
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionType:I

    .line 218
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->updateDebugSolid()V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createPlane()Lcom/mediatek/j3m/Plane;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    goto :goto_1

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSquare()Lcom/mediatek/j3m/Square;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    goto :goto_1

    .line 209
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createSphere()Lcom/mediatek/j3m/Sphere;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mShape:Lcom/mediatek/j3m/Shape;

    goto :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCollisionVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionVisible:Z

    if-eq p1, v0, :cond_0

    .line 295
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mCollisionVisible:Z

    .line 296
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->updateDebugSolid()V

    .line 298
    :cond_0
    return-void
.end method

.method public setColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 7
    .parameter "color"

    .prologue
    const/high16 v6, 0x437f

    .line 154
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    iget v2, p1, Lcom/mediatek/ngin3d/Color;->red:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p1, Lcom/mediatek/ngin3d/Color;->green:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p1, Lcom/mediatek/ngin3d/Color;->blue:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p1, Lcom/mediatek/ngin3d/Color;->alpha:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ngin3d/j3m/Utility;->setColorRecursive(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/SceneNode;FFFF)V

    .line 160
    return-void
.end method

.method public setOpacity(I)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 168
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOpacity:F

    .line 169
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->updateOpacity()V

    .line 170
    return-void
.end method

.method public setPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setPosition(FFF)V

    .line 120
    return-void
.end method

.method public setRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 6
    .parameter "rotation"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 128
    .local v0, q:Lcom/mediatek/ngin3d/Quaternion;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 129
    return-void
.end method

.method public setScale(Lcom/mediatek/ngin3d/Scale;)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    iget v1, p1, Lcom/mediatek/ngin3d/Scale;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Scale;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/SceneNode;->setScale(FFF)V

    .line 137
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/SceneNode;->setFlags(Lcom/mediatek/j3m/FlagMask;Z)V

    .line 146
    return-void
.end method

.method public uninitialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mOwner:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mEngine:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    .line 103
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/ActorNodePresentation;->mNode:Lcom/mediatek/j3m/SceneNode;

    .line 104
    return-void
.end method
