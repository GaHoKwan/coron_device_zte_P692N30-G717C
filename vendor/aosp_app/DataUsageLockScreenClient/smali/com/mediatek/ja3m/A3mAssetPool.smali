.class public Lcom/mediatek/ja3m/A3mAssetPool;
.super Ljava/lang/Object;
.source "A3mAssetPool.java"

# interfaces
.implements Lcom/mediatek/j3m/AssetPool;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mAssetPool;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public applyAppearance(Lcom/mediatek/j3m/Appearance;Ljava/lang/String;)V
    .locals 7
    .parameter "appearance"
    .parameter "name"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mAppearance;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mAppearance;->getCPtr(Lcom/mediatek/ja3m/A3mAppearance;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mAppearance;

    move-object v2, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_applyAppearance(JLcom/mediatek/ja3m/A3mAssetPool;JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public createCube()Lcom/mediatek/j3m/Solid;
    .locals 4

    .prologue
    .line 124
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createCube__SWIG_0(JLcom/mediatek/ja3m/A3mAssetPool;)J

    move-result-wide v0

    .line 125
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

.method public createCube(FF)Lcom/mediatek/j3m/Solid;
    .locals 4
    .parameter "scaleU"
    .parameter "scaleV"

    .prologue
    .line 129
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createCube__SWIG_1(JLcom/mediatek/ja3m/A3mAssetPool;FF)J

    move-result-wide v0

    .line 130
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

.method public createSphere(II)Lcom/mediatek/j3m/Solid;
    .locals 4
    .parameter "segmentCount"
    .parameter "wedgeCount"

    .prologue
    .line 134
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createSphere__SWIG_0(JLcom/mediatek/ja3m/A3mAssetPool;II)J

    move-result-wide v0

    .line 135
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

.method public createSphere(IIFF)Lcom/mediatek/j3m/Solid;
    .locals 9
    .parameter "segmentCount"
    .parameter "wedgeCount"
    .parameter "scaleU"
    .parameter "scaleV"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createSphere__SWIG_1(JLcom/mediatek/ja3m/A3mAssetPool;IIFF)J

    move-result-wide v7

    .line 140
    .local v7, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mSolid;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v8, v1}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    goto :goto_0
.end method

.method public createSquare()Lcom/mediatek/j3m/Solid;
    .locals 4

    .prologue
    .line 114
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createSquare__SWIG_0(JLcom/mediatek/ja3m/A3mAssetPool;)J

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
    new-instance v2, Lcom/mediatek/ja3m/A3mSolid;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    goto :goto_0
.end method

.method public createSquare(FF)Lcom/mediatek/j3m/Solid;
    .locals 4
    .parameter "scaleU"
    .parameter "scaleV"

    .prologue
    .line 119
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createSquare__SWIG_1(JLcom/mediatek/ja3m/A3mAssetPool;FF)J

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
    new-instance v2, Lcom/mediatek/ja3m/A3mSolid;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mSolid;-><init>(JZ)V

    goto :goto_0
.end method

.method public createTexture2D(IIII[B)Lcom/mediatek/j3m/Texture2D;
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "BYTE"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createTexture2D__SWIG_1(JLcom/mediatek/ja3m/A3mAssetPool;IIII[B)J

    move-result-wide v8

    .line 82
    .local v8, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mTexture2D;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v9, v1}, Lcom/mediatek/ja3m/A3mTexture2D;-><init>(JZ)V

    goto :goto_0
.end method

.method public createTexture2D(IIII[BLjava/lang/String;)Lcom/mediatek/j3m/Texture2D;
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "BYTE"
    .parameter "name"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_createTexture2D__SWIG_0(JLcom/mediatek/ja3m/A3mAssetPool;IIII[BLjava/lang/String;)J

    move-result-wide v9

    .line 77
    .local v9, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mTexture2D;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v10, v1}, Lcom/mediatek/ja3m/A3mTexture2D;-><init>(JZ)V

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mAssetPool(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mAssetPool;->delete()V

    .line 28
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_flush(JLcom/mediatek/ja3m/A3mAssetPool;)V

    .line 59
    return-void
.end method

.method public getShaderProgram(Ljava/lang/String;)Lcom/mediatek/j3m/ShaderProgram;
    .locals 4
    .parameter "name"

    .prologue
    .line 66
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_getShaderProgram(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mShaderProgram;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mShaderProgram;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
    .locals 4
    .parameter "name"

    .prologue
    .line 71
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_getTexture2D(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)J

    move-result-wide v0

    .line 72
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mTexture2D;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mTexture2D;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTexture2DMemoryUsage()I
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_getTexture2DMemoryUsage(JLcom/mediatek/ja3m/A3mAssetPool;)I

    move-result v0

    return v0
.end method

.method public getTextureCube(Ljava/lang/String;)Lcom/mediatek/j3m/TextureCube;
    .locals 4
    .parameter "name"

    .prologue
    .line 86
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_getTextureCube(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)J

    move-result-wide v0

    .line 87
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mTextureCube;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mTextureCube;-><init>(JZ)V

    goto :goto_0
.end method

.method public loadAppearance(Ljava/lang/String;)Lcom/mediatek/j3m/Appearance;
    .locals 4
    .parameter "name"

    .prologue
    .line 91
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_loadAppearance(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)J

    move-result-wide v0

    .line 92
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

.method public loadModel(Ljava/lang/String;)Lcom/mediatek/j3m/Model;
    .locals 4
    .parameter "name"

    .prologue
    .line 100
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_loadModel__SWIG_0(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)J

    move-result-wide v0

    .line 101
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mModel;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public loadModel(Ljava/lang/String;Lcom/mediatek/j3m/SceneNode;)Lcom/mediatek/j3m/Model;
    .locals 9
    .parameter "name"
    .parameter "scene"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mSceneNode;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mSceneNode;->getCPtr(Lcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/mediatek/ja3m/A3mSceneNode;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_loadModel__SWIG_1(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;JLcom/mediatek/ja3m/A3mSceneNode;)J

    move-result-wide v7

    .line 106
    .local v7, cPtr:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/ja3m/A3mModel;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v8, v1}, Lcom/mediatek/ja3m/A3mModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public registerSource(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "assets"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/mediatek/ja3m/A3m;->A3mAssetPool_registerSource_AssetManager(Lcom/mediatek/j3m/AssetPool;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public registerSource(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "resources"

    .prologue
    .line 41
    new-instance v0, Lcom/mediatek/ja3m/ResourceDataSource;

    invoke-direct {v0, p1}, Lcom/mediatek/ja3m/ResourceDataSource;-><init>(Landroid/content/res/Resources;)V

    invoke-static {p0, v0}, Lcom/mediatek/ja3m/A3m;->A3mAssetPool_registerSource_ResourceDataSource(Lcom/mediatek/j3m/AssetPool;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public registerSource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_registerSource(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_release(JLcom/mediatek/ja3m/A3mAssetPool;)V

    .line 63
    return-void
.end method

.method public setCacheSource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAssetPool;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAssetPool_setCacheSource(JLcom/mediatek/ja3m/A3mAssetPool;Ljava/lang/String;)V

    .line 55
    return-void
.end method
