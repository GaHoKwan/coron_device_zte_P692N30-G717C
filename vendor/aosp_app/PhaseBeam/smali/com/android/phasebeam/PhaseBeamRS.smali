.class public Lcom/android/phasebeam/PhaseBeamRS;
.super Ljava/lang/Object;
.source "PhaseBeamRS.java"


# static fields
.field public static final DOT_COUNT:I = 0x1c

.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBeamAllocation:Landroid/renderscript/Allocation;

.field private mBeamMesh:Landroid/renderscript/Mesh;

.field private mBeamParticles:Lcom/android/phasebeam/ScriptField_Particle;

.field private mDensityDPI:I

.field private mDotAllocation:Landroid/renderscript/Allocation;

.field private mDotMesh:Landroid/renderscript/Mesh;

.field private mDotParticles:Lcom/android/phasebeam/ScriptField_Particle;

.field mHeight:I

.field mInited:Z

.field private mPvConsts:Lcom/android/phasebeam/ScriptField_VpConsts;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRes:Landroid/content/res/Resources;

.field private mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

.field private mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "PhaseBeam"

    sput-object v0, Lcom/android/phasebeam/PhaseBeamRS;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mInited:Z

    return-void
.end method

.method private createBackgroundMesh()V
    .locals 20

    .prologue
    .line 138
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v10, meshData:Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f050002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 140
    .local v8, inputStream:Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 144
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v9           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 147
    .local v5, e:Ljava/io/IOException;
    :try_start_1
    sget-object v17, Lcom/android/phasebeam/PhaseBeamRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to load background mesh from csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .end local v5           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 157
    .local v11, meshDataSize:I
    new-instance v17, Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/android/phasebeam/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    .line 158
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v11, :cond_1

    .line 159
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 160
    .restart local v9       #line:Ljava/lang/String;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, values:[Ljava/lang/String;
    new-instance v17, Ljava/lang/Float;

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 162
    .local v15, xPos:F
    new-instance v17, Ljava/lang/Float;

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 163
    .local v16, yPos:F
    new-instance v17, Ljava/lang/Float;

    const/16 v18, 0x2

    aget-object v18, v14, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 164
    .local v13, red:F
    new-instance v17, Ljava/lang/Float;

    const/16 v18, 0x3

    aget-object v18, v14, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 165
    .local v6, green:F
    new-instance v17, Ljava/lang/Float;

    const/16 v18, 0x4

    aget-object v18, v14, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 166
    .local v4, blue:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

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

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

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

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 158
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 150
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

    .line 151
    :catch_1
    move-exception v5

    .line 152
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/phasebeam/PhaseBeamRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to close background mesh csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 151
    .end local v9           #line:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 152
    sget-object v17, Lcom/android/phasebeam/PhaseBeamRS;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Unable to close background mesh csv file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 149
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 150
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :goto_3
    throw v17

    .line 151
    :catch_3
    move-exception v5

    .line 152
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/phasebeam/PhaseBeamRS;->LOG_TAG:Ljava/lang/String;

    const-string v19, "Unable to close background mesh csv file."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 169
    .end local v5           #e:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v11       #meshDataSize:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->copyAll()V

    .line 171
    new-instance v3, Landroid/renderscript/Mesh$AllocationBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 172
    .local v3, backgroundBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    sget-object v17, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_gBackgroundMesh(Landroid/renderscript/Mesh;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phasebeam/PhaseBeamRS;->mVertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phasebeam/ScriptC_phasebeam;->bind_vertexColors(Lcom/android/phasebeam/ScriptField_VertexColor_s;)V

    .line 176
    return-void
.end method

.method private createProgramFragment()V
    .locals 6

    .prologue
    .line 211
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 212
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    const/high16 v5, 0x7f05

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 213
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v3

    .line 214
    .local v3, programFragmentBackground:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v4, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_fragBg(Landroid/renderscript/ProgramFragment;)V

    .line 216
    new-instance v1, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 217
    .local v1, builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050003

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 218
    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v1, v4}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 219
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 220
    .local v2, pf:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v4}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 221
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v4, v2}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_fragDots(Landroid/renderscript/ProgramFragment;)V

    .line 223
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 234
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 235
    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->bindProgramStore(Landroid/renderscript/ProgramStore;)V

    .line 236
    return-void
.end method

.method private createProgramRaster()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 227
    .local v0, builder:Landroid/renderscript/ProgramRaster$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramRaster$Builder;->setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    .line 229
    .local v1, pr:Landroid/renderscript/ProgramRaster;
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScriptGL;->bindProgramRaster(Landroid/renderscript/ProgramRaster;)V

    .line 230
    return-void
.end method

.method private createProgramVertex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 191
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 192
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050001

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 193
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v4}, Lcom/android/phasebeam/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v2

    .line 195
    .local v2, programVertexBackground:Landroid/renderscript/ProgramVertex;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v4, v2}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_vertBg(Landroid/renderscript/ProgramVertex;)V

    .line 197
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->updateProjectionMatrices()V

    .line 199
    new-instance v1, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 200
    .local v1, builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050004

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 201
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mPvConsts:Lcom/android/phasebeam/ScriptField_VpConsts;

    invoke-virtual {v4}, Landroid/renderscript/Script$FieldBase;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 202
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v4, v6}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 203
    invoke-virtual {v1}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v3

    .line 204
    .local v3, pvs:Landroid/renderscript/ProgramVertex;
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mPvConsts:Lcom/android/phasebeam/ScriptField_VpConsts;

    invoke-virtual {v4}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 205
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v4, v3}, Landroid/renderscript/RenderScriptGL;->bindProgramVertex(Landroid/renderscript/ProgramVertex;)V

    .line 206
    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v4, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_vertDots(Landroid/renderscript/ProgramVertex;)V

    .line 208
    return-void
.end method

.method private getProjectionNormalized(II)Landroid/renderscript/Matrix4f;
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 105
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 106
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 108
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 109
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 110
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 116
    :goto_0
    const/high16 v1, 0x4334

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 117
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 119
    const/high16 v1, -0x4080

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 120
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 122
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 123
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 124
    return-object v0

    .line 112
    .end local v2           #aspect:F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 113
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
    .line 179
    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v2, p1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 180
    .local v0, allocation:Landroid/renderscript/Allocation;
    return-object v0
.end method

.method private loadTextures()V
    .locals 2

    .prologue
    .line 184
    const v0, 0x7f020001

    invoke-direct {p0, v0}, Lcom/android/phasebeam/PhaseBeamRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotAllocation:Landroid/renderscript/Allocation;

    .line 185
    const/high16 v0, 0x7f02

    invoke-direct {p0, v0}, Lcom/android/phasebeam/PhaseBeamRS;->loadTexture(I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamAllocation:Landroid/renderscript/Allocation;

    .line 186
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_textureDot(Landroid/renderscript/Allocation;)V

    .line 187
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_textureBeam(Landroid/renderscript/Allocation;)V

    .line 188
    return-void
.end method

.method private updateProjectionMatrices()V
    .locals 5

    .prologue
    .line 128
    iget v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mWidth:I

    iget v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phasebeam/PhaseBeamRS;->getProjectionNormalized(II)Landroid/renderscript/Matrix4f;

    move-result-object v1

    .line 129
    .local v1, projNorm:Landroid/renderscript/Matrix4f;
    new-instance v0, Lcom/android/phasebeam/ScriptField_VpConsts$Item;

    invoke-direct {v0}, Lcom/android/phasebeam/ScriptField_VpConsts$Item;-><init>()V

    .line 130
    .local v0, i:Lcom/android/phasebeam/ScriptField_VpConsts$Item;
    iput-object v1, v0, Lcom/android/phasebeam/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 131
    iget v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDensityDPI:I

    int-to-float v2, v2

    const/high16 v3, 0x4370

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/phasebeam/ScriptField_VpConsts$Item;->scaleSize:F

    .line 132
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mPvConsts:Lcom/android/phasebeam/ScriptField_VpConsts;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phasebeam/ScriptField_VpConsts;->set(Lcom/android/phasebeam/ScriptField_VpConsts$Item;IZ)V

    .line 133
    return-void
.end method


# virtual methods
.method public init(ILandroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;II)V
    .locals 7
    .parameter "dpi"
    .parameter "rs"
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x1c

    const/4 v6, 0x1

    .line 58
    iget-boolean v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mInited:Z

    if-nez v2, :cond_0

    .line 59
    iput p1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDensityDPI:I

    .line 61
    iput-object p2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 62
    iput-object p3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    .line 64
    iput p4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mWidth:I

    .line 65
    iput p5, p0, Lcom/android/phasebeam/PhaseBeamRS;->mHeight:I

    .line 67
    new-instance v2, Lcom/android/phasebeam/ScriptField_Particle;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3, v4}, Lcom/android/phasebeam/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotParticles:Lcom/android/phasebeam/ScriptField_Particle;

    .line 68
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 69
    .local v0, smb2:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotParticles:Lcom/android/phasebeam/ScriptField_Particle;

    invoke-virtual {v2}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 70
    sget-object v2, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0, v2}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 71
    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotMesh:Landroid/renderscript/Mesh;

    .line 73
    new-instance v2, Lcom/android/phasebeam/ScriptField_Particle;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3, v4}, Lcom/android/phasebeam/ScriptField_Particle;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamParticles:Lcom/android/phasebeam/ScriptField_Particle;

    .line 74
    new-instance v1, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 75
    .local v1, smb3:Landroid/renderscript/Mesh$AllocationBuilder;
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamParticles:Lcom/android/phasebeam/ScriptField_Particle;

    invoke-virtual {v2}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 76
    sget-object v2, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v1, v2}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 77
    invoke-virtual {v1}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamMesh:Landroid/renderscript/Mesh;

    .line 79
    new-instance v2, Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v4, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050005

    invoke-direct {v2, v3, v4, v5}, Lcom/android/phasebeam/ScriptC_phasebeam;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    .line 80
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v2, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_dotMesh(Landroid/renderscript/Mesh;)V

    .line 81
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamMesh:Landroid/renderscript/Mesh;

    invoke-virtual {v2, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_beamMesh(Landroid/renderscript/Mesh;)V

    .line 82
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDotParticles:Lcom/android/phasebeam/ScriptField_Particle;

    invoke-virtual {v2, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->bind_dotParticles(Lcom/android/phasebeam/ScriptField_Particle;)V

    .line 83
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mBeamParticles:Lcom/android/phasebeam/ScriptField_Particle;

    invoke-virtual {v2, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->bind_beamParticles(Lcom/android/phasebeam/ScriptField_Particle;)V

    .line 85
    new-instance v2, Lcom/android/phasebeam/ScriptField_VpConsts;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v3, v6}, Lcom/android/phasebeam/ScriptField_VpConsts;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mPvConsts:Lcom/android/phasebeam/ScriptField_VpConsts;

    .line 87
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->createProgramVertex()V

    .line 88
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->createProgramRaster()V

    .line 89
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->createProgramFragmentStore()V

    .line 90
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->createProgramFragment()V

    .line 91
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->createBackgroundMesh()V

    .line 92
    invoke-direct {p0}, Lcom/android/phasebeam/PhaseBeamRS;->loadTextures()V

    .line 94
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    iget v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mDensityDPI:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_densityDPI(F)V

    .line 96
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v2, v3}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 98
    iget-object v2, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v2}, Lcom/android/phasebeam/ScriptC_phasebeam;->invoke_positionParticles()V

    .line 99
    iput-boolean v6, p0, Lcom/android/phasebeam/PhaseBeamRS;->mInited:Z

    .line 101
    .end local v0           #smb2:Landroid/renderscript/Mesh$AllocationBuilder;
    .end local v1           #smb3:Landroid/renderscript/Mesh$AllocationBuilder;
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 252
    return-void
.end method

.method public setOffset(FFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v0, p1}, Lcom/android/phasebeam/ScriptC_phasebeam;->set_xOffset(F)V

    .line 248
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/phasebeam/PhaseBeamRS;->mScript:Lcom/android/phasebeam/ScriptC_phasebeam;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 240
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phasebeam/PhaseBeamRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 244
    return-void
.end method
