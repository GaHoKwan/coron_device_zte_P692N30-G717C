.class public Lcom/android/noisefield/NoiseFieldRS;
.super Ljava/lang/Object;
.source "NoiseFieldRS.java"


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDensityDPI:I

.field private mDotAllocation:Landroid/renderscript/Allocation;

.field private mDotMesh:Landroid/renderscript/Mesh;

.field private mDotParticles:Lcom/android/noisefield/ScriptField_Particle;

.field private mHeight:I

.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mPvConsts:Lcom/android/noisefield/ScriptField_VpConsts;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRes:Landroid/content/res/Resources;

.field private mScript:Lcom/android/noisefield/ScriptC_noisefield;

.field private mTouchDown:Z

.field private mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "NoiseField"

    sput-object v0, Lcom/android/noisefield/NoiseFieldRS;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/noisefield/NoiseFieldRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private createBackgroundMesh()V
    .locals 20

    .prologue
    .line 123
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v10, meshData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f050002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 125
    .local v8, inputStream:Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 129
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v9           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 132
    .local v5, e:Ljava/io/IOException;
    :try_start_1
    sget-object v17, Lcom/android/noisefield/NoiseFieldRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to load background mesh from csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .end local v5           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 142
    .local v11, meshDataSize:I
    new-instance v17, Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/android/noisefield/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    .line 143
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v11, :cond_1

    .line 144
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 145
    .restart local v9       #line:Ljava/lang/String;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, values:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 147
    .local v15, xPos:F
    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 148
    .local v16, yPos:F
    const/16 v17, 0x2

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 149
    .local v13, red:F
    const/16 v17, 0x3

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 150
    .local v6, green:F
    const/16 v17, 0x4

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 151
    .local v4, blue:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    new-instance v18, Landroid/renderscript/Float3;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Landroid/renderscript/Float3;-><init>(FFF)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/noisefield/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    new-instance v18, Landroid/renderscript/Float4;

    const/high16 v19, 0x3f80

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v13, v6, v4, v1}, Landroid/renderscript/Float4;-><init>(FFFF)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/noisefield/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 135
    .end local v4           #blue:F
    .end local v6           #green:F
    .end local v7           #i:I
    .end local v11           #meshDataSize:I
    .end local v13           #red:F
    .end local v14           #values:[Ljava/lang/String;
    .end local v15           #xPos:F
    .end local v16           #yPos:F
    :cond_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 136
    :catch_1
    move-exception v5

    .line 137
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/noisefield/NoiseFieldRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to close background mesh csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 136
    .end local v9           #line:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 137
    sget-object v17, Lcom/android/noisefield/NoiseFieldRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to close background mesh csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 135
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :goto_3
    throw v17

    .line 136
    :catch_3
    move-exception v5

    .line 137
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/noisefield/NoiseFieldRS;->LOG_TAG:Ljava/lang/String;

    const-string v19, "Unable to close background mesh csv file."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 154
    .end local v5           #e:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v11       #meshDataSize:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/noisefield/ScriptField_VertexColor_s;->copyAll()V

    .line 156
    new-instance v3, Landroid/renderscript/Mesh$AllocationBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 157
    .local v3, backgroundBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    sget-object v17, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/noisefield/ScriptC_noisefield;->set_gBackgroundMesh(Landroid/renderscript/Mesh;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/noisefield/NoiseFieldRS;->mVertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/noisefield/ScriptC_noisefield;->bind_vertexColors(Lcom/android/noisefield/ScriptField_VertexColor_s;)V

    .line 161
    return-void
.end method

.method private createProgramFragment()V
    .locals 6

    .prologue
    .line 195
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 196
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    const/high16 v5, 0x7f05

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 197
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v3

    .line 198
    .local v3, programFragmentBackground:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v4, v3}, Lcom/android/noisefield/ScriptC_noisefield;->set_fragBg(Landroid/renderscript/ProgramFragment;)V

    .line 200
    new-instance v1, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 201
    .local v1, builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050004

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 202
    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v1, v4}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 203
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 204
    .local v2, pf:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v4}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 205
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v4, v2}, Lcom/android/noisefield/ScriptC_noisefield;->set_fragDots(Landroid/renderscript/ProgramFragment;)V

    .line 206
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 217
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 218
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->bindProgramStore(Landroid/renderscript/ProgramStore;)V

    .line 219
    return-void
.end method

.method private createProgramRaster()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 210
    .local v0, builder:Landroid/renderscript/ProgramRaster$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;->setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    .line 212
    .local v1, pr:Landroid/renderscript/ProgramRaster;
    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramRaster(Landroid/renderscript/ProgramRaster;)V

    .line 213
    return-void
.end method

.method private createProgramVertex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 174
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 175
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050001

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 176
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v4}, Lcom/android/noisefield/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v2

    .line 178
    .local v2, programVertexBackground:Landroid/renderscript/ProgramVertex;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v4, v2}, Lcom/android/noisefield/ScriptC_noisefield;->set_vertBg(Landroid/renderscript/ProgramVertex;)V

    .line 180
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->updateProjectionMatrices()V

    .line 182
    new-instance v1, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 183
    .local v1, builder:Landroid/renderscript/ProgramVertex$Builder;
    new-instance v1, Landroid/renderscript/ProgramVertex$Builder;

    .end local v1           #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 184
    .restart local v1       #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050005

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 185
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mPvConsts:Lcom/android/noisefield/ScriptField_VpConsts;

    invoke-virtual {v4}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 186
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v4, v6}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 188
    invoke-virtual {v1}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v3

    .line 189
    .local v3, pvs:Landroid/renderscript/ProgramVertex;
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mPvConsts:Lcom/android/noisefield/ScriptField_VpConsts;

    invoke-virtual {v4}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 190
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v4, v3}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 191
    iget-object v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v4, v3}, Lcom/android/noisefield/ScriptC_noisefield;->set_vertDots(Landroid/renderscript/ProgramVertex;)V

    .line 192
    return-void
.end method

.method private getProjectionNormalized(II)Landroid/renderscript/Matrix4f;
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 90
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 91
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 93
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 94
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 95
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 101
    :goto_0
    const/high16 v1, 0x4334

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 102
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 104
    const/high16 v1, -0x4080

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 105
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 107
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 108
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 109
    return-object v0

    .line 97
    .end local v2           #aspect:F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 98
    .restart local v2       #aspect:F
    const/high16 v4, -0x4100

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
    .line 164
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 165
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextures()V
    .locals 2

    .prologue
    .line 169
    const v0, 0x7f020001

    invoke-direct {p0, v0}, Lcom/android/noisefield/NoiseFieldRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotAllocation:Landroid/renderscript/Allocation;

    .line 170
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/noisefield/ScriptC_noisefield;->set_textureDot(Landroid/renderscript/Allocation;)V

    .line 171
    return-void
.end method

.method private updateProjectionMatrices()V
    .locals 5

    .prologue
    .line 113
    iget v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mWidth:I

    iget v3, p0, Lcom/android/noisefield/NoiseFieldRS;->mHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/noisefield/NoiseFieldRS;->getProjectionNormalized(II)Landroid/renderscript/Matrix4f;

    move-result-object v1

    .line 114
    .local v1, projNorm:Landroid/renderscript/Matrix4f;
    new-instance v0, Lcom/android/noisefield/ScriptField_VpConsts$Item;

    invoke-direct {v0}, Lcom/android/noisefield/ScriptField_VpConsts$Item;-><init>()V

    .line 115
    .local v0, i:Lcom/android/noisefield/ScriptField_VpConsts$Item;
    iput-object v1, v0, Lcom/android/noisefield/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 116
    iget v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mDensityDPI:I

    int-to-float v2, v2

    const/high16 v3, 0x4370

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/noisefield/ScriptField_VpConsts$Item;->scaleSize:F

    .line 117
    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mPvConsts:Lcom/android/noisefield/ScriptField_VpConsts;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/noisefield/ScriptField_VpConsts;->set(Lcom/android/noisefield/ScriptField_VpConsts$Item;IZ)V

    .line 118
    return-void
.end method


# virtual methods
.method public init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V
    .locals 5
    .parameter "dpi"
    .parameter "rs"
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/noisefield/NoiseFieldRS;->mDensityDPI:I

    .line 54
    iput-object p2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 55
    iput-object p3, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    .line 57
    iput p4, p0, Lcom/android/noisefield/NoiseFieldRS;->mWidth:I

    .line 58
    iput p5, p0, Lcom/android/noisefield/NoiseFieldRS;->mHeight:I

    .line 60
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 61
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 63
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 65
    .local v0, smb2:Landroid/renderscript/Mesh$AllocationBuilder;
    new-instance v1, Lcom/android/noisefield/ScriptField_Particle;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v3, 0x53

    invoke-direct {v1, v2, v3}, Lcom/android/noisefield/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotParticles:Lcom/android/noisefield/ScriptField_Particle;

    .line 66
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotParticles:Lcom/android/noisefield/ScriptField_Particle;

    invoke-virtual {v1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 68
    sget-object v1, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0, v1}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 69
    new-instance v1, Lcom/android/noisefield/ScriptC_noisefield;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/noisefield/NoiseFieldRS;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f050003

    invoke-direct {v1, v2, v3, v4}, Lcom/android/noisefield/ScriptC_noisefield;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    .line 71
    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v1

    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotMesh:Landroid/renderscript/Mesh;

    .line 72
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v1, v2}, Lcom/android/noisefield/ScriptC_noisefield;->set_dotMesh(Landroid/renderscript/Mesh;)V

    .line 73
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mDotParticles:Lcom/android/noisefield/ScriptField_Particle;

    invoke-virtual {v1, v2}, Lcom/android/noisefield/ScriptC_noisefield;->bind_dotParticles(Lcom/android/noisefield/ScriptField_Particle;)V

    .line 75
    new-instance v1, Lcom/android/noisefield/ScriptField_VpConsts;

    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/noisefield/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mPvConsts:Lcom/android/noisefield/ScriptField_VpConsts;

    .line 77
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->createProgramVertex()V

    .line 78
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->createProgramRaster()V

    .line 79
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->createProgramFragmentStore()V

    .line 80
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->createProgramFragment()V

    .line 81
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->createBackgroundMesh()V

    .line 82
    invoke-direct {p0}, Lcom/android/noisefield/NoiseFieldRS;->loadTextures()V

    .line 84
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mDensityDPI:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/noisefield/ScriptC_noisefield;->set_densityDPI(F)V

    .line 85
    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v1}, Lcom/android/noisefield/ScriptC_noisefield;->invoke_positionParticles()V

    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 235
    .local v0, act:I
    if-eq v0, v3, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 236
    :cond_0
    iget-boolean v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    if-eqz v2, :cond_1

    .line 237
    iput-boolean v4, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    .line 238
    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget-boolean v3, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    invoke-virtual {v2, v3}, Lcom/android/noisefield/ScriptC_noisefield;->set_touchDown(Z)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 244
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 246
    .local v1, pcount:I
    iget-boolean v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    if-nez v2, :cond_4

    .line 247
    iput-boolean v3, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    .line 248
    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    iget-boolean v3, p0, Lcom/android/noisefield/NoiseFieldRS;->mTouchDown:Z

    invoke-virtual {v2, v3}, Lcom/android/noisefield/ScriptC_noisefield;->set_touchDown(Z)V

    .line 250
    :cond_4
    if-lez v1, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/noisefield/ScriptC_noisefield;->invoke_touch(FF)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 231
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/noisefield/NoiseFieldRS;->mScript:Lcom/android/noisefield/ScriptC_noisefield;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 223
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/noisefield/NoiseFieldRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 227
    return-void
.end method
