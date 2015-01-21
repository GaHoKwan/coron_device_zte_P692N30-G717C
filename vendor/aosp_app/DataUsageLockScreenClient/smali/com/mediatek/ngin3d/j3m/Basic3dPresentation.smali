.class public Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "Basic3dPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/Model3d;


# static fields
.field public static final TAG:Ljava/lang/String; = "Basic3dPresentation"


# instance fields
.field private final mIsYUp:Z

.field private mTexture:Lcom/mediatek/j3m/Texture2D;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;IZ)V
    .locals 0
    .parameter "engine"
    .parameter "type"
    .parameter "isYUp"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 74
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mType:I

    .line 75
    iput-boolean p3, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mIsYUp:Z

    .line 76
    return-void
.end method

.method private replaceImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;Lcom/mediatek/j3m/Texture2D;)V
    .locals 5
    .parameter "src"
    .parameter "texture"

    .prologue
    .line 164
    if-nez p2, :cond_2

    .line 165
    iget v1, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 166
    const-string v2, "Basic3dPresentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load image source: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p1, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;

    iget v1, v1, Lcom/mediatek/ngin3d/presentation/ImageDisplay$Resource;->resId:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v1, "Basic3dPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load image source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    .line 177
    .local v0, replaced:Lcom/mediatek/j3m/Texture2D;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/mediatek/j3m/Solid;

    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v1

    const-string v2, "M_DIFFUSE_TEXTURE"

    invoke-interface {v1, v2, p2}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 184
    iput-object p2, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    goto :goto_0
.end method


# virtual methods
.method public onInitialize()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0x9

    const/high16 v3, 0x3f80

    const/high16 v12, 0x4000

    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 88
    iget v1, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mType:I

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const/16 v4, 0x10

    const/16 v5, 0x20

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/AssetPool;->createSphere(II)Lcom/mediatek/j3m/Solid;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 91
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mIsYUp:Z

    if-eqz v1, :cond_1

    .line 94
    const v6, 0x3fc90fdb

    .line 95
    .local v6, angle:F
    new-instance v8, Lcom/mediatek/ngin3d/Quaternion;

    invoke-direct {v8, v2, v3, v2, v2}, Lcom/mediatek/ngin3d/Quaternion;-><init>(FFFF)V

    .line 96
    .local v8, q1:Lcom/mediatek/ngin3d/Quaternion;
    new-instance v9, Lcom/mediatek/ngin3d/Quaternion;

    div-float v1, v6, v12

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    div-float v4, v6, v12

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    div-float v5, v6, v12

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v3

    div-float v10, v6, v12

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v2

    invoke-direct {v9, v1, v4, v5, v10}, Lcom/mediatek/ngin3d/Quaternion;-><init>(FFFF)V

    .line 101
    .local v9, q2:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/Quaternion;->multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v7

    .line 102
    .local v7, q:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v4

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v5

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v10

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v11

    invoke-interface {v1, v4, v5, v10, v11}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    .line 117
    .end local v7           #q:Lcom/mediatek/ngin3d/Quaternion;
    .end local v8           #q1:Lcom/mediatek/ngin3d/Quaternion;
    .end local v9           #q2:Lcom/mediatek/ngin3d/Quaternion;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/j3m/J3m;->createSphere()Lcom/mediatek/j3m/Sphere;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setShape(Lcom/mediatek/j3m/Shape;)V

    .line 130
    .end local v6           #angle:F
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/mediatek/j3m/Solid;

    invoke-interface {v1}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    .line 131
    .local v0, appearance:Lcom/mediatek/j3m/Appearance;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const-string v4, "ngin3d#quad.sp"

    invoke-interface {v1, v4}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    .line 138
    const-string v1, "M_UV_OFFSET_SCALE"

    const/high16 v5, -0x4080

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/Appearance;->setVector4f(Ljava/lang/String;FFFF)V

    .line 141
    invoke-interface {v0, v14, v14, v13, v13}, Lcom/mediatek/j3m/Appearance;->setBlendFactors(IIII)V

    .line 147
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getAnchorSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 148
    return-void

    .line 108
    .end local v0           #appearance:Lcom/mediatek/j3m/Appearance;
    :cond_1
    const v6, -0x4036f025

    .line 109
    .restart local v6       #angle:F
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    div-float v4, v6, v12

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v5, v6, v12

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v2

    div-float v10, v6, v12

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v3

    div-float v11, v6, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-interface {v1, v4, v5, v10, v11}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    goto :goto_0

    .line 119
    .end local v6           #angle:F
    :cond_2
    iget v1, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/j3m/AssetPool;->createCube()Lcom/mediatek/j3m/Solid;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->setSceneNode(Lcom/mediatek/j3m/SceneNode;)V

    .line 121
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mIsYUp:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-interface {v1, v2, v3, v2, v2}, Lcom/mediatek/j3m/SceneNode;->setRotation(FFFF)V

    goto :goto_1

    .line 127
    :cond_3
    new-instance v1, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported model type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onUninitialize()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->mTexture:Lcom/mediatek/j3m/Texture2D;

    .line 157
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 158
    return-void
.end method

.method public setTexture(Lcom/mediatek/ngin3d/presentation/ImageSource;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getTextureCache()Lcom/mediatek/ngin3d/j3m/TextureCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ngin3d/j3m/TextureCache;->getTexture(Lcom/mediatek/ngin3d/presentation/ImageSource;)Lcom/mediatek/j3m/Texture2D;

    move-result-object v0

    .line 193
    .local v0, texture:Lcom/mediatek/j3m/Texture2D;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;->replaceImageSource(Lcom/mediatek/ngin3d/presentation/ImageSource;Lcom/mediatek/j3m/Texture2D;)V

    .line 194
    return-void
.end method
