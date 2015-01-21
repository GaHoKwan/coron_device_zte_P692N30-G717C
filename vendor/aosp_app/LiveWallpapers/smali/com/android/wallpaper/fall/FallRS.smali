.class Lcom/android/wallpaper/fall/FallRS;
.super Lcom/android/wallpaper/RenderScriptScene;
.source "FallRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/fall/FallRS$WorldState;
    }
.end annotation


# static fields
.field private static final MESH_RESOLUTION:I = 0x30

.field private static final RSID_CONSTANTS:I = 0x1

.field private static final RSID_DROP:I = 0x2

.field private static final RSID_STATE:I = 0x0

.field private static final RSID_TEXTURE_LEAVES:I = 0x1

.field private static final RSID_TEXTURE_RIVERBED:I = 0x0

.field private static final TEXTURES_COUNT:I = 0x2


# instance fields
.field private mConstants:Lcom/android/wallpaper/fall/ScriptField_Constants;

.field private mGlHeight:F

.field private mMesh:Landroid/renderscript/Mesh;

.field private mMeshHeight:I

.field private mMeshWidth:I

.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mPfBackground:Landroid/renderscript/ProgramFragment;

.field private mPfSky:Landroid/renderscript/ProgramFragment;

.field private mPfsBackground:Landroid/renderscript/ProgramStore;

.field private mPfsLeaf:Landroid/renderscript/ProgramStore;

.field private mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPvSky:Landroid/renderscript/ProgramVertex;

.field private mPvWater:Landroid/renderscript/ProgramVertex;

.field private mSampler:Landroid/renderscript/Sampler;

.field private mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

.field private mUniformAlloc:Landroid/renderscript/Allocation;

.field private mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;-><init>(II)V

    .line 51
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    .line 86
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 87
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 88
    return-void
.end method

.method private createMesh()V
    .locals 14

    .prologue
    .line 162
    new-instance v5, Landroid/renderscript/Mesh$TriangleMeshBuilder;

    iget-object v11, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {v5, v11, v12, v13}, Landroid/renderscript/Mesh$TriangleMeshBuilder;-><init>(Landroid/renderscript/RenderScript;II)V

    .line 164
    .local v5, tmb:Landroid/renderscript/Mesh$TriangleMeshBuilder;
    iget v11, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v12, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-le v11, v12, :cond_0

    iget v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    .line 165
    .local v7, width:I
    :goto_0
    iget v11, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v12, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-le v11, v12, :cond_1

    iget v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    .line 167
    .local v1, height:I
    :goto_1
    const/16 v6, 0x30

    .line 168
    .local v6, wResolution:I
    mul-int/lit8 v11, v1, 0x30

    int-to-float v11, v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    float-to-int v0, v11

    .line 170
    .local v0, hResolution:I
    const/high16 v11, 0x4000

    int-to-float v12, v1

    mul-float/2addr v11, v12

    int-to-float v12, v7

    div-float/2addr v11, v12

    iput v11, p0, Lcom/android/wallpaper/fall/FallRS;->mGlHeight:F

    .line 172
    add-int/lit8 v6, v6, 0x2

    .line 173
    add-int/lit8 v0, v0, 0x2

    .line 175
    const/4 v9, 0x0

    .local v9, y:I
    :goto_2
    if-gt v9, v0, :cond_3

    .line 176
    int-to-float v11, v9

    int-to-float v12, v0

    div-float/2addr v11, v12

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    int-to-float v12, v1

    mul-float/2addr v11, v12

    int-to-float v12, v7

    div-float v10, v11, v12

    .line 177
    .local v10, yOffset:F
    const/4 v8, 0x0

    .local v8, x:I
    :goto_3
    if-gt v8, v6, :cond_2

    .line 178
    int-to-float v11, v8

    int-to-float v12, v6

    div-float/2addr v11, v12

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    invoke-virtual {v5, v11, v10}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 177
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 164
    .end local v0           #hResolution:I
    .end local v1           #height:I
    .end local v6           #wResolution:I
    .end local v7           #width:I
    .end local v8           #x:I
    .end local v9           #y:I
    .end local v10           #yOffset:F
    :cond_0
    iget v7, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    goto :goto_0

    .line 165
    .restart local v7       #width:I
    :cond_1
    iget v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    goto :goto_1

    .line 175
    .restart local v0       #hResolution:I
    .restart local v1       #height:I
    .restart local v6       #wResolution:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    .restart local v10       #yOffset:F
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 182
    .end local v8           #x:I
    .end local v10           #yOffset:F
    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_7

    .line 183
    and-int/lit8 v11, v9, 0x1

    if-nez v11, :cond_4

    const/4 v4, 0x1

    .line 184
    .local v4, shift:Z
    :goto_5
    mul-int/lit8 v10, v9, 0x33

    .line 185
    .local v10, yOffset:I
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_6
    if-ge v8, v6, :cond_6

    .line 186
    add-int v3, v10, v8

    .line 187
    .local v3, index:I
    add-int/lit8 v11, v3, 0x32

    add-int/lit8 v2, v11, 0x1

    .line 188
    .local v2, iWR1:I
    if-eqz v4, :cond_5

    .line 189
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v5, v3, v11, v2}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 190
    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v5, v11, v12, v2}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 185
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 183
    .end local v2           #iWR1:I
    .end local v3           #index:I
    .end local v4           #shift:Z
    .end local v8           #x:I
    .end local v10           #yOffset:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 192
    .restart local v2       #iWR1:I
    .restart local v3       #index:I
    .restart local v4       #shift:Z
    .restart local v8       #x:I
    .restart local v10       #yOffset:I
    :cond_5
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v5, v3, v11, v2}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    .line 193
    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v5, v3, v11, v12}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;

    goto :goto_7

    .line 182
    .end local v2           #iWR1:I
    .end local v3           #index:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 198
    .end local v4           #shift:Z
    .end local v8           #x:I
    .end local v10           #yOffset:I
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->create(Z)Landroid/renderscript/Mesh;

    move-result-object v11

    iput-object v11, p0, Lcom/android/wallpaper/fall/FallRS;->mMesh:Landroid/renderscript/Mesh;

    .line 200
    const/16 v11, 0x33

    iput v11, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshWidth:I

    .line 201
    add-int/lit8 v11, v0, 0x1

    iput v11, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshHeight:I

    .line 203
    iget-object v11, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v12, p0, Lcom/android/wallpaper/fall/FallRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v11, v12}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_WaterMesh(Landroid/renderscript/Mesh;)V

    .line 204
    return-void
.end method

.method private createProgramFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v1, Landroid/renderscript/Sampler$Builder;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 262
    .local v1, sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v2, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 263
    sget-object v2, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 264
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 265
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 266
    invoke-virtual {v1}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mSampler:Landroid/renderscript/Sampler;

    .line 268
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 269
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v2, v3, v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 271
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    .line 272
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 274
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 276
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 277
    .restart local v0       #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v2, v3, v4}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfSky:Landroid/renderscript/ProgramFragment;

    .line 280
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfSky:Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 282
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mPfSky:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PFSky(Landroid/renderscript/ProgramFragment;)V

    .line 283
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 287
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 288
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 289
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 290
    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    .line 293
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramStore$Builder;
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 294
    .restart local v0       #builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 295
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 296
    invoke-virtual {v0, v3}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 297
    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 298
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mPfsLeaf:Landroid/renderscript/ProgramStore;

    .line 300
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfsLeaf:Landroid/renderscript/ProgramStore;

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PFSLeaf(Landroid/renderscript/ProgramStore;)V

    .line 301
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mPfsBackground:Landroid/renderscript/ProgramStore;

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PFSBackground(Landroid/renderscript/ProgramStore;)V

    .line 302
    return-void
.end method

.method private createProgramVertex()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 305
    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v5}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 306
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 307
    .local v1, proj:Landroid/renderscript/Matrix4f;
    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 308
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v4, v1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 311
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 312
    .local v0, builder:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvSky:Landroid/renderscript/ProgramVertex;

    .line 313
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvSky:Landroid/renderscript/ProgramVertex;

    check-cast v4, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v5, p0, Lcom/android/wallpaper/fall/FallRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v4, v5}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 315
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v5, p0, Lcom/android/wallpaper/fall/FallRS;->mPvSky:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v4, v5}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PVSky(Landroid/renderscript/ProgramVertex;)V

    .line 317
    new-instance v4, Lcom/android/wallpaper/fall/ScriptField_Constants;

    iget-object v5, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/wallpaper/fall/ScriptField_Constants;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mConstants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    .line 318
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mConstants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    invoke-virtual {v4}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mUniformAlloc:Landroid/renderscript/Allocation;

    .line 320
    new-instance v2, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 322
    .local v2, sb:Landroid/renderscript/ProgramVertex$Builder;
    const-string v3, "\nvarying vec4 varColor;\nvarying vec2 varTex0;\nvec2 addDrop(vec4 d, vec2 pos, float dxMul) {\n  vec2 ret = vec2(0.0, 0.0);\n  vec2 delta = d.xy - pos;\n  delta.x *= dxMul;\n  float dist = length(delta);\n  if (dist < d.w) { \n    float amp = d.z * dist;\n    amp /= d.w * d.w;\n    amp *= sin(d.w - dist);\n    ret = delta * amp;\n  }\n  return ret;\n}\nvoid main() {\n  vec2 pos = ATTRIB_position.xy;\n  gl_Position = vec4(pos.x, pos.y, 0.0, 1.0);\n  float dxMul = 1.0;\n  varTex0 = vec2((pos.x + 1.0), (pos.y + 1.6666));\n  if (UNI_Rotate < 0.9) {\n    varTex0.xy *= vec2(0.25, 0.33);\n    varTex0.x += UNI_Offset.x * 0.5;\n    pos.x += UNI_Offset.x * 2.0;\n  } else {\n    varTex0.xy *= vec2(0.5, 0.3125);\n    dxMul = 2.5;\n  }\n  varColor = vec4(1.0, 1.0, 1.0, 1.0);\n  pos.xy += vec2(1.0, 1.0);\n  pos.xy *= vec2(25.0, 42.0);\n  varTex0.xy += addDrop(UNI_Drop01, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop02, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop03, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop04, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop05, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop06, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop07, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop08, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop09, pos, dxMul);\n  varTex0.xy += addDrop(UNI_Drop10, pos, dxMul);\n}\n"

    .line 372
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 373
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mUniformAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 374
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v4, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 375
    invoke-virtual {v2}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvWater:Landroid/renderscript/ProgramVertex;

    .line 376
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mPvWater:Landroid/renderscript/ProgramVertex;

    iget-object v5, p0, Lcom/android/wallpaper/fall/FallRS;->mUniformAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v4, v5, v7}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 378
    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v5, p0, Lcom/android/wallpaper/fall/FallRS;->mPvWater:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v4, v5}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_PVWater(Landroid/renderscript/ProgramVertex;)V

    .line 380
    return-void
.end method

.method private createState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    new-instance v0, Lcom/android/wallpaper/fall/FallRS$WorldState;

    invoke-direct {v0}, Lcom/android/wallpaper/fall/FallRS$WorldState;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    .line 224
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->width:I

    .line 225
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->height:I

    .line 226
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v3, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshWidth:I

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->meshWidth:I

    .line 227
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v3, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshHeight:I

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->meshHeight:I

    .line 228
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iput v2, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->rippleIndex:I

    .line 229
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    const/high16 v3, 0x4000

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->glWidth:F

    .line 230
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v3, p0, Lcom/android/wallpaper/fall/FallRS;->mGlHeight:F

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->glHeight:F

    .line 231
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    const v3, -0x457ced91

    const v4, 0x3a83126f

    invoke-static {v3, v4}, Landroid/util/MathUtils;->random(FF)F

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->skySpeedX:F

    .line 232
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    const v3, 0x38a7c5ac

    const v4, 0x3951b717

    invoke-static {v3, v4}, Landroid/util/MathUtils;->random(FF)F

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->skySpeedY:F

    .line 233
    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-le v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    .line 234
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    invoke-virtual {p0}, Lcom/android/wallpaper/RenderScriptScene;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput v1, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->isPreview:I

    .line 236
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->glWidth:F

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glWidth(F)V

    .line 237
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->glHeight:F

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glHeight(F)V

    .line 238
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->meshWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_meshWidth(F)V

    .line 239
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->meshHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_meshHeight(F)V

    .line 240
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_xOffset(F)V

    .line 241
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_rotate(F)V

    .line 242
    return-void

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    :cond_1
    move v1, v2

    .line 234
    goto :goto_1
.end method

.method private loadTexture(I)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "id"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 251
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextureARGB(I)Landroid/renderscript/Allocation;
    .locals 4
    .parameter "id"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/wallpaper/fall/FallRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 257
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextures()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    const v1, 0x7f020005

    invoke-direct {p0, v1}, Lcom/android/wallpaper/fall/FallRS;->loadTextureARGB(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_TLeaves(Landroid/renderscript/Allocation;)V

    .line 246
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    const v1, 0x7f02000e

    invoke-direct {p0, v1}, Lcom/android/wallpaper/fall/FallRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_TRiverbed(Landroid/renderscript/Allocation;)V

    .line 247
    return-void
.end method


# virtual methods
.method addDrop(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 383
    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 384
    .local v0, dropX:I
    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    int-to-float v2, v2

    div-float v2, p2, v2

    iget v3, p0, Lcom/android/wallpaper/fall/FallRS;->mMeshHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 386
    .local v1, dropY:I
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    invoke-virtual {v2, v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->invoke_addDrop(II)V

    .line 387
    return-void
.end method

.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f05

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wallpaper/fall/ScriptC_fall;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    .line 147
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->createMesh()V

    .line 148
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->createState()V

    .line 149
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->createProgramVertex()V

    .line 150
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->createProgramFragmentStore()V

    .line 151
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->createProgramFragment()V

    .line 152
    invoke-direct {p0}, Lcom/android/wallpaper/fall/FallRS;->loadTextures()V

    .line 154
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Script;->setTimeZone(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mConstants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->bind_g_Constants(Lcom/android/wallpaper/fall/ScriptField_Constants;)V

    .line 158
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 3
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 99
    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.wallpaper.secondaryTap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.home.drop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    int-to-float v1, p2

    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v0, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v0, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->width:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v2, v2, Lcom/android/wallpaper/fall/FallRS$WorldState;->xOffset:F

    mul-float/2addr v0, v2

    :goto_0
    add-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/wallpaper/fall/FallRS;->addDrop(FF)V

    .line 104
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4000

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    .line 121
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iput p1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->width:I

    .line 122
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iput p2, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->height:I

    .line 123
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    if-le p1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v2, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    .line 126
    if-le p1, p2, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    div-int v2, p1, p2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glWidth(F)V

    .line 128
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    invoke-virtual {v1, v3}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glHeight(F)V

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v2, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v2, v2, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_rotate(F)V

    .line 136
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    invoke-virtual {v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->invoke_initLeaves()V

    .line 138
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 139
    .local v0, proj:Landroid/renderscript/Matrix4f;
    iget v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 140
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 141
    return-void

    .line 123
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    invoke-virtual {v1, v3}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glWidth(F)V

    .line 131
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    div-int v2, p2, p1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_glHeight(F)V

    goto :goto_1
.end method

.method public setOffset(FFII)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iput p1, v0, Lcom/android/wallpaper/fall/FallRS$WorldState;->xOffset:F

    .line 93
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallRS;->mScript:Lcom/android/wallpaper/fall/ScriptC_fall;

    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v1, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->xOffset:F

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;->set_g_xOffset(F)V

    .line 94
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 110
    iget-object v1, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    .line 111
    .local v1, worldState:Lcom/android/wallpaper/fall/FallRS$WorldState;
    iget v0, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->width:I

    .line 112
    .local v0, width:I
    div-int/lit8 v4, v0, 0x4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    div-int/lit8 v7, v0, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int v2, v4, v5

    .line 113
    .local v2, x:I
    iget v4, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->height:I

    div-int/lit8 v4, v4, 0x4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->height:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int v3, v4, v5

    .line 114
    .local v3, y:I
    int-to-float v5, v2

    iget-object v4, p0, Lcom/android/wallpaper/fall/FallRS;->mWorldState:Lcom/android/wallpaper/fall/FallRS$WorldState;

    iget v4, v4, Lcom/android/wallpaper/fall/FallRS$WorldState;->rotate:I

    if-nez v4, :cond_0

    int-to-float v4, v0

    iget v6, v1, Lcom/android/wallpaper/fall/FallRS$WorldState;->xOffset:F

    mul-float/2addr v4, v6

    :goto_0
    add-float/2addr v4, v5

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/wallpaper/fall/FallRS;->addDrop(FF)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
