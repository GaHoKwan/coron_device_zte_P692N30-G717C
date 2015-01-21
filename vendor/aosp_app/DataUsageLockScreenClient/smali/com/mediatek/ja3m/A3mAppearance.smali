.class public Lcom/mediatek/ja3m/A3mAppearance;
.super Ljava/lang/Object;
.source "A3mAppearance.java"

# interfaces
.implements Lcom/mediatek/j3m/Appearance;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/mediatek/ja3m/A3mJni;->new_A3mAppearance()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/ja3m/A3mAppearance;-><init>(JZ)V

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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mAppearance;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mAppearance(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mAppearance;->delete()V

    .line 28
    return-void
.end method

.method public getBlendColourA()F
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendColourA(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getBlendColourB()F
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendColourB(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getBlendColourG()F
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendColourG(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getBlendColourR()F
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendColourR(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getBlendFactorDstAlpha()I
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFactorDstAlpha(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBlendFactorDstRgb()I
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFactorDstRgb(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBlendFactorSrcAlpha()I
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFactorSrcAlpha(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBlendFactorSrcRgb()I
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFactorSrcRgb(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBlendFunctionAlpha()I
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFunctionAlpha(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBlendFunctionRgb()I
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBlendFunctionRgb(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBoolean__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getBoolean__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getColourWriteMaskA()Z
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getColourWriteMaskA(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public getColourWriteMaskB()Z
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getColourWriteMaskB(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public getColourWriteMaskG()Z
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getColourWriteMaskG(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public getColourWriteMaskR()Z
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getColourWriteMaskR(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public getCullingMode()I
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getCullingMode(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getDepthOffsetFactor()F
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getDepthOffsetFactor(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getDepthOffsetUnits()F
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getDepthOffsetUnits(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getDepthTestFunction()I
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getDepthTestFunction(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getFloat__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getFloat__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getForceOpaque()Z
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getForceOpaque(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getInt__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getInt__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLineWidth()F
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getLineWidth(JLcom/mediatek/ja3m/A3mAppearance;)F

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getName(JLcom/mediatek/ja3m/A3mAppearance;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScissorRectangleBottom()I
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getScissorRectangleBottom(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getScissorRectangleHeight()I
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getScissorRectangleHeight(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getScissorRectangleLeft()I
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getScissorRectangleLeft(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getScissorRectangleWidth()I
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getScissorRectangleWidth(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public getShaderProgram()Lcom/mediatek/j3m/ShaderProgram;
    .locals 4

    .prologue
    .line 57
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getShaderProgram(JLcom/mediatek/ja3m/A3mAppearance;)J

    move-result-wide v0

    .line 58
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

.method public getStencilFunction(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilFunction(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilMask(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilMask(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilOperationStencilFail(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilOperationStencilFail(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilOperationStencilPassDepthFail(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilOperationStencilPassDepthFail(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilOperationStencilPassDepthPass(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilOperationStencilPassDepthPass(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilReference(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilReference(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getStencilWriteMask(I)I
    .locals 2
    .parameter "face"

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getStencilWriteMask(JLcom/mediatek/ja3m/A3mAppearance;I)I

    move-result v0

    return v0
.end method

.method public getTexture2D(Ljava/lang/String;)Lcom/mediatek/j3m/Texture2D;
    .locals 4
    .parameter "name"

    .prologue
    .line 643
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getTexture2D__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)J

    move-result-wide v0

    .line 644
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

.method public getTexture2D(Ljava/lang/String;I)Lcom/mediatek/j3m/Texture2D;
    .locals 4
    .parameter "name"
    .parameter "i"

    .prologue
    .line 638
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getTexture2D__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)J

    move-result-wide v0

    .line 639
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

.method public getTextureCube(Ljava/lang/String;)Lcom/mediatek/j3m/TextureCube;
    .locals 4
    .parameter "name"

    .prologue
    .line 661
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getTextureCube__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)J

    move-result-wide v0

    .line 662
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

.method public getTextureCube(Ljava/lang/String;I)Lcom/mediatek/j3m/TextureCube;
    .locals 4
    .parameter "name"
    .parameter "i"

    .prologue
    .line 656
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getTextureCube__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)J

    move-result-wide v0

    .line 657
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

.method public getVector2bX(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2bX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector2bX(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2bX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector2bY(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2bY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector2bY(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2bY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector2fX(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2fX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector2fX(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2fX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector2fY(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2fY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector2fY(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2fY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector2iX(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2iX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector2iX(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2iX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector2iY(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2iY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector2iY(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector2iY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector3bX(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector3bX(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector3bY(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector3bY(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector3bZ(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector3bZ(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3bZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector3fX(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 562
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector3fX(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector3fY(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector3fY(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector3fZ(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector3fZ(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 574
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3fZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector3iX(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector3iX(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector3iY(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector3iY(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector3iZ(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector3iZ(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector3iZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector4bW(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bW__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector4bW(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bW__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector4bX(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector4bX(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector4bY(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector4bY(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector4bZ(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVector4bZ(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4bZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getVector4fW(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 618
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fW__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector4fW(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fW__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector4fX(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 594
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector4fX(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector4fY(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector4fY(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 598
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector4fZ(Ljava/lang/String;)F
    .locals 2
    .parameter "name"

    .prologue
    .line 610
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVector4fZ(Ljava/lang/String;I)F
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 606
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4fZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getVector4iW(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iW__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector4iW(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iW__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector4iX(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iX__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector4iX(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iX__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector4iY(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iY__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector4iY(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iY__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVector4iZ(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iZ__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVector4iZ(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "i"

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getVector4iZ__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindingOrder()I
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_getWindingOrder(JLcom/mediatek/ja3m/A3mAppearance;)I

    move-result v0

    return v0
.end method

.method public isDepthTestEnabled()Z
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_isDepthTestEnabled(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public isDepthWriteEnabled()Z
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_isDepthWriteEnabled(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_isOpaque(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public isScissorTestEnabled()Z
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_isScissorTestEnabled(JLcom/mediatek/ja3m/A3mAppearance;)Z

    move-result v0

    return v0
.end method

.method public propertyExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_propertyExists(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBlendColour(FFFF)V
    .locals 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBlendColour(JLcom/mediatek/ja3m/A3mAppearance;FFFF)V

    .line 87
    return-void
.end method

.method public setBlendFactors(II)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBlendFactors__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;II)V

    .line 107
    return-void
.end method

.method public setBlendFactors(IIII)V
    .locals 7
    .parameter "srcRgb"
    .parameter "srcAlpha"
    .parameter "dstRgb"
    .parameter "dstAlpha"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBlendFactors__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;IIII)V

    .line 111
    return-void
.end method

.method public setBlendFunctions(II)V
    .locals 2
    .parameter "rgb"
    .parameter "alpha"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBlendFunctions(JLcom/mediatek/ja3m/A3mAppearance;II)V

    .line 131
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBoolean__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;Z)V

    .line 291
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 6
    .parameter "name"
    .parameter "value"
    .parameter "i"

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setBoolean__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZI)V

    .line 287
    return-void
.end method

.method public setColourWriteMask(ZZZZ)V
    .locals 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setColourWriteMask(JLcom/mediatek/ja3m/A3mAppearance;ZZZZ)V

    .line 155
    return-void
.end method

.method public setCullingMode(I)V
    .locals 2
    .parameter "cullingMode"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setCullingMode(JLcom/mediatek/ja3m/A3mAppearance;I)V

    .line 63
    return-void
.end method

.method public setDepthOffsetFactor(F)V
    .locals 2
    .parameter "factor"

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setDepthOffsetFactor(JLcom/mediatek/ja3m/A3mAppearance;F)V

    .line 175
    return-void
.end method

.method public setDepthOffsetUnits(F)V
    .locals 2
    .parameter "units"

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setDepthOffsetUnits(JLcom/mediatek/ja3m/A3mAppearance;F)V

    .line 183
    return-void
.end method

.method public setDepthTestEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setDepthTestEnabled(JLcom/mediatek/ja3m/A3mAppearance;Z)V

    .line 199
    return-void
.end method

.method public setDepthTestFunction(I)V
    .locals 2
    .parameter "function"

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setDepthTestFunction(JLcom/mediatek/ja3m/A3mAppearance;I)V

    .line 191
    return-void
.end method

.method public setDepthWriteEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setDepthWriteEnabled(JLcom/mediatek/ja3m/A3mAppearance;Z)V

    .line 207
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setFloat__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;F)V

    .line 323
    return-void
.end method

.method public setFloat(Ljava/lang/String;FI)V
    .locals 6
    .parameter "name"
    .parameter "value"
    .parameter "i"

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setFloat__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FI)V

    .line 319
    return-void
.end method

.method public setForceOpaque(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setForceOpaque(JLcom/mediatek/ja3m/A3mAppearance;Z)V

    .line 143
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setInt__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method public setInt(Ljava/lang/String;II)V
    .locals 6
    .parameter "name"
    .parameter "value"
    .parameter "i"

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setInt__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;II)V

    .line 303
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setLineWidth(JLcom/mediatek/ja3m/A3mAppearance;F)V

    .line 71
    return-void
.end method

.method public setMatrix4f(Ljava/lang/String;[F)V
    .locals 2
    .parameter "name"
    .parameter "mtx"

    .prologue
    .line 626
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setMatrix4f__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;[F)V

    .line 627
    return-void
.end method

.method public setMatrix4f(Ljava/lang/String;[FI)V
    .locals 6
    .parameter "name"
    .parameter "mtx"
    .parameter "i"

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setMatrix4f__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;[FI)V

    .line 623
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setName(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setScissorRectangle(IIII)V
    .locals 7
    .parameter "left"
    .parameter "bottom"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setScissorRectangle(JLcom/mediatek/ja3m/A3mAppearance;IIII)V

    .line 223
    return-void
.end method

.method public setScissorTestEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setScissorTestEnabled(JLcom/mediatek/ja3m/A3mAppearance;Z)V

    .line 215
    return-void
.end method

.method public setShaderProgram(Lcom/mediatek/j3m/ShaderProgram;)V
    .locals 6
    .parameter "program"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mShaderProgram;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mShaderProgram;->getCPtr(Lcom/mediatek/ja3m/A3mShaderProgram;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mShaderProgram;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setShaderProgram(JLcom/mediatek/ja3m/A3mAppearance;JLcom/mediatek/ja3m/A3mShaderProgram;)V

    .line 54
    return-void
.end method

.method public setStencilFunction(IIII)V
    .locals 7
    .parameter "face"
    .parameter "function"
    .parameter "reference"
    .parameter "mask"

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setStencilFunction(JLcom/mediatek/ja3m/A3mAppearance;IIII)V

    .line 243
    return-void
.end method

.method public setStencilOperations(IIII)V
    .locals 7
    .parameter "face"
    .parameter "stencilFail"
    .parameter "stencilPassDepthFail"
    .parameter "stencilPassDepthPass"

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setStencilOperations(JLcom/mediatek/ja3m/A3mAppearance;IIII)V

    .line 259
    return-void
.end method

.method public setStencilWriteMask(II)V
    .locals 2
    .parameter "face"
    .parameter "mask"

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setStencilWriteMask(JLcom/mediatek/ja3m/A3mAppearance;II)V

    .line 275
    return-void
.end method

.method public setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;)V
    .locals 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 634
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mTexture2D;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTexture2D;->getCPtr(Lcom/mediatek/ja3m/A3mTexture2D;)J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/mediatek/ja3m/A3mTexture2D;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setTexture2D__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;JLcom/mediatek/ja3m/A3mTexture2D;)V

    .line 635
    return-void
.end method

.method public setTexture2D(Ljava/lang/String;Lcom/mediatek/j3m/Texture2D;I)V
    .locals 8
    .parameter "name"
    .parameter "value"
    .parameter "i"

    .prologue
    .line 630
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mTexture2D;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTexture2D;->getCPtr(Lcom/mediatek/ja3m/A3mTexture2D;)J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/mediatek/ja3m/A3mTexture2D;

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setTexture2D__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;JLcom/mediatek/ja3m/A3mTexture2D;I)V

    .line 631
    return-void
.end method

.method public setTextureCube(Ljava/lang/String;Lcom/mediatek/j3m/TextureCube;)V
    .locals 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mTextureCube;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTextureCube;->getCPtr(Lcom/mediatek/ja3m/A3mTextureCube;)J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/mediatek/ja3m/A3mTextureCube;

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setTextureCube__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;JLcom/mediatek/ja3m/A3mTextureCube;)V

    .line 653
    return-void
.end method

.method public setTextureCube(Ljava/lang/String;Lcom/mediatek/j3m/TextureCube;I)V
    .locals 8
    .parameter "name"
    .parameter "value"
    .parameter "i"

    .prologue
    .line 648
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p2

    check-cast v2, Lcom/mediatek/ja3m/A3mTextureCube;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mTextureCube;->getCPtr(Lcom/mediatek/ja3m/A3mTextureCube;)J

    move-result-wide v4

    move-object v6, p2

    check-cast v6, Lcom/mediatek/ja3m/A3mTextureCube;

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setTextureCube__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;JLcom/mediatek/ja3m/A3mTextureCube;I)V

    .line 649
    return-void
.end method

.method public setVector2b(Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2b__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZ)V

    .line 339
    return-void
.end method

.method public setVector2b(Ljava/lang/String;ZZI)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "i"

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2b__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZI)V

    .line 335
    return-void
.end method

.method public setVector2f(Ljava/lang/String;FF)V
    .locals 6
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2f__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FF)V

    .line 531
    return-void
.end method

.method public setVector2f(Ljava/lang/String;FFI)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "i"

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2f__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FFI)V

    .line 527
    return-void
.end method

.method public setVector2i(Ljava/lang/String;II)V
    .locals 6
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2i__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;II)V

    .line 435
    return-void
.end method

.method public setVector2i(Ljava/lang/String;III)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "i"

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector2i__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;III)V

    .line 431
    return-void
.end method

.method public setVector3b(Ljava/lang/String;ZZZ)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3b__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZZ)V

    .line 363
    return-void
.end method

.method public setVector3b(Ljava/lang/String;ZZZI)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "i"

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3b__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZZI)V

    .line 359
    return-void
.end method

.method public setVector3f(Ljava/lang/String;FFF)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3f__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FFF)V

    .line 555
    return-void
.end method

.method public setVector3f(Ljava/lang/String;FFFI)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "i"

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3f__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FFFI)V

    .line 551
    return-void
.end method

.method public setVector3i(Ljava/lang/String;III)V
    .locals 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3i__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;III)V

    .line 459
    return-void
.end method

.method public setVector3i(Ljava/lang/String;IIII)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "i"

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector3i__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;IIII)V

    .line 455
    return-void
.end method

.method public setVector4b(Ljava/lang/String;ZZZZ)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4b__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZZZ)V

    .line 395
    return-void
.end method

.method public setVector4b(Ljava/lang/String;ZZZZI)V
    .locals 9
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "i"

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4b__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;ZZZZI)V

    .line 391
    return-void
.end method

.method public setVector4f(Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 586
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4f__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FFFF)V

    .line 587
    return-void
.end method

.method public setVector4f(Ljava/lang/String;FFFFI)V
    .locals 9
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "i"

    .prologue
    .line 582
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4f__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;FFFFI)V

    .line 583
    return-void
.end method

.method public setVector4i(Ljava/lang/String;IIII)V
    .locals 8
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4i__SWIG_1(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;IIII)V

    .line 491
    return-void
.end method

.method public setVector4i(Ljava/lang/String;IIIII)V
    .locals 9
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "i"

    .prologue
    .line 486
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setVector4i__SWIG_0(JLcom/mediatek/ja3m/A3mAppearance;Ljava/lang/String;IIIII)V

    .line 487
    return-void
.end method

.method public setWindingOrder(I)V
    .locals 2
    .parameter "windingOrder"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAppearance;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAppearance_setWindingOrder(JLcom/mediatek/ja3m/A3mAppearance;I)V

    .line 79
    return-void
.end method
