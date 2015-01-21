.class public Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;
.super Ljava/lang/Object;
.source "J3mPresentationEngine.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/PresentationEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MINIMUM_A3M_VERSION:[I = null

.field private static final NANOSECS_PER_SECOND:I = 0x3b9aca00

.field private static final RENDER_LAYER_COUNT:I = 0x4

.field private static final STEREO_EYE_DIST_FACTOR:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "J3mPresentationEngine"


# instance fields
.field private final mAnimationControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mediatek/j3m/AnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetPool:Lcom/mediatek/j3m/AssetPool;

.field private mCamera:Lcom/mediatek/j3m/Camera;

.field private mCameraEyeSeparation:F

.field private mCameraFocalLength:F

.field private mCameraFov:F

.field private mCameraLookAt:Lcom/mediatek/ngin3d/Point;

.field private mCameraPos:Lcom/mediatek/ngin3d/Point;

.field private mCameraWidth:F

.field private mFPS:D

.field private mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

.field private mFrameCount:I

.field private mFrameCountingStartTimeNs:J

.field private mHeight:I

.field private mHitTestRay:Lcom/mediatek/j3m/Ray;

.field private mIsReady:Z

.field private mJ3m:Lcom/mediatek/j3m/J3m;

.field private mLastTime:J

.field private mMaxFPS:I

.field private mProjectionMode:I

.field private mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

.field private mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

.field protected mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

.field private mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

.field private mRenderer:Lcom/mediatek/j3m/Renderer;

.field private mRenderingPaused:Z

.field private mResources:Landroid/content/res/Resources;

.field private mRootNode:Lcom/mediatek/j3m/SceneNode;

.field private final mStage:Lcom/mediatek/ngin3d/Stage;

.field private final mTextureCache:Lcom/mediatek/ngin3d/j3m/TextureCache;

.field private mTimeOrigin:J

.field private mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

.field private mWidth:I

.field private mZFar:F

.field private mZNear:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->$assertionsDisabled:Z

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->MINIMUM_A3M_VERSION:[I

    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/j3m/RenderBlock;

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAnimationControllers:Ljava/util/Set;

    .line 112
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v2, v2, v2}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    .line 113
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    const/high16 v1, -0x4080

    invoke-direct {v0, v2, v2, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraLookAt:Lcom/mediatek/ngin3d/Point;

    .line 114
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraFov:F

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mProjectionMode:I

    .line 124
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZNear:F

    .line 125
    const v0, 0x453b8000

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZFar:F

    .line 153
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 154
    new-instance v0, Lcom/mediatek/ngin3d/j3m/TextureCache;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/TextureCache;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTextureCache:Lcom/mediatek/ngin3d/j3m/TextureCache;

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mMaxFPS:I

    return v0
.end method

.method private applyProjection()V
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mProjectionMode:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    iget v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZNear:F

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Camera;->setNear(F)V

    .line 347
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    iget v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZFar:F

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Camera;->setFar(F)V

    .line 348
    return-void

    .line 330
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->setOrthographicProjection()V

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->setClassicPerspectiveProjection()V

    goto :goto_0

    .line 338
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->setUiPerspectiveProjection()V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private compileDebugCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V
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
    .line 561
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/mediatek/j3m/SceneNode;->getChildCount()I

    move-result v1

    .line 562
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 563
    invoke-interface {p2, v2}, Lcom/mediatek/j3m/SceneNode;->getChild(I)Lcom/mediatek/j3m/SceneNode;

    move-result-object v0

    .line 565
    .local v0, child:Lcom/mediatek/j3m/SceneNode;
    invoke-interface {v0}, Lcom/mediatek/j3m/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/mediatek/j3m/Camera;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->compileDebugCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v0           #child:Lcom/mediatek/j3m/SceneNode;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setClassicPerspectiveProjection()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraFov:F

    invoke-interface {v0, v1, v2}, Lcom/mediatek/j3m/Camera;->setFov(IF)V

    .line 436
    return-void
.end method

.method private setOrthographicProjection()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/j3m/Camera;->setProjectionType(I)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraWidth:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraWidth:F

    :goto_0
    invoke-interface {v1, v0}, Lcom/mediatek/j3m/Camera;->setWidth(F)V

    .line 398
    return-void

    .line 397
    :cond_0
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private setUiPerspectiveProjection()V
    .locals 7

    .prologue
    .line 408
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    if-nez v3, :cond_0

    .line 409
    const-string v3, "J3mPresentationEngine"

    const-string v4, "No camera defined in setUiPerspectiveProjection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 414
    :cond_0
    iget v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    int-to-float v2, v3

    .line 417
    .local v2, smallerDim:F
    iget v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    iget v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    if-le v3, v4, :cond_1

    .line 418
    iget v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    int-to-float v2, v3

    .line 421
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 423
    .local v0, distToScreen:F
    const/high16 v3, 0x4000

    div-float v3, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    double-to-float v1, v3

    .line 426
    .local v1, fov:F
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/Camera;->setProjectionType(I)V

    .line 427
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lcom/mediatek/j3m/Camera;->setFov(IF)V

    goto :goto_0
.end method

.method private updateCamera()V
    .locals 15

    .prologue
    const/high16 v1, 0x4000

    .line 444
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    if-nez v0, :cond_0

    .line 445
    const-string v0, "J3mPresentationEngine"

    const-string v1, "No camera defined in updateCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 449
    :cond_0
    const/4 v7, 0x0

    .line 450
    .local v7, cameraPositionX:F
    const/4 v8, 0x0

    .line 451
    .local v8, cameraPositionY:F
    const/4 v9, 0x0

    .line 452
    .local v9, cameraPositionZ:F
    const/4 v12, 0x0

    .line 453
    .local v12, targetPositionX:F
    const/4 v13, 0x0

    .line 454
    .local v13, targetPositionY:F
    const/4 v14, 0x0

    .line 455
    .local v14, targetPositionZ:F
    const/4 v4, 0x0

    .line 456
    .local v4, cameraUpX:F
    const/high16 v5, 0x3f80

    .line 457
    .local v5, cameraUpY:F
    const/4 v6, 0x0

    .line 459
    .local v6, cameraUpZ:F
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mProjectionMode:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v0, v7, v8, v9}, Lcom/mediatek/j3m/Camera;->setPosition(FFF)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    sub-float v1, v12, v7

    sub-float v2, v13, v8

    sub-float v3, v14, v9

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/j3m/Camera;->point(FFFFFF)V

    .line 499
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->applyProjection()V

    goto :goto_0

    .line 463
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iget v7, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 464
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iget v8, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 465
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iget v9, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 466
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraLookAt:Lcom/mediatek/ngin3d/Point;

    iget v12, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 467
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraLookAt:Lcom/mediatek/ngin3d/Point;

    iget v13, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 468
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraLookAt:Lcom/mediatek/ngin3d/Point;

    iget v14, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 469
    goto :goto_1

    .line 473
    :pswitch_1
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    int-to-float v0, v0

    div-float v10, v0, v1

    .line 474
    .local v10, centX:F
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    int-to-float v0, v0

    div-float v11, v0, v1

    .line 476
    .local v11, centY:F
    move v7, v10

    .line 477
    move v8, v11

    .line 478
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iget v9, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 479
    move v12, v10

    .line 480
    move v13, v11

    .line 481
    const/4 v14, 0x0

    .line 484
    const/high16 v5, -0x4080

    .line 485
    goto :goto_1

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAnimationController(Lcom/mediatek/j3m/AnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAnimationControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public addRenderLayer(Lcom/mediatek/ngin3d/presentation/Presentation;)V
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1103
    sget-boolean v1, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/mediatek/ngin3d/j3m/LayerPresentation;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 1104
    check-cast v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;

    .line 1106
    .local v0, layerPresentation:Lcom/mediatek/ngin3d/j3m/LayerPresentation;
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;->getRenderBlock()Lcom/mediatek/j3m/RenderBlockBase;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 1107
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;->getRootSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v1, v2}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 1108
    return-void
.end method

.method public createContainer()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 860
    new-instance v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    return-object v0
.end method

.method public createEmpty()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 851
    new-instance v0, Lcom/mediatek/ngin3d/j3m/ActorPresentation;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/ActorPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    return-object v0
.end method

.method public createGraphics2d(Z)Lcom/mediatek/ngin3d/presentation/Graphics2d;
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 906
    new-instance v0, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/j3m/Canvas2dPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V

    return-object v0
.end method

.method public createGraphics3d()Lcom/mediatek/ngin3d/presentation/Graphics3d;
    .locals 1

    .prologue
    .line 915
    new-instance v0, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/Canvas3dPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    return-object v0
.end method

.method public createImageDisplay(Z)Lcom/mediatek/ngin3d/presentation/ImageDisplay;
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 869
    new-instance v0, Lcom/mediatek/ngin3d/j3m/PlanePresentation;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/j3m/PlanePresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V

    return-object v0
.end method

.method public createLight()Lcom/mediatek/ngin3d/presentation/ILightPresentation;
    .locals 1

    .prologue
    .line 934
    new-instance v0, Lcom/mediatek/ngin3d/j3m/LightPresentation;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/LightPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    return-object v0
.end method

.method public createModel3d(IZ)Lcom/mediatek/ngin3d/presentation/Model3d;
    .locals 1
    .parameter "type"
    .parameter "isYUp"

    .prologue
    .line 888
    new-instance v0, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/ngin3d/j3m/Basic3dPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;IZ)V

    return-object v0
.end method

.method public createObject3d()Lcom/mediatek/ngin3d/presentation/IObject3d;
    .locals 1

    .prologue
    .line 897
    new-instance v0, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/j3m/Object3dPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    return-object v0
.end method

.method public createRenderLayer()Lcom/mediatek/ngin3d/presentation/RenderLayer;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Lcom/mediatek/ngin3d/j3m/LayerPresentation;

    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ngin3d/j3m/LayerPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Lcom/mediatek/j3m/Renderer;)V

    return-object v0
.end method

.method public createVideoDisplay(Z)Lcom/mediatek/ngin3d/presentation/VideoDisplay;
    .locals 1
    .parameter "isYUp"

    .prologue
    .line 878
    new-instance v0, Lcom/mediatek/ngin3d/j3m/VideoPresentation;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/j3m/VideoPresentation;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;Z)V

    return-object v0
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 806
    return-void
.end method

.method public enableMipMaps(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 965
    return-void
.end method

.method public enableStereoscopic3D(ZFF)V
    .locals 3
    .parameter "enable"
    .parameter "focalDistance"
    .parameter "intensity"

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraFocalLength:F

    .line 1006
    const/high16 v0, 0x41f0

    div-float v0, p2, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraEyeSeparation:F

    .line 1012
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraFocalLength:F

    iget v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraEyeSeparation:F

    invoke-interface {v0, v1, v2}, Lcom/mediatek/j3m/RenderBlockGroup;->setStereo(FF)V

    .line 1013
    return-void

    .line 1008
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraEyeSeparation:F

    goto :goto_0
.end method

.method public getAssetPool()Lcom/mediatek/j3m/AssetPool;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    return-object v0
.end method

.method public getCamera()Lcom/mediatek/j3m/Camera;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    return-object v0
.end method

.method public getDebugCameraNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->compileDebugCameraNames(Ljava/util/List;Lcom/mediatek/j3m/SceneNode;)V

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 549
    .local v1, namesArray:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 550
    return-object v1
.end method

.method public getFPS()D
    .locals 2

    .prologue
    .line 1036
    iget-wide v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFPS:D

    return-wide v0
.end method

.method public getFrameInterval()I
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->waitForFrameTime()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    return v0
.end method

.method public getHitTestRay()Lcom/mediatek/j3m/Ray;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHitTestRay:Lcom/mediatek/j3m/Ray;

    return-object v0
.end method

.method public getJ3m()Lcom/mediatek/j3m/J3m;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    return-object v0
.end method

.method public getRenderBlockParent()Lcom/mediatek/j3m/SceneNode;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

    return-object v0
.end method

.method public getRenderFlags()Lcom/mediatek/ngin3d/j3m/RenderFlags;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootNode()Lcom/mediatek/j3m/SceneNode;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    return-object v0
.end method

.method public getScreenShot()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/high16 v10, 0x3f00

    .line 939
    iget-object v6, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    iget v7, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    iget v8, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    invoke-interface {v6, v9, v9, v7, v8}, Lcom/mediatek/j3m/J3m;->getPixels(IIII)[B

    move-result-object v5

    .line 942
    .local v5, pixels:[B
    array-length v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 943
    .local v1, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 944
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 947
    iget v6, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    iget v7, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 949
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 953
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 954
    .local v4, matrix:Landroid/graphics/Matrix;
    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    iget v8, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    iget v9, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 955
    iget v6, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    iget v7, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 957
    .local v3, flipBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 958
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 960
    return-object v3
.end method

.method public getTextureCache()Lcom/mediatek/ngin3d/j3m/TextureCache;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTextureCache:Lcom/mediatek/ngin3d/j3m/TextureCache;

    return-object v0
.end method

.method public getTotalCImageBytes()I
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalTextureBytes()I
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    return v0
.end method

.method public initialize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public initialize(IILandroid/content/res/Resources;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "resources"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public initialize(IILandroid/content/res/Resources;Ljava/lang/String;)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "resources"
    .parameter "cacheDir"

    .prologue
    .line 291
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->initialize(IILandroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public initialize(IILandroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "resources"
    .parameter "cacheDir"
    .parameter "libDir"

    .prologue
    .line 168
    const-string v3, "J3mPresentationEngine"

    const-string v4, "J3mPresentationEngine initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez p5, :cond_4

    .line 170
    const-string v3, "a3m"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    const-string v3, "ja3m"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    :goto_0
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    .line 177
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    .line 179
    new-instance v3, Lcom/mediatek/ja3m/A3mJ3m;

    invoke-direct {v3}, Lcom/mediatek/ja3m/A3mJ3m;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    .line 181
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    sget-object v4, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->MINIMUM_A3M_VERSION:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->MINIMUM_A3M_VERSION:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sget-object v6, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->MINIMUM_A3M_VERSION:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/j3m/J3m;->createVersion(III)Lcom/mediatek/j3m/Version;

    move-result-object v2

    .line 186
    .local v2, minimumVersion:Lcom/mediatek/j3m/Version;
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->getVersion()Lcom/mediatek/j3m/Version;

    move-result-object v0

    .line 188
    .local v0, currentVersion:Lcom/mediatek/j3m/Version;
    invoke-interface {v0, v2}, Lcom/mediatek/j3m/Version;->isLessThan(Lcom/mediatek/j3m/Version;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "J3mPresentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A3M version is out-of-date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getMajor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getMinor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getPatch()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/mediatek/j3m/Version;->getMajor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/mediatek/j3m/Version;->getMinor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/mediatek/j3m/Version;->getPatch()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const-string v3, "J3mPresentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using A3M version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getMajor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getMinor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getPatch()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/mediatek/j3m/Version;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "J3mPresentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A3M Build Information:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v5}, Lcom/mediatek/j3m/J3m;->getBuildInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v3, Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-direct {v3, v4}, Lcom/mediatek/ngin3d/j3m/RenderFlags;-><init>(Lcom/mediatek/j3m/J3m;)V

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    .line 207
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createAssetPool()Lcom/mediatek/j3m/AssetPool;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    .line 208
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createRay()Lcom/mediatek/j3m/Ray;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHitTestRay:Lcom/mediatek/j3m/Ray;

    .line 210
    new-instance v3, Lcom/mediatek/ngin3d/Point;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    .line 213
    if-eqz p3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-interface {v3, p3}, Lcom/mediatek/j3m/AssetPool;->registerSource(Landroid/content/res/Resources;)V

    .line 215
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/AssetPool;->registerSource(Landroid/content/res/AssetManager;)V

    .line 217
    iput-object p3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mResources:Landroid/content/res/Resources;

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    const-string v4, "//sdcard/ngin3d/assets"

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/AssetPool;->registerSource(Ljava/lang/String;)V

    .line 222
    if-eqz p4, :cond_2

    .line 223
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-interface {v3, p4}, Lcom/mediatek/j3m/AssetPool;->setCacheSource(Ljava/lang/String;)V

    .line 226
    :cond_2
    new-instance v3, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    invoke-direct {v3, p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;-><init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    .line 231
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

    .line 232
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createSceneNode()Lcom/mediatek/j3m/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    .line 233
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/SceneNode;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 237
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createCamera()Lcom/mediatek/j3m/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    .line 238
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/Camera;->setParent(Lcom/mediatek/j3m/SceneNode;)V

    .line 240
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/J3m;->createRenderer(Lcom/mediatek/j3m/AssetPool;)Lcom/mediatek/j3m/Renderer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    .line 241
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    invoke-interface {v3}, Lcom/mediatek/j3m/J3m;->createRenderBlockGroup()Lcom/mediatek/j3m/RenderBlockGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    .line 244
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_5

    .line 245
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mJ3m:Lcom/mediatek/j3m/J3m;

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    iget-object v6, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    iget-object v7, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/j3m/J3m;->createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;

    move-result-object v4

    aput-object v4, v3, v1

    .line 247
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/RenderBlockGroup;->addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V

    .line 249
    if-lez v1, :cond_3

    .line 250
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/mediatek/j3m/RenderBlock;->setColourClear(Z)V

    .line 244
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v0           #currentVersion:Lcom/mediatek/j3m/Version;
    .end local v1           #i:I
    .end local v2           #minimumVersion:Lcom/mediatek/j3m/Version;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libja3m.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .restart local v0       #currentVersion:Lcom/mediatek/j3m/Version;
    .restart local v1       #i:I
    .restart local v2       #minimumVersion:Lcom/mediatek/j3m/Version;
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v5}, Lcom/mediatek/j3m/FlagMask;->inverse()Lcom/mediatek/j3m/FlagMask;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v5}, Lcom/mediatek/j3m/FlagMask;->inverse()Lcom/mediatek/j3m/FlagMask;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v3, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setRenderFlags(Lcom/mediatek/j3m/FlagMask;Lcom/mediatek/j3m/FlagMask;)V

    .line 258
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v5}, Lcom/mediatek/j3m/FlagMask;->inverse()Lcom/mediatek/j3m/FlagMask;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v3, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setRenderFlags(Lcom/mediatek/j3m/FlagMask;Lcom/mediatek/j3m/FlagMask;)V

    .line 262
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v5}, Lcom/mediatek/j3m/FlagMask;->inverse()Lcom/mediatek/j3m/FlagMask;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v3, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setRenderFlags(Lcom/mediatek/j3m/FlagMask;Lcom/mediatek/j3m/FlagMask;)V

    .line 266
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v4, v4, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v4, v5}, Lcom/mediatek/j3m/FlagMask;->or(Lcom/mediatek/j3m/FlagMask;)Lcom/mediatek/j3m/FlagMask;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderFlags:Lcom/mediatek/ngin3d/j3m/RenderFlags;

    iget-object v5, v5, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    invoke-interface {v3, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setRenderFlags(Lcom/mediatek/j3m/FlagMask;Lcom/mediatek/j3m/FlagMask;)V

    .line 271
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 273
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->enableMipMaps(Z)V

    .line 274
    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v3, p0}, Lcom/mediatek/ngin3d/Stage;->realize(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTimeOrigin:J

    .line 277
    iget-wide v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTimeOrigin:J

    iput-wide v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mLastTime:J

    .line 279
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mIsReady:Z

    .line 280
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mIsReady:Z

    return v0
.end method

.method public isRenderingPaused()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderingPaused:Z

    return v0
.end method

.method public isStereo3dMode()Z
    .locals 2

    .prologue
    .line 1016
    iget v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraEyeSeparation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseRendering()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderingPaused:Z

    .line 706
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/MasterClock;->pause()V

    .line 707
    return-void
.end method

.method public removeAnimationController(Lcom/mediatek/j3m/AnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAnimationControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 604
    return-void
.end method

.method public render()Z
    .locals 17

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderingPaused:Z

    if-eqz v11, :cond_0

    .line 641
    const/4 v3, 0x0

    .line 698
    :goto_0
    return v3

    .line 645
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 646
    .local v8, time:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mLastTime:J

    sub-long v11, v8, v11

    long-to-float v11, v11

    const v12, 0x4e6e6b28

    div-float v4, v11, v12

    .line 647
    .local v4, dt:F
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mLastTime:J

    .line 650
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ngin3d/animation/MasterClock;->tick()V

    .line 653
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAnimationControllers:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/j3m/AnimationController;

    .line 654
    .local v2, controller:Lcom/mediatek/j3m/AnimationController;
    invoke-interface {v2, v4}, Lcom/mediatek/j3m/AnimationController;->update(F)V

    .line 656
    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->getEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Lcom/mediatek/j3m/AnimationController;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 658
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Lcom/mediatek/j3m/AnimationController;->stop(Z)V

    goto :goto_1

    .line 663
    .end local v2           #controller:Lcom/mediatek/j3m/AnimationController;
    :cond_2
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->applyOperations()V

    .line 666
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v11}, Lcom/mediatek/ngin3d/Container;->isDirty()Z

    move-result v11

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v11}, Lcom/mediatek/ngin3d/Container;->isAnimationStarted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 669
    .local v3, dirty:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/mediatek/ngin3d/Stage;->applyChanges(Lcom/mediatek/ngin3d/presentation/PresentationEngine;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-interface {v11}, Lcom/mediatek/j3m/AssetPool;->flush()V

    .line 674
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v11}, Lcom/mediatek/ngin3d/Stage;->getBackgroundColor()Lcom/mediatek/ngin3d/Color;

    move-result-object v1

    .line 676
    .local v1, bkgColor:Lcom/mediatek/ngin3d/Color;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget v12, v1, Lcom/mediatek/ngin3d/Color;->red:I

    int-to-float v12, v12

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    iget v13, v1, Lcom/mediatek/ngin3d/Color;->green:I

    int-to-float v13, v13

    const/high16 v14, 0x437f

    div-float/2addr v13, v14

    iget v14, v1, Lcom/mediatek/ngin3d/Color;->blue:I

    int-to-float v14, v14

    const/high16 v15, 0x437f

    div-float/2addr v14, v15

    iget v15, v1, Lcom/mediatek/ngin3d/Color;->alpha:I

    int-to-float v15, v15

    const/high16 v16, 0x437f

    div-float v15, v15, v16

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/mediatek/j3m/RenderBlock;->setBackgroundColour(FFFF)V

    .line 680
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTimeOrigin:J

    sub-long/2addr v11, v13

    long-to-float v11, v11

    const v12, 0x4e6e6b28

    div-float v10, v11, v12

    .line 682
    .local v10, updateTime:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v11, v10}, Lcom/mediatek/j3m/RenderBlockGroup;->update(F)V

    .line 683
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlockGroup:Lcom/mediatek/j3m/RenderBlockGroup;

    invoke-interface {v11}, Lcom/mediatek/j3m/RenderBlockGroup;->render()V

    .line 686
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    #calls: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->calculateAndFixFrameTime()V
    invoke-static {v11}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->access$000(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;)V

    .line 688
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 689
    .local v6, now:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCountingStartTimeNs:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 690
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCountingStartTimeNs:J

    .line 696
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCount:I

    goto/16 :goto_0

    .line 666
    .end local v1           #bkgColor:Lcom/mediatek/ngin3d/Color;
    .end local v3           #dirty:Z
    .end local v6           #now:J
    .end local v10           #updateTime:F
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 691
    .restart local v1       #bkgColor:Lcom/mediatek/ngin3d/Color;
    .restart local v3       #dirty:Z
    .restart local v6       #now:J
    .restart local v10       #updateTime:F
    :cond_6
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCountingStartTimeNs:J

    sub-long v11, v6, v11

    const-wide/32 v13, 0x3b9aca00

    cmp-long v11, v11, v13

    if-lez v11, :cond_4

    .line 692
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCount:I

    int-to-double v11, v11

    const-wide v13, 0x41cdcd6500000000L

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCountingStartTimeNs:J

    sub-long v13, v6, v13

    long-to-double v13, v13

    div-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFPS:D

    .line 693
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCountingStartTimeNs:J

    .line 694
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFrameCount:I

    goto :goto_3
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;->requestRender()V

    .line 739
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 582
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    .line 583
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    .line 584
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 587
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    .local v0, arr$:[Lcom/mediatek/j3m/RenderBlock;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 588
    .local v1, block:Lcom/mediatek/j3m/RenderBlock;
    iget v4, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mHeight:I

    int-to-float v5, v5

    invoke-interface {v1, v6, v6, v4, v5}, Lcom/mediatek/j3m/RenderBlock;->setViewport(FFFF)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v1           #block:Lcom/mediatek/j3m/RenderBlock;
    :cond_0
    return-void
.end method

.method public resumeRendering()V
    .locals 2

    .prologue
    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderingPaused:Z

    .line 714
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mLastTime:J

    .line 715
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/MasterClock;->resume()V

    .line 716
    return-void
.end method

.method public setCamera(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 0
    .parameter "pos"
    .parameter "lookAt"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    .line 511
    iput-object p2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraLookAt:Lcom/mediatek/ngin3d/Point;

    .line 513
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 514
    return-void
.end method

.method public setCameraFov(F)V
    .locals 2
    .parameter "fov"

    .prologue
    .line 380
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraFov:F

    .line 381
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 382
    return-void
.end method

.method public setCameraWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 388
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraWidth:F

    .line 389
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 390
    return-void
.end method

.method public setCameraZ(F)V
    .locals 1
    .parameter "zCamera"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    iput p1, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 373
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 374
    return-void
.end method

.method public setClipDistances(FF)V
    .locals 0
    .parameter "zNear"
    .parameter "zFar"

    .prologue
    .line 362
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZNear:F

    .line 363
    iput p2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mZFar:F

    .line 364
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 365
    return-void
.end method

.method public setDebugCamera(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    .local v0, arr$:[Lcom/mediatek/j3m/RenderBlock;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 526
    .local v1, block:Lcom/mediatek/j3m/RenderBlock;
    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    invoke-interface {v1, v5}, Lcom/mediatek/j3m/RenderBlock;->setCamera(Lcom/mediatek/j3m/Camera;)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v0           #arr$:[Lcom/mediatek/j3m/RenderBlock;
    .end local v1           #block:Lcom/mediatek/j3m/RenderBlock;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    invoke-interface {v5, p1}, Lcom/mediatek/j3m/SceneNode;->find(Ljava/lang/String;)Lcom/mediatek/j3m/SceneNode;

    move-result-object v4

    .line 531
    .local v4, node:Lcom/mediatek/j3m/SceneNode;
    const-class v5, Lcom/mediatek/j3m/Camera;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderBlocks:[Lcom/mediatek/j3m/RenderBlock;

    .restart local v0       #arr$:[Lcom/mediatek/j3m/RenderBlock;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .restart local v1       #block:Lcom/mediatek/j3m/RenderBlock;
    move-object v5, v4

    .line 533
    check-cast v5, Lcom/mediatek/j3m/Camera;

    invoke-interface {v1, v5}, Lcom/mediatek/j3m/RenderBlock;->setCamera(Lcom/mediatek/j3m/Camera;)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    .end local v0           #arr$:[Lcom/mediatek/j3m/RenderBlock;
    .end local v1           #block:Lcom/mediatek/j3m/RenderBlock;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #node:Lcom/mediatek/j3m/SceneNode;
    :cond_1
    return-void
.end method

.method public setFogColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 7
    .parameter "color"

    .prologue
    const/high16 v6, 0x437f

    .line 625
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    const-string v1, "FOG_COLOUR"

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

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/j3m/Renderer;->setProperty(Ljava/lang/String;FFFF)V

    .line 628
    return-void
.end method

.method public setFogDensity(F)V
    .locals 2
    .parameter "density"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    const-string v1, "FOG_DENSITY"

    invoke-interface {v0, v1, p1}, Lcom/mediatek/j3m/Renderer;->setProperty(Ljava/lang/String;F)V

    .line 617
    return-void
.end method

.method public setMaxFPS(I)V
    .locals 0
    .parameter "fps"

    .prologue
    .line 1045
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mMaxFPS:I

    .line 1046
    return-void
.end method

.method public setProjectionMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 354
    iput p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mProjectionMode:I

    .line 355
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->updateCamera()V

    .line 356
    return-void
.end method

.method public setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V
    .locals 0
    .parameter "render"

    .prologue
    .line 728
    invoke-static {p1}, Lcom/mediatek/ngin3d/Transaction;->setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 729
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    .line 730
    return-void
.end method

.method public uninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    const-string v0, "J3mPresentationEngine"

    const-string v1, "J3mPresentationEngine uninitialize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mIsReady:Z

    .line 300
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Container;->unrealize()V

    .line 303
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    invoke-interface {v0}, Lcom/mediatek/j3m/AssetPool;->release()V

    .line 308
    :cond_0
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getDefault()Lcom/mediatek/ngin3d/animation/MasterClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/MasterClock;->tick()V

    .line 311
    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V

    .line 312
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRenderer:Lcom/mediatek/j3m/Renderer;

    .line 313
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mAssetPool:Lcom/mediatek/j3m/AssetPool;

    .line 314
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mTrueRootNode:Lcom/mediatek/j3m/SceneNode;

    .line 315
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mRootNode:Lcom/mediatek/j3m/SceneNode;

    .line 316
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCamera:Lcom/mediatek/j3m/Camera;

    .line 317
    iput-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mCameraPos:Lcom/mediatek/ngin3d/Point;

    .line 318
    return-void
.end method
