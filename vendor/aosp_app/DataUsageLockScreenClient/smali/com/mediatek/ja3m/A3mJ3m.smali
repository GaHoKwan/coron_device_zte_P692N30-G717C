.class public Lcom/mediatek/ja3m/A3mJ3m;
.super Ljava/lang/Object;
.source "A3mJ3m.java"

# interfaces
.implements Lcom/mediatek/j3m/J3m;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/mediatek/ja3m/A3mJni;->new_A3mJ3m()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mJ3m;-><init>(JZ)V

    .line 48
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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mJ3m;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public createAppearance()Lcom/mediatek/j3m/Appearance;
    .locals 4

    .prologue
    .line 64
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createAppearance(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 65
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

.method public createAssetPool()Lcom/mediatek/j3m/AssetPool;
    .locals 4

    .prologue
    .line 59
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createAssetPool(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 60
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mAssetPool;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mAssetPool;-><init>(JZ)V

    goto :goto_0
.end method

.method public createCamera()Lcom/mediatek/j3m/Camera;
    .locals 4

    .prologue
    .line 114
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createCamera(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 115
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mCamera;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    goto :goto_0
.end method

.method public createFlagMask()Lcom/mediatek/j3m/FlagMask;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createFlagMask__SWIG_0(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v0
.end method

.method public createFlagMask(IZ)Lcom/mediatek/j3m/FlagMask;
    .locals 4
    .parameter "index"
    .parameter "state"

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/ja3m/A3mFlagMask;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createFlagMask__SWIG_1(JLcom/mediatek/ja3m/A3mJ3m;IZ)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mFlagMask;-><init>(JZ)V

    return-object v0
.end method

.method public createLight()Lcom/mediatek/j3m/Light;
    .locals 4

    .prologue
    .line 119
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createLight(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 120
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mLight;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    goto :goto_0
.end method

.method public createMotionBlurRenderer(Lcom/mediatek/j3m/AssetPool;)Lcom/mediatek/j3m/Renderer;
    .locals 8
    .parameter "pool"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mAssetPool;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mAssetPool;->getCPtr(Lcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mAssetPool;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createMotionBlurRenderer(JLcom/mediatek/ja3m/A3mJ3m;JLcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v6

    .line 130
    .local v6, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mRenderer;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v7, v1}, Lcom/mediatek/ja3m/A3mRenderer;-><init>(JZ)V

    goto :goto_0
.end method

.method public createPlane()Lcom/mediatek/j3m/Plane;
    .locals 4

    .prologue
    .line 153
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createPlane(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 154
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mPlane;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mPlane;-><init>(JZ)V

    goto :goto_0
.end method

.method public createRay()Lcom/mediatek/j3m/Ray;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Lcom/mediatek/ja3m/A3mRay;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createRay(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mRay;-><init>(JZ)V

    return-object v0
.end method

.method public createRenderBlock(Lcom/mediatek/j3m/Renderer;Lcom/mediatek/j3m/SceneNode;Lcom/mediatek/j3m/Camera;)Lcom/mediatek/j3m/RenderBlock;
    .locals 14
    .parameter "renderer"
    .parameter "sceneNode"
    .parameter "camera"

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mRenderer;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mRenderer;->getCPtr(Lcom/mediatek/ja3m/A3mRenderer;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mRenderer;

    move-object/from16 v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mSceneNode;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mSceneNode;->getCPtr(Lcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v6

    move-object/from16 v8, p2

    check-cast v8, Lcom/mediatek/ja3m/A3mSceneNode;

    move-object/from16 v2, p3

    check-cast v2, Lcom/mediatek/ja3m/A3mCamera;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mCamera;->getCPtr(Lcom/mediatek/ja3m/A3mCamera;)J

    move-result-wide v9

    move-object/from16 v11, p3

    check-cast v11, Lcom/mediatek/ja3m/A3mCamera;

    move-object v2, p0

    invoke-static/range {v0 .. v11}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createRenderBlock(JLcom/mediatek/ja3m/A3mJ3m;JLcom/mediatek/ja3m/A3mRenderer;JLcom/mediatek/ja3m/A3mSceneNode;JLcom/mediatek/ja3m/A3mCamera;)J

    move-result-wide v12

    .line 135
    .local v12, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mRenderBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v13, v1}, Lcom/mediatek/ja3m/A3mRenderBlock;-><init>(JZ)V

    goto :goto_0
.end method

.method public createRenderBlockGroup()Lcom/mediatek/j3m/RenderBlockGroup;
    .locals 4

    .prologue
    .line 139
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createRenderBlockGroup(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 140
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mRenderBlockGroup;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mRenderBlockGroup;-><init>(JZ)V

    goto :goto_0
.end method

.method public createRenderTarget(Lcom/mediatek/j3m/Texture2D;Lcom/mediatek/j3m/Texture2D;ZZ)Lcom/mediatek/j3m/RenderTarget;
    .locals 13
    .parameter "colourTexture"
    .parameter "depthTexture"
    .parameter "depthBuffer"
    .parameter "stencilBuffer"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mTexture2D;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTexture2D;->getCPtr(Lcom/mediatek/ja3m/A3mTexture2D;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mTexture2D;

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mTexture2D;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTexture2D;->getCPtr(Lcom/mediatek/ja3m/A3mTexture2D;)J

    move-result-wide v6

    move-object v8, p2

    check-cast v8, Lcom/mediatek/ja3m/A3mTexture2D;

    move-object v2, p0

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {v0 .. v10}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createRenderTarget(JLcom/mediatek/ja3m/A3mJ3m;JLcom/mediatek/ja3m/A3mTexture2D;JLcom/mediatek/ja3m/A3mTexture2D;ZZ)J

    move-result-wide v11

    .line 145
    .local v11, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mRenderTarget;

    const/4 v1, 0x1

    invoke-direct {v0, v11, v12, v1}, Lcom/mediatek/ja3m/A3mRenderTarget;-><init>(JZ)V

    goto :goto_0
.end method

.method public createRenderer(Lcom/mediatek/j3m/AssetPool;)Lcom/mediatek/j3m/Renderer;
    .locals 8
    .parameter "pool"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mAssetPool;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mAssetPool;->getCPtr(Lcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mAssetPool;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createRenderer(JLcom/mediatek/ja3m/A3mJ3m;JLcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v6

    .line 125
    .local v6, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mRenderer;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v7, v1}, Lcom/mediatek/ja3m/A3mRenderer;-><init>(JZ)V

    goto :goto_0
.end method

.method public createSceneNode()Lcom/mediatek/j3m/SceneNode;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-wide v3, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v3, v4, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createSceneNode(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v1

    .line 79
    .local v1, ptr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .line 87
    .local v0, node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-virtual {v0}, Lcom/mediatek/ja3m/A3mSceneNode;->getNodeType()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 101
    new-instance v0, Lcom/mediatek/ja3m/A3mSceneNode;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSceneNode;-><init>(JZ)V

    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 89
    :sswitch_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    .line 90
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 93
    :sswitch_1
    new-instance v0, Lcom/mediatek/ja3m/A3mLight;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mLight;-><init>(JZ)V

    .line 94
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 97
    :sswitch_2
    new-instance v0, Lcom/mediatek/ja3m/A3mCamera;

    .end local v0           #node:Lcom/mediatek/ja3m/A3mSceneNode;
    invoke-direct {v0, v1, v2, v5}, Lcom/mediatek/ja3m/A3mCamera;-><init>(JZ)V

    .line 98
    .restart local v0       #node:Lcom/mediatek/ja3m/A3mSceneNode;
    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public createSolid()Lcom/mediatek/j3m/Solid;
    .locals 4

    .prologue
    .line 109
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createSolid(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 110
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mSolid;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    goto :goto_0
.end method

.method public createSphere()Lcom/mediatek/j3m/Sphere;
    .locals 4

    .prologue
    .line 163
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createSphere(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 164
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mSphere;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mSphere;-><init>(JZ)V

    goto :goto_0
.end method

.method public createSquare()Lcom/mediatek/j3m/Square;
    .locals 4

    .prologue
    .line 158
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createSquare(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v0

    .line 159
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mSquare;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mSquare;-><init>(JZ)V

    goto :goto_0
.end method

.method public createVersion()Lcom/mediatek/j3m/Version;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createVersion__SWIG_4(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v0
.end method

.method public createVersion(I)Lcom/mediatek/j3m/Version;
    .locals 4
    .parameter "major"

    .prologue
    .line 180
    new-instance v0, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createVersion__SWIG_3(JLcom/mediatek/ja3m/A3mJ3m;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v0
.end method

.method public createVersion(II)Lcom/mediatek/j3m/Version;
    .locals 4
    .parameter "major"
    .parameter "minor"

    .prologue
    .line 176
    new-instance v0, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createVersion__SWIG_2(JLcom/mediatek/ja3m/A3mJ3m;II)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v0
.end method

.method public createVersion(III)Lcom/mediatek/j3m/Version;
    .locals 7
    .parameter "major"
    .parameter "minor"
    .parameter "patch"

    .prologue
    .line 172
    new-instance v6, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createVersion__SWIG_1(JLcom/mediatek/ja3m/A3mJ3m;III)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v6
.end method

.method public createVersion(IIILjava/lang/String;)Lcom/mediatek/j3m/Version;
    .locals 8
    .parameter "major"
    .parameter "minor"
    .parameter "patch"
    .parameter "extra"

    .prologue
    .line 168
    new-instance v7, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_createVersion__SWIG_0(JLcom/mediatek/ja3m/A3mJ3m;IIILjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v7
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mJ3m(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mJ3m;->delete()V

    .line 28
    return-void
.end method

.method public getBuildInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_getBuildInfo(JLcom/mediatek/ja3m/A3mJ3m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixels([BIIII)V
    .locals 8
    .parameter "BYTE"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_getPixels(JLcom/mediatek/ja3m/A3mJ3m;[BIIII)V

    .line 189
    return-void
.end method

.method public getPixels(IIII)[B
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .local v1, pixels:[B
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJ3m;->getPixels([BIIII)V

    .line 43
    return-object v1
.end method

.method public getVersion()Lcom/mediatek/j3m/Version;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/mediatek/ja3m/A3mVersion;

    iget-wide v1, p0, Lcom/mediatek/ja3m/A3mJ3m;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mJ3m_getVersion(JLcom/mediatek/ja3m/A3mJ3m;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ja3m/A3mVersion;-><init>(JZ)V

    return-object v0
.end method
