.class Lcom/android/wallpaper/nexus/NexusRS;
.super Lcom/android/wallpaper/RenderScriptScene;
.source "NexusRS.java"


# static fields
.field private static final DENSITY_MODE_HIGH:I = 0x2

.field private static final DENSITY_MODE_HIGHER:I = 0x4

.field private static final DENSITY_MODE_LOW:I = 0x0

.field private static final DENSITY_MODE_LOWER:I = 0x3

.field private static final DENSITY_MODE_MEDIUM:I = 0x1

.field private static final HALF_PULSE_SIZE:I = 0x7

.field private static final HD_HEIGHT_LAND:I = 0x2d0

.field private static final HD_HEIGHT_PORT:I = 0x500

.field private static final HD_WIDTH_LAND:I = 0x500

.field private static final HD_WIDTH_PORT:I = 0x2d0

.field private static final PLUSE_SIZE:I = 0xe


# instance fields
.field private mDensityMode:I

.field private mInitialHeight:I

.field private mInitialWidth:I

.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field protected mScaleParam0:I

.field protected mScaleParam1:I

.field private mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

.field private mWorldScaleX:F

.field private mWorldScaleY:F

.field private mXOffset:F


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v1, 0x3f80

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;-><init>(II)V

    .line 44
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    .line 58
    iput p1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mInitialWidth:I

    .line 59
    iput p2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mInitialHeight:I

    .line 60
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleX:F

    .line 61
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleY:F

    .line 63
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 64
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->getDensityMode()V

    .line 68
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->getConfig()V

    .line 70
    return-void
.end method

.method private createProgramFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 144
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v3, v4, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v1

    .line 148
    .local v1, pft:Landroid/renderscript/ProgramFragment;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 150
    iget-object v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v3, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gPFTexture(Landroid/renderscript/ProgramFragment;)V

    .line 153
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v3}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 154
    .restart local v0       #builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v3, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v4, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v3, v4, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v2

    .line 157
    .local v2, pft565:Landroid/renderscript/ProgramFragment;
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Sampler;->CLAMP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 158
    iget-object v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v3, v2}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gPFTexture565(Landroid/renderscript/ProgramFragment;)V

    .line 159
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 163
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v2, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 164
    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    .line 167
    .local v1, solid:Landroid/renderscript/ProgramStore;
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramStore(Landroid/renderscript/ProgramStore;)V

    .line 169
    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 170
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gPSBlend(Landroid/renderscript/ProgramStore;)V

    .line 171
    return-void
.end method

.method private createProgramVertex()V
    .locals 5

    .prologue
    .line 174
    new-instance v3, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v4}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 175
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 176
    .local v0, proj:Landroid/renderscript/Matrix4f;
    iget v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v4, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/renderscript/Matrix4f;->loadOrthoWindow(II)V

    .line 177
    iget-object v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 179
    new-instance v2, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 180
    .local v2, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    .line 181
    invoke-virtual {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v1

    .local v1, pv:Landroid/renderscript/ProgramVertex;
    move-object v3, v1

    .line 182
    check-cast v3, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v4, p0, Lcom/android/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v3, v4}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 183
    iget-object v3, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 184
    return-void
.end method

.method private createPulseSize()V
    .locals 4

    .prologue
    .line 271
    iget v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam1:I

    mul-int/lit8 v2, v2, 0xe

    iget v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam0:I

    div-int v1, v2, v3

    .line 272
    .local v1, pluseSize:I
    iget v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam1:I

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam0:I

    div-int v0, v2, v3

    .line 274
    .local v0, halfPluseSize:I
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v2, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gPluseSize(I)V

    .line 275
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v2, v0}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gHalfPluseSize(I)V

    .line 276
    return-void
.end method

.method private createState()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    .local v1, mode:I
    :goto_0
    iget-object v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {p0}, Lcom/android/wallpaper/RenderScriptScene;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gIsPreview(I)V

    .line 125
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v2, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gMode(I)V

    .line 126
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gXOffset(F)V

    .line 127
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    iget v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleX:F

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gWorldScaleX(F)V

    .line 128
    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    iget v3, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleY:F

    invoke-virtual {v2, v3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gWorldScaleY(F)V

    .line 129
    return-void

    .line 120
    .end local v1           #mode:I
    :catch_0
    move-exception v0

    .line 121
    .local v0, exc:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #mode:I
    goto :goto_0

    .line 124
    .end local v0           #exc:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getConfig()V
    .locals 4

    .prologue
    const/16 v3, 0x500

    const/16 v2, 0x2d0

    const/4 v1, 0x1

    .line 254
    iget v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    packed-switch v0, :pswitch_data_0

    .line 265
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam0:I

    .line 266
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam1:I

    .line 268
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-ge v0, v3, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    if-lt v0, v3, :cond_2

    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-lt v0, v2, :cond_2

    .line 257
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam0:I

    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam1:I

    goto :goto_0

    .line 260
    :cond_2
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam0:I

    .line 261
    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScaleParam1:I

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getDensityMode()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 227
    iput v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    .line 228
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 229
    .local v0, dpi:I
    sparse-switch v0, :sswitch_data_0

    .line 240
    iput v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    .line 243
    :goto_0
    iget v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    if-ne v1, v2, :cond_0

    .line 244
    if-gez v0, :cond_1

    .line 245
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    .line 250
    :cond_0
    :goto_1
    return-void

    .line 231
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    goto :goto_0

    .line 234
    :sswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    goto :goto_0

    .line 237
    :sswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mDensityMode:I

    goto :goto_1

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private loadTexture(I)Landroid/renderscript/Allocation;
    .locals 2
    .parameter "id"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method private loadTextureARGB(I)Landroid/renderscript/Allocation;
    .locals 3
    .parameter "id"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/android/wallpaper/nexus/ScriptC_nexus;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050003

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    .line 99
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->createProgramFragmentStore()V

    .line 100
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->createProgramFragment()V

    .line 101
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->createProgramVertex()V

    .line 102
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->createState()V

    .line 105
    invoke-direct {p0}, Lcom/android/wallpaper/nexus/NexusRS;->createPulseSize()V

    .line 108
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    const v1, 0x7f020010

    invoke-direct {p0, v1}, Lcom/android/wallpaper/nexus/NexusRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gTBackground(Landroid/renderscript/Allocation;)V

    .line 109
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    const v1, 0x7f02000f

    invoke-direct {p0, v1}, Lcom/android/wallpaper/nexus/NexusRS;->loadTextureARGB(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gTPulse(Landroid/renderscript/Allocation;)V

    .line 110
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    const v1, 0x7f020002

    invoke-direct {p0, v1}, Lcom/android/wallpaper/nexus/NexusRS;->loadTextureARGB(I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gTGlow(Landroid/renderscript/Allocation;)V

    .line 111
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Script;->setTimeZone(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v0}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->invoke_initPulses()V

    .line 113
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

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
    .line 190
    iget v0, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    iget v1, p0, Lcom/android/wallpaper/RenderScriptScene;->mHeight:I

    if-ge v0, v1, :cond_0

    .line 192
    int-to-float v0, p2

    iget v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mXOffset:F

    iget v2, p0, Lcom/android/wallpaper/RenderScriptScene;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleX:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 199
    :cond_0
    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.wallpaper.secondaryTap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.home.drop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v0, p2, p3}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->invoke_addTap(II)V

    .line 204
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public resize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    .line 89
    iget v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mInitialWidth:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleX:F

    .line 90
    iget v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mInitialHeight:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleY:F

    .line 91
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    iget v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleX:F

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gWorldScaleX(F)V

    .line 92
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    iget v1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mWorldScaleY:F

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gWorldScaleY(F)V

    .line 93
    return-void
.end method

.method public setOffset(FFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/wallpaper/nexus/NexusRS;->mXOffset:F

    .line 75
    iget-object v0, p0, Lcom/android/wallpaper/nexus/NexusRS;->mScript:Lcom/android/wallpaper/nexus/ScriptC_nexus;

    invoke-virtual {v0, p1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;->set_gXOffset(F)V

    .line 76
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 81
    return-void
.end method
