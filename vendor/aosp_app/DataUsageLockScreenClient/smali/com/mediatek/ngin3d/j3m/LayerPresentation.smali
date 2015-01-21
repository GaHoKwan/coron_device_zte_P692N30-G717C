.class public Lcom/mediatek/ngin3d/j3m/LayerPresentation;
.super Lcom/mediatek/ngin3d/j3m/ActorPresentation;
.source "LayerPresentation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/RenderLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;
    }
.end annotation


# static fields
.field private static final FOCUS_RANGE_MIN:F = 0.0010f

.field private static final TAG:Ljava/lang/String; = "LayerPresentation"


# instance fields
.field private mBlurFactor:F

.field private mCamera:Lcom/mediatek/j3m/Camera;

.field private mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

.field private mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

.field private mFocusDistance:F

.field private mFocusRange:F

.field private mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

.field private mMotionBlurFactor:F

.field private mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

.field private mMotionBlurQuality:I

.field private mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

.field private mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

.field private mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

.field private final mRenderer:Lcom/mediatek/j3m/Renderer;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/Renderer;)V
    .locals 1
    .parameter "engine"
    .parameter "renderer"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    .line 79
    const v0, 0x448ae000

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusDistance:F

    .line 80
    const/high16 v0, 0x43fa

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusRange:F

    .line 81
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mBlurFactor:F

    .line 83
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurFactor:F

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurQuality:I

    .line 100
    iput-object p2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderer:Lcom/mediatek/j3m/Renderer;

    .line 101
    return-void
.end method

.method private final addPostProcessStage(IILcom/mediatek/j3m/RenderBlockGroup;)Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;
    .locals 11
    .parameter "xRes"
    .parameter "yRes"
    .parameter "group"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    new-array v5, v1, [B

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v9

    .line 437
    .local v9, targetTexture:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0, v9, v10, v3, v3}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v8

    .line 440
    .local v8, target:Lcom/mediatek/j3m/RenderTarget;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/AssetPool;->createSquare()Lcom/mediatek/j3m/Solid;

    move-result-object v7

    .line 442
    .local v7, quad:Lcom/mediatek/j3m/Solid;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderer:Lcom/mediatek/j3m/Renderer;

    invoke-interface {v0, v1, v7, v10}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v6

    .line 444
    .local v6, block:Lcom/mediatek/j3m/RenderBlock;
    invoke-interface {v6, v8}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 446
    invoke-interface {p3, v6}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 448
    new-instance v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;

    invoke-interface {v7}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v1

    invoke-direct {v0, p0, v1, v9}, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;-><init>(Lcom/mediatek/ngin3d/j3m/LayerPresentation;Lcom/mediatek/j3m/Appearance;Lcom/mediatek/j3m/Texture2D;)V

    return-object v0
.end method

.method private compileGloCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V
    .locals 5
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mediatek/j3m/SceneNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v1

    .line 272
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 273
    invoke-interface {p2, v2}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 275
    .local v0, child:Lcom/mediatek/j3m/SceneNode;
    invoke-interface {v0}, Lcom/mediatek/j3m/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/mediatek/j3m/Camera;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->compileGloCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0           #child:Lcom/mediatek/j3m/SceneNode;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initDepthOfFieldEffect()V
    .locals 17

    .prologue
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/j3m/J3m;->createRenderBlockGroup()Lcom/mediatek/j3m/RenderBlockGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getWidth()I

    move-result v2

    .line 456
    .local v2, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v3

    .line 457
    .local v3, height:I
    int-to-float v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mBlurFactor:F

    div-float/2addr v1, v4

    float-to-int v15, v1

    .line 458
    .local v15, widthLowRes:I
    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mBlurFactor:F

    div-float/2addr v1, v4

    float-to-int v10, v1

    .line 467
    .local v10, heightLowRes:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const/4 v4, 0x5

    const/4 v5, 0x1

    mul-int v6, v2, v3

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v8

    .line 470
    .local v8, depthTexture:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-int v6, v2, v3

    mul-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    invoke-interface/range {v1 .. v6}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v13

    .line 473
    .local v13, sharpTexture:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v13, v8, v4, v5}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v12

    .line 475
    .local v12, sharpTarget:Lcom/mediatek/j3m/RenderTarget;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v1, v12}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v1}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->addPostProcessStage(IILcom/mediatek/j3m/RenderBlockGroup;)Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;

    move-result-object v9

    .line 484
    .local v9, hStage:Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    iget-object v4, v9, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v5, "ngin3d#blur.mat"

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/AssetPool;->applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V

    .line 485
    iget-object v1, v9, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_DIFFUSE_TEXTURE"

    invoke-interface {v1, v4, v13}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 486
    iget-object v1, v9, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_SAMPLE_MULT"

    const/high16 v5, 0x3f80

    int-to-float v6, v15

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/mediatek/j3m/Appearance;->setVector2f(Ljava/lang/String;FF)V

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v1}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->addPostProcessStage(IILcom/mediatek/j3m/RenderBlockGroup;)Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;

    move-result-object v14

    .line 495
    .local v14, vStage:Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    iget-object v4, v14, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v5, "ngin3d#blur.mat"

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/AssetPool;->applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V

    .line 496
    iget-object v1, v14, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_DIFFUSE_TEXTURE"

    iget-object v5, v9, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->texture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 497
    iget-object v1, v14, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_SAMPLE_MULT"

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    int-to-float v0, v10

    move/from16 v16, v0

    div-float v6, v6, v16

    invoke-interface {v1, v4, v5, v6}, Lcom/mediatek/j3m/Appearance;->setVector2f(Ljava/lang/String;FF)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/j3m/AssetPool;->createSquare()Lcom/mediatek/j3m/Solid;

    move-result-object v11

    .line 505
    .local v11, quadDepthOfField:Lcom/mediatek/j3m/Solid;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    invoke-interface {v11}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v4

    const-string v5, "ngin3d#depthoffield.mat"

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/AssetPool;->applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V

    .line 507
    invoke-interface {v11}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_SHARP_TEXTURE"

    invoke-interface {v1, v4, v13}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_BLURRED_TEXTURE"

    iget-object v5, v14, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->texture:Lcom/mediatek/j3m/Texture2D;

    invoke-interface {v1, v4, v5}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v4, "M_DEPTH_TEXTURE"

    invoke-interface {v1, v4, v8}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const/4 v4, 0x4

    const/16 v5, 0xe

    const/16 v6, 0x9

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-interface {v1, v4, v5, v6, v0}, Lcom/mediatek/j3m/Appearance;->setBlendFactors(IIII)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderer:Lcom/mediatek/j3m/Renderer;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v11, v5}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v7

    .line 520
    .local v7, depthOfFieldBlock:Lcom/mediatek/j3m/RenderBlock;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v1, v7}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v1, v4}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 525
    return-void
.end method

.method private initMotionBlurEffect()V
    .locals 14

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createRenderBlockGroup()Lcom/mediatek/j3m/RenderBlockGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 543
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getWidth()I

    move-result v1

    .line 544
    .local v1, width:I
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getHeight()I

    move-result v2

    .line 551
    .local v2, height:I
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    mul-int v5, v1, v2

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [B

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v9

    .line 554
    .local v9, sharpTexture:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v0, v9, v3, v4, v5}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v8

    .line 556
    .local v8, sharpTarget:Lcom/mediatek/j3m/RenderTarget;
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v8}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 557
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 558
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-interface {v0, v3, v4, v5, v13}, Lcom/mediatek/j3m/RenderBlock;->setBackgroundColour(FFFF)V

    .line 563
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    mul-int v5, v1, v2

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [B

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/AssetPool;->createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;

    move-result-object v12

    .line 566
    .local v12, velocityTexture:Lcom/mediatek/j3m/Texture2D;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/J3m;->createMotionBlurRenderer(Lcom/mediatek/j3m/AssetPool;)Lcom/mediatek/j3m/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

    .line 568
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, v3, v4, v5}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v10

    .line 570
    .local v10, velocityBlock:Lcom/mediatek/j3m/RenderBlock;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v0, v12, v3, v4, v5}, Lcom/mediatek/j3m/J3m;->createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;

    move-result-object v11

    .line 572
    .local v11, velocityTarget:Lcom/mediatek/j3m/RenderTarget;
    invoke-interface {v10, v11}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 573
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 574
    const/high16 v0, 0x3f00

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-interface {v10, v0, v3, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setBackgroundColour(FFFF)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v0, v10}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 582
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/AssetPool;->createSquare()Lcom/mediatek/j3m/Solid;

    move-result-object v7

    .line 583
    .local v7, quad:Lcom/mediatek/j3m/Solid;
    invoke-interface {v7}, Lcom/mediatek/j3m/Solid;->getAppearance()Lcom/mediatek/j3m/Appearance;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    .line 584
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v3

    const-string v4, "a3m#motionblur.sp$HQMB"

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    .line 586
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_SHARP_TEXTURE"

    invoke-interface {v0, v3, v9}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 587
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_VELOCITY_TEXTURE"

    invoke-interface {v0, v3, v12}, Lcom/mediatek/j3m/Appearance;->setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V

    .line 589
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    const/4 v3, 0x4

    const/16 v4, 0xe

    const/16 v5, 0x9

    const/4 v13, 0x4

    invoke-interface {v0, v3, v4, v5, v13}, Lcom/mediatek/j3m/Appearance;->setBlendFactors(IIII)V

    .line 595
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderer:Lcom/mediatek/j3m/Renderer;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v7, v4}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v6

    .line 597
    .local v6, block:Lcom/mediatek/j3m/RenderBlock;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 599
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v0, v6}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 602
    return-void
.end method

.method private setDepthOfFieldParams()V
    .locals 7

    .prologue
    .line 528
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_FOCUS_DISTANCE"

    iget v4, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusDistance:F

    invoke-interface {v2, v3, v4}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 530
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_FOCUS_RANGE_RECIPROCAL"

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusRange:F

    const v6, 0x3a83126f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v4, v5

    invoke-interface {v2, v3, v4}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 532
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v2}, Lcom/mediatek/j3m/Camera;->getNear()F

    move-result v1

    .line 533
    .local v1, near:F
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v2}, Lcom/mediatek/j3m/Camera;->getFar()F

    move-result v0

    .line 534
    .local v0, far:F
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_NEAR_X_FAR"

    mul-float v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 535
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_FAR"

    invoke-interface {v2, v3, v0}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 536
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    const-string v3, "M_NEAR_MINUS_FAR"

    sub-float v4, v1, v0

    invoke-interface {v2, v3, v4}, Lcom/mediatek/j3m/Appearance;->setFloat(Ljava/lang/String;F)V

    .line 538
    .end local v0           #far:F
    .end local v1           #near:F
    :cond_0
    return-void
.end method

.method private setMotionBlurParams()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

    const-string v1, "MOTION_BLUR_FACTOR"

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurFactor:F

    invoke-interface {v0, v1, v2}, Lcom/mediatek/j3m/Renderer;->setProperty(Ljava/lang/String;F)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    if-eqz v0, :cond_1

    .line 609
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurQuality:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const-string v2, "a3m#motionblur.sp$HQMB"

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v1

    const-string v2, "a3m#motionblur.sp"

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/AssetPool;->getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Appearance;->setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V

    goto :goto_0
.end method


# virtual methods
.method public enableDepthOfField(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    if-eqz p1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->enableMotionBlur(Z)V

    .line 350
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->initDepthOfFieldEffect()V

    .line 351
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 352
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v2, v2, v2, v2}, Lcom/mediatek/j3m/RenderBlock;->setBackgroundColour(FFFF)V

    .line 353
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v3}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 358
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 359
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlockGroup;->removeBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 360
    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 361
    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldAppearance:Lcom/mediatek/j3m/Appearance;

    goto :goto_0
.end method

.method public enableMotionBlur(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 372
    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->enableDepthOfField(Z)V

    .line 375
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->initMotionBlurEffect()V

    .line 376
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 377
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setMotionBlurParams()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v2}, Lcom/mediatek/j3m/RenderBlock;->setRenderTarget(Lcom/mediatek/j3m/RenderTarget;)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 383
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlockGroup;->removeBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 384
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 385
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurRenderer:Lcom/mediatek/j3m/Renderer;

    .line 386
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurAppearance:Lcom/mediatek/j3m/Appearance;

    goto :goto_0
.end method

.method public getCamera()Lcom/mediatek/j3m/Camera;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    return-object v0
.end method

.method public getGloCameraNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->compileGloCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 262
    .local v1, namesArray:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 263
    return-object v1
.end method

.method public getRenderBlock()Lcom/mediatek/j3m/RenderBlockBase;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    return-object v0
.end method

.method public onInitialize()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onInitialize()V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getRenderBlockParent()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createCamera()Lcom/mediatek/j3m/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/j3m/J3m;->createRenderBlockGroup()Lcom/mediatek/j3m/RenderBlockGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getEngine()Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->getJ3m()Lcom/mediatek/j3m/J3m;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderer:Lcom/mediatek/j3m/Renderer;

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    .line 112
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/RenderBlock;->setDepthClear(Z)V

    .line 115
    return-void
.end method

.method public onUninitialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    .line 120
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 121
    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    .line 123
    invoke-super {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->onUninitialize()V

    .line 124
    return-void
.end method

.method public setCameraFar(F)V
    .locals 1
    .parameter "far"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Camera;->setFar(F)V

    .line 200
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 201
    return-void
.end method

.method public setCameraFov(F)V
    .locals 2
    .parameter "fov"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/Camera;->setFov(IF)V

    .line 166
    return-void
.end method

.method public setCameraNear(F)V
    .locals 1
    .parameter "near"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Camera;->setNear(F)V

    .line 190
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 191
    return-void
.end method

.method public setCameraPosition(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/j3m/Camera;->setPosition(FFF)V

    .line 141
    return-void
.end method

.method public setCameraRotation(Lcom/mediatek/ngin3d/Rotation;)V
    .locals 6
    .parameter "rot"

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Rotation;->getQuaternion()Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 150
    .local v0, q:Lcom/mediatek/ngin3d/Quaternion;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ0()F

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ1()F

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ2()F

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Quaternion;->getQ3()F

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/j3m/Camera;->setRotation(FFFF)V

    .line 151
    return-void
.end method

.method public setCameraWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Camera;->setWidth(F)V

    .line 224
    return-void
.end method

.method public setClipDistances(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Camera;->setNear(F)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p2}, Lcom/mediatek/j3m/Camera;->setFar(F)V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 181
    return-void
.end method

.method public setDepthClear(Z)V
    .locals 1
    .parameter "clear"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/RenderBlock;->setDepthClear(Z)V

    .line 252
    return-void
.end method

.method public setFocusBlurFactor(F)V
    .locals 2
    .parameter "blurFactor"

    .prologue
    .line 332
    const/high16 v0, 0x4180

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mBlurFactor:F

    .line 335
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mDepthOfFieldGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->enableDepthOfField(Z)V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->enableDepthOfField(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public setFocusDistance(F)V
    .locals 0
    .parameter "focusDistance"

    .prologue
    .line 300
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusDistance:F

    .line 301
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 302
    return-void
.end method

.method public setFocusRange(F)V
    .locals 0
    .parameter "focusRange"

    .prologue
    .line 310
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mFocusRange:F

    .line 311
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setDepthOfFieldParams()V

    .line 312
    return-void
.end method

.method public setMotionBlurFactor(F)V
    .locals 0
    .parameter "blurFactor"

    .prologue
    .line 403
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurFactor:F

    .line 404
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setMotionBlurParams()V

    .line 405
    return-void
.end method

.method public setMotionBlurQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 417
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mMotionBlurQuality:I

    .line 418
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->setMotionBlurParams()V

    .line 419
    return-void
.end method

.method public setProjectionMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, p1}, Lcom/mediatek/j3m/Camera;->setProjectionType(I)V

    .line 210
    return-void
.end method

.method public setRenderTarget(Lcom/mediatek/ngin3d/presentation/ImageDisplay;)V
    .locals 2
    .parameter "imageDisplay"

    .prologue
    .line 290
    move-object v0, p1

    check-cast v0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;

    .line 291
    .local v0, pp:Lcom/mediatek/ngin3d/j3m/PlanePresentation;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;->attachToRenderBlock(Lcom/mediatek/j3m/RenderBlock;)V

    .line 292
    return-void
.end method

.method public useNamedCamera(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/RenderBlock;->setCamera(Lcom/mediatek/j3m/Camera;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/j3m/SceneNode;->find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 237
    .local v0, node:Lcom/mediatek/j3m/SceneNode;
    const-class v1, Lcom/mediatek/j3m/Camera;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->mRenderBlock:Lcom/mediatek/j3m/RenderBlock;

    check-cast v0, Lcom/mediatek/j3m/Camera;

    .end local v0           #node:Lcom/mediatek/j3m/SceneNode;
    invoke-interface {v1, v0}, Lcom/mediatek/j3m/RenderBlock;->setCamera(Lcom/mediatek/j3m/Camera;)V

    goto :goto_0
.end method
