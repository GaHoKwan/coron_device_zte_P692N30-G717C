.class public Lcom/android/galaxy4/GalaxyRS;
.super Ljava/lang/Object;
.source "GalaxyRS.java"


# static fields
.field public static final BG_STAR_COUNT:I = 0x2af8

.field public static final SPACE_CLOUDSTAR_COUNT:I = 0x19

.field public static final STATIC_STAR_COUNT:I = 0x32


# instance fields
.field private mBgAllocation:Landroid/renderscript/Allocation;

.field private mBgStars:Lcom/android/galaxy4/ScriptField_Particle;

.field private mBgStarsMesh:Landroid/renderscript/Mesh;

.field private mCloudAllocation:Landroid/renderscript/Allocation;

.field private mDensityDPI:I

.field private mHeight:I

.field private mInited:Z

.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRes:Landroid/content/res/Resources;

.field private mScript:Lcom/android/galaxy4/ScriptC_galaxy;

.field private mSpaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

.field private mSpaceCloudsMesh:Landroid/renderscript/Mesh;

.field private mStaticStar2Allocation:Landroid/renderscript/Allocation;

.field private mStaticStarAllocation:Landroid/renderscript/Allocation;

.field private mStaticStars:Lcom/android/galaxy4/ScriptField_Particle;

.field private mStaticStarsMesh:Landroid/renderscript/Mesh;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/galaxy4/GalaxyRS;->mInited:Z

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private createProgramFragment()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 205
    new-instance v4, Landroid/renderscript/Sampler$Builder;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v6}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 206
    .local v4, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v6, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v6}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 207
    sget-object v6, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v6}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 208
    sget-object v6, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v6}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 209
    sget-object v6, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v6}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 210
    invoke-virtual {v4}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v5

    .line 211
    .local v5, sn:Landroid/renderscript/Sampler;
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v6}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 213
    .local v1, builderff:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v1           #builderff:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v6}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 214
    .restart local v1       #builderff:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v7, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1, v6, v7, v8}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 216
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v3

    .line 217
    .local v3, pfff:Landroid/renderscript/ProgramFragment;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v3}, Lcom/android/galaxy4/ScriptC_galaxy;->set_fragBg(Landroid/renderscript/ProgramFragment;)V

    .line 218
    invoke-virtual {v3, v5, v8}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 221
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 223
    .local v0, builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f050003

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 224
    sget-object v6, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 226
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 227
    .local v2, pf:Landroid/renderscript/ProgramFragment;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v6}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 228
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v2}, Lcom/android/galaxy4/ScriptC_galaxy;->set_fragSpaceClouds(Landroid/renderscript/ProgramFragment;)V

    .line 231
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 232
    .restart local v0       #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const/high16 v7, 0x7f05

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 233
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 234
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v2}, Lcom/android/galaxy4/ScriptC_galaxy;->set_fragBgStars(Landroid/renderscript/ProgramFragment;)V

    .line 237
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 238
    .restart local v0       #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f050005

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 239
    sget-object v6, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 240
    sget-object v6, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 241
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 242
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v2}, Lcom/android/galaxy4/ScriptC_galaxy;->set_fragStaticStars(Landroid/renderscript/ProgramFragment;)V

    .line 243
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 254
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 255
    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->bindProgramStore(Landroid/renderscript/ProgramStore;)V

    .line 256
    return-void
.end method

.method private createProgramRaster()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v2, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 247
    .local v0, builder:Landroid/renderscript/ProgramRaster$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;->setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    .line 249
    .local v1, pr:Landroid/renderscript/ProgramRaster;
    iget-object v2, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramRaster(Landroid/renderscript/ProgramRaster;)V

    .line 250
    return-void
.end method

.method private getProjectionNormalized(II)Landroid/renderscript/Matrix4f;
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 125
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 126
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 128
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 129
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 130
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 136
    :goto_0
    const/high16 v1, 0x4334

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 137
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 138
    const/high16 v1, -0x4080

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 139
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 140
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 141
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 142
    return-object v0

    .line 132
    .end local v2           #aspect:F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 133
    .restart local v2       #aspect:F
    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    neg-float v6, v2

    const/high16 v8, 0x3f80

    const/high16 v9, 0x42c8

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method

.method private loadTexture(I)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "id"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 110
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextures()V
    .locals 2

    .prologue
    .line 114
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/android/galaxy4/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStarAllocation:Landroid/renderscript/Allocation;

    .line 115
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/android/galaxy4/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStar2Allocation:Landroid/renderscript/Allocation;

    .line 116
    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/android/galaxy4/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mCloudAllocation:Landroid/renderscript/Allocation;

    .line 117
    const/high16 v0, 0x7f02

    invoke-direct {p0, v0}, Lcom/android/galaxy4/GalaxyRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mBgAllocation:Landroid/renderscript/Allocation;

    .line 118
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mCloudAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/galaxy4/ScriptC_galaxy;->set_textureSpaceCloud(Landroid/renderscript/Allocation;)V

    .line 119
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStarAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/galaxy4/ScriptC_galaxy;->set_textureStaticStar(Landroid/renderscript/Allocation;)V

    .line 120
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStar2Allocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/galaxy4/ScriptC_galaxy;->set_textureStaticStar2(Landroid/renderscript/Allocation;)V

    .line 121
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mBgAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/galaxy4/ScriptC_galaxy;->set_textureBg(Landroid/renderscript/Allocation;)V

    .line 122
    return-void
.end method

.method private updateProjectionMatrices(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    .line 147
    iput p2, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    .line 148
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 149
    .local v1, proj:Landroid/renderscript/Matrix4f;
    iget v3, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    iget v4, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    invoke-virtual {v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 150
    iget v3, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    iget v4, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/galaxy4/GalaxyRS;->getProjectionNormalized(II)Landroid/renderscript/Matrix4f;

    move-result-object v2

    .line 151
    .local v2, projNorm:Landroid/renderscript/Matrix4f;
    new-instance v0, Lcom/android/galaxy4/ScriptField_VpConsts$Item;

    invoke-direct {v0}, Lcom/android/galaxy4/ScriptField_VpConsts$Item;-><init>()V

    .line 152
    .local v0, i:Lcom/android/galaxy4/ScriptField_VpConsts$Item;
    iput-object v2, v0, Lcom/android/galaxy4/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 153
    iget v3, p0, Lcom/android/galaxy4/GalaxyRS;->mDensityDPI:I

    int-to-float v3, v3

    const/high16 v4, 0x4370

    div-float/2addr v3, v4

    iput v3, v0, Lcom/android/galaxy4/ScriptField_VpConsts$Item;->scaleSize:F

    .line 154
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/galaxy4/ScriptField_VpConsts;->set(Lcom/android/galaxy4/ScriptField_VpConsts$Item;IZ)V

    .line 155
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v3}, Lcom/android/galaxy4/ScriptC_galaxy;->invoke_positionParticles()V

    .line 156
    return-void
.end method


# virtual methods
.method public createProgramVertex()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 159
    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    .line 161
    .local v1, mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 162
    .local v2, proj:Landroid/renderscript/Matrix4f;
    iget v6, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    iget v7, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    invoke-virtual {v2, v6, v7}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 165
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 166
    .local v4, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v4}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v3

    .local v3, pv:Landroid/renderscript/ProgramVertex;
    move-object v6, v3

    .line 167
    check-cast v6, Landroid/renderscript/ProgramVertexFixedFunction;

    invoke-virtual {v6, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 168
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v3}, Lcom/android/galaxy4/ScriptC_galaxy;->set_vertBg(Landroid/renderscript/ProgramVertex;)V

    .line 169
    iget v6, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    iget v7, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    invoke-direct {p0, v6, v7}, Lcom/android/galaxy4/GalaxyRS;->updateProjectionMatrices(II)V

    .line 172
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 173
    .local v0, builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f050004

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 174
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 175
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceCloudsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v5

    .line 177
    .local v5, pvs:Landroid/renderscript/ProgramVertex;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 178
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v6, v5}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 180
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v5}, Lcom/android/galaxy4/ScriptC_galaxy;->set_vertSpaceClouds(Landroid/renderscript/ProgramVertex;)V

    .line 183
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 184
    .restart local v0       #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f050001

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 185
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 186
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStarsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v5

    .line 188
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 189
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v6, v5}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 190
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v5}, Lcom/android/galaxy4/ScriptC_galaxy;->set_vertBgStars(Landroid/renderscript/ProgramVertex;)V

    .line 193
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 194
    .restart local v0       #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f050006

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 195
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 196
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStarsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v6, v8}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v5

    .line 198
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 199
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v6, v5}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 200
    iget-object v6, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v6, v5}, Lcom/android/galaxy4/ScriptC_galaxy;->set_vertStaticStars(Landroid/renderscript/ProgramVertex;)V

    .line 201
    return-void
.end method

.method public init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V
    .locals 8
    .parameter "dpi"
    .parameter "rs"
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    .line 54
    iget-boolean v3, p0, Lcom/android/galaxy4/GalaxyRS;->mInited:Z

    if-nez v3, :cond_0

    .line 55
    iput p1, p0, Lcom/android/galaxy4/GalaxyRS;->mDensityDPI:I

    .line 57
    iput-object p2, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 58
    iput-object p3, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    .line 60
    iput p4, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    .line 61
    iput p5, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    .line 63
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 64
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 66
    new-instance v3, Lcom/android/galaxy4/ScriptField_Particle;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

    .line 67
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 68
    .local v0, smb:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 69
    sget-object v3, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 70
    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceCloudsMesh:Landroid/renderscript/Mesh;

    .line 72
    new-instance v3, Lcom/android/galaxy4/ScriptField_Particle;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v5, 0x2af8

    invoke-direct {v3, v4, v5}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStars:Lcom/android/galaxy4/ScriptField_Particle;

    .line 73
    new-instance v1, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v3}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 74
    .local v1, smb2:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStars:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 75
    sget-object v3, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v1, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 76
    invoke-virtual {v1}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStarsMesh:Landroid/renderscript/Mesh;

    .line 78
    new-instance v3, Lcom/android/galaxy4/ScriptField_Particle;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v5, 0x32

    invoke-direct {v3, v4, v5}, Lcom/android/galaxy4/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStars:Lcom/android/galaxy4/ScriptField_Particle;

    .line 79
    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 80
    .local v2, smb3:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStars:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 81
    sget-object v3, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v3}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 82
    invoke-virtual {v2}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStarsMesh:Landroid/renderscript/Mesh;

    .line 84
    new-instance v3, Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v5, p0, Lcom/android/galaxy4/GalaxyRS;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f050002

    invoke-direct {v3, v4, v5, v6}, Lcom/android/galaxy4/ScriptC_galaxy;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    .line 85
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceCloudsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->set_spaceCloudsMesh(Landroid/renderscript/Mesh;)V

    .line 86
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mSpaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->bind_spaceClouds(Lcom/android/galaxy4/ScriptField_Particle;)V

    .line 87
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStarsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->set_bgStarsMesh(Landroid/renderscript/Mesh;)V

    .line 88
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mBgStars:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->bind_bgStars(Lcom/android/galaxy4/ScriptField_Particle;)V

    .line 89
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStarsMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->set_staticStarsMesh(Landroid/renderscript/Mesh;)V

    .line 90
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mStaticStars:Lcom/android/galaxy4/ScriptField_Particle;

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->bind_staticStars(Lcom/android/galaxy4/ScriptField_Particle;)V

    .line 92
    new-instance v3, Lcom/android/galaxy4/ScriptField_VpConsts;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4, v7}, Lcom/android/galaxy4/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mPvConsts:Lcom/android/galaxy4/ScriptField_VpConsts;

    .line 94
    invoke-virtual {p0}, Lcom/android/galaxy4/GalaxyRS;->createProgramVertex()V

    .line 95
    invoke-direct {p0}, Lcom/android/galaxy4/GalaxyRS;->createProgramRaster()V

    .line 96
    invoke-direct {p0}, Lcom/android/galaxy4/GalaxyRS;->createProgramFragmentStore()V

    .line 97
    invoke-direct {p0}, Lcom/android/galaxy4/GalaxyRS;->createProgramFragment()V

    .line 99
    invoke-direct {p0}, Lcom/android/galaxy4/GalaxyRS;->loadTextures()V

    .line 101
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    iget v4, p0, Lcom/android/galaxy4/GalaxyRS;->mDensityDPI:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/galaxy4/ScriptC_galaxy;->set_densityDPI(F)V

    .line 102
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v4, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v3, v4}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 103
    iget-object v3, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v3}, Lcom/android/galaxy4/ScriptC_galaxy;->invoke_positionParticles()V

    .line 104
    iput-boolean v7, p0, Lcom/android/galaxy4/GalaxyRS;->mInited:Z

    .line 106
    .end local v0           #smb:Landroid/renderscript/Mesh$AllocationBuilder;
    .end local v1           #smb2:Landroid/renderscript/Mesh$AllocationBuilder;
    .end local v2           #smb3:Landroid/renderscript/Mesh$AllocationBuilder;
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 267
    iput p1, p0, Lcom/android/galaxy4/GalaxyRS;->mWidth:I

    .line 268
    iput p2, p0, Lcom/android/galaxy4/GalaxyRS;->mHeight:I

    .line 269
    invoke-virtual {p0}, Lcom/android/galaxy4/GalaxyRS;->createProgramVertex()V

    .line 270
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/galaxy4/GalaxyRS;->mScript:Lcom/android/galaxy4/ScriptC_galaxy;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 260
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/galaxy4/GalaxyRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 264
    return-void
.end method
