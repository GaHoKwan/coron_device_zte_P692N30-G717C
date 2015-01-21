.class public Lcom/android/musicvis/GenericWaveRS;
.super Lcom/android/musicvis/RenderScriptScene;
.source "GenericWaveRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/GenericWaveRS$WorldState;
    }
.end annotation


# static fields
.field private static final DENSITY_MODE_HIGH:I = 0x2

.field private static final DENSITY_MODE_HIGHER:I = 0x4

.field private static final DENSITY_MODE_LOW:I = 0x0

.field private static final DENSITY_MODE_LOWER:I = 0x3

.field private static final DENSITY_MODE_MEDIUM:I = 0x1

.field private static final RSID_LINES:I = 0x2

.field private static final RSID_POINTS:I = 0x1

.field private static final RSID_PROGRAMVERTEX:I = 0x3

.field private static final RSID_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GenericWave"


# instance fields
.field protected mAudioCapture:Lcom/android/musicvis/AudioCapture;

.field private mCubeMesh:Landroid/renderscript/Mesh;

.field private mDensityMode:I

.field private final mDrawCube:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mPVBackground:Landroid/renderscript/ProgramVertex;

.field private mPfBackground:Landroid/renderscript/ProgramFragment;

.field protected mPointAlloc:Landroid/renderscript/Allocation;

.field protected mPointData:[F

.field private mSampler:Landroid/renderscript/Sampler;

.field protected mScaleParam0:I

.field protected mScaleParam1:I

.field mScript:Lcom/android/musicvis/ScriptC_waveform;

.field private mTexId:I

.field private mTexture:Landroid/renderscript/Allocation;

.field private mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

.field private mVisible:Z

.field protected mVizData:[I

.field protected mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;


# direct methods
.method protected constructor <init>(III)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "texid"

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;-><init>(II)V

    .line 35
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v3, Lcom/android/musicvis/GenericWaveRS$1;

    invoke-direct {v3, p0}, Lcom/android/musicvis/GenericWaveRS$1;-><init>(Lcom/android/musicvis/GenericWaveRS;)V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    .line 50
    new-instance v3, Lcom/android/musicvis/GenericWaveRS$WorldState;

    invoke-direct {v3}, Lcom/android/musicvis/GenericWaveRS$WorldState;-><init>()V

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    .line 61
    const/16 v3, 0x2000

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    .line 66
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 67
    const/16 v3, 0x400

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    .line 151
    iput p3, p0, Lcom/android/musicvis/GenericWaveRS;->mTexId:I

    .line 152
    iput p1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    .line 153
    iput p2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    .line 155
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v3, v3

    div-int/lit8 v2, v3, 0x8

    .line 156
    .local v2, outlen:I
    div-int/lit8 v0, v2, 0x2

    .line 157
    .local v0, half:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 159
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x2

    aput v6, v3, v4

    .line 160
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x3

    aput v6, v3, v4

    .line 161
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x4

    sub-int v5, v1, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 162
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x6

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    .line 163
    iget-object v3, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x7

    aput v6, v3, v4

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/musicvis/GenericWaveRS;->getDensityMode()V

    .line 167
    invoke-direct {p0}, Lcom/android/musicvis/GenericWaveRS;->getConfig()V

    .line 169
    return-void
.end method

.method private getConfig()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    const/16 v4, 0x1e0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    packed-switch v0, :pswitch_data_0

    .line 143
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 144
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    .line 146
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 123
    iput v2, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    goto :goto_0

    .line 126
    :pswitch_1
    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    if-lt v0, v5, :cond_0

    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    if-ge v0, v4, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    if-lt v0, v5, :cond_2

    .line 127
    :cond_1
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 128
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    goto :goto_0

    .line 130
    :cond_2
    iput v2, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 131
    iput v3, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    goto :goto_0

    .line 135
    :pswitch_2
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 136
    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    goto :goto_0

    .line 139
    :pswitch_3
    iput v3, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    .line 140
    iput v2, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDensityMode()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 92
    iput v2, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    .line 93
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 94
    .local v0, dpi:I
    sparse-switch v0, :sswitch_data_0

    .line 105
    iput v2, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    .line 108
    :goto_0
    iget v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    if-ne v1, v2, :cond_0

    .line 109
    if-gez v0, :cond_1

    .line 110
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 96
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    goto :goto_0

    .line 99
    :sswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    goto :goto_0

    .line 102
    :sswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDensityMode:I

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 186
    new-instance v5, Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f050002

    invoke-direct {v5, v6, v7, v8}, Lcom/android/musicvis/ScriptC_waveform;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    .line 189
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    .line 191
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v6, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v7, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    div-int/2addr v6, v7

    iput v6, v5, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    .line 192
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    .line 200
    new-instance v3, Landroid/renderscript/ProgramVertexFixedFunction$Builder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v3, v5}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 201
    .local v3, pvb:Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    invoke-virtual {v3}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    .line 202
    new-instance v5, Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v6}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .line 203
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    check-cast v5, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v5, v6}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V

    .line 204
    new-instance v2, Landroid/renderscript/Matrix4f;

    invoke-direct {v2}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 205
    .local v2, proj:Landroid/renderscript/Matrix4f;
    iget v5, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v6, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 206
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v5, v2}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 208
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPVBackground:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 210
    new-instance v5, Lcom/android/musicvis/ScriptField_Vertex;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/android/musicvis/ScriptField_Vertex;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    .line 213
    new-instance v1, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v5}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 214
    .local v1, meshBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v5}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 216
    sget-object v5, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v1, v5}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 219
    invoke-virtual {v1}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mCubeMesh:Landroid/renderscript/Mesh;

    .line 221
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v5}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    .line 223
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mVertexBuffer:Lcom/android/musicvis/ScriptField_Vertex;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->bind_gPoints(Lcom/android/musicvis/ScriptField_Vertex;)V

    .line 224
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->set_gPointBuffer(Landroid/renderscript/Allocation;)V

    .line 225
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mCubeMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->set_gCubeMesh(Landroid/renderscript/Mesh;)V

    .line 228
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    .line 231
    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/musicvis/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget v7, p0, Lcom/android/musicvis/GenericWaveRS;->mTexId:I

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mTexture:Landroid/renderscript/Allocation;

    .line 233
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mTexture:Landroid/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->set_gTlinetexture(Landroid/renderscript/Allocation;)V

    .line 238
    new-instance v4, Landroid/renderscript/Sampler$Builder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v4, v5}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 239
    .local v4, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 240
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 241
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v5}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 242
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v4, v5}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 243
    invoke-virtual {v4}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mSampler:Landroid/renderscript/Sampler;

    .line 245
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    iget-object v5, p0, Lcom/android/musicvis/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 246
    .local v0, builder:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    sget-object v5, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    sget-object v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v0, v5, v6, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    .line 249
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v5, v6, v9}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 251
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v6, p0, Lcom/android/musicvis/GenericWaveRS;->mPfBackground:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v5, v6}, Lcom/android/musicvis/ScriptC_waveform;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 253
    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    return-object v5
.end method

.method public resize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    .line 175
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v2, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam1:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/android/musicvis/GenericWaveRS;->mScaleParam0:I

    div-int/2addr v2, v3

    iput v2, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    .line 176
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 178
    .local v0, proj:Landroid/renderscript/Matrix4f;
    iget v1, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    iget v2, p0, Lcom/android/musicvis/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 179
    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 181
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_0
    return-void
.end method

.method public setOffset(FFII)V
    .locals 3
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    const/high16 v2, 0x4334

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    .line 259
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    .line 260
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    .line 266
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->start()V

    .line 269
    :cond_0
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 270
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 271
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    .line 277
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWave()V

    .line 281
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method updateWave()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/musicvis/GenericWaveRS;->mVisible:Z

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->update()V

    .line 293
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    .line 294
    invoke-virtual {p0}, Lcom/android/musicvis/GenericWaveRS;->updateWorldState()V

    goto :goto_0
.end method

.method protected updateWorldState()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gYRotation(F)V

    .line 299
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gIdle(I)V

    .line 300
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->waveCounter:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gWaveCounter(I)V

    .line 301
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mScript:Lcom/android/musicvis/ScriptC_waveform;

    iget-object v1, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v1, v1, Lcom/android/musicvis/GenericWaveRS$WorldState;->width:I

    invoke-virtual {v0, v1}, Lcom/android/musicvis/ScriptC_waveform;->set_gWidth(I)V

    .line 302
    return-void
.end method
