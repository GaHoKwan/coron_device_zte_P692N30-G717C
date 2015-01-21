.class public Lcom/android/noisefield/ScriptC_noisefield;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_noisefield.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "noisefield"

.field private static final mExportFuncIdx_positionParticles:I = 0x0

.field private static final mExportFuncIdx_touch:I = 0x1

.field private static final mExportVarIdx_densityDPI:I = 0xd

.field private static final mExportVarIdx_dotMesh:I = 0xb

.field private static final mExportVarIdx_dotParticles:I = 0x9

.field private static final mExportVarIdx_fragBg:I = 0x3

.field private static final mExportVarIdx_fragDots:I = 0x5

.field private static final mExportVarIdx_gBackgroundMesh:I = 0xc

.field private static final mExportVarIdx_storeAdd:I = 0x7

.field private static final mExportVarIdx_storeAlpha:I = 0x6

.field private static final mExportVarIdx_textureDot:I = 0x0

.field private static final mExportVarIdx_textureVignette:I = 0x1

.field private static final mExportVarIdx_touchDown:I = 0xe

.field private static final mExportVarIdx_vertBg:I = 0x2

.field private static final mExportVarIdx_vertDots:I = 0x4

.field private static final mExportVarIdx_vertexColors:I = 0xa

.field private static final mExportVarIdx_vpConstants:I = 0x8


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __BOOLEAN:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_densityDPI:F

.field private mExportVar_dotMesh:Landroid/renderscript/Mesh;

.field private mExportVar_dotParticles:Lcom/android/noisefield/ScriptField_Particle;

.field private mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

.field private mExportVar_fragDots:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

.field private mExportVar_storeAdd:Landroid/renderscript/ProgramStore;

.field private mExportVar_storeAlpha:Landroid/renderscript/ProgramStore;

.field private mExportVar_textureDot:Landroid/renderscript/Allocation;

.field private mExportVar_textureVignette:Landroid/renderscript/Allocation;

.field private mExportVar_touchDown:Z

.field private mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertDots:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

.field private mExportVar_vpConstants:Lcom/android/noisefield/ScriptField_VpConsts;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 5
    .parameter "rs"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "noisefield"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/noisefield/ScriptC_noisefield;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__ALLOCATION:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__MESH:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__F32:Landroid/renderscript/Element;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_touchDown:Z

    .line 49
    invoke-static {p1}, Landroid/renderscript/Element;->BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__BOOLEAN:Landroid/renderscript/Element;

    .line 50
    return-void
.end method


# virtual methods
.method public bind_dotParticles(Lcom/android/noisefield/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x9

    .line 201
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_dotParticles:Lcom/android/noisefield/ScriptField_Particle;

    .line 202
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vertexColors(Lcom/android/noisefield/ScriptField_VertexColor_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xa

    .line 213
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    .line 214
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vpConstants(Lcom/android/noisefield/ScriptField_VpConsts;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 189
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vpConstants:Lcom/android/noisefield/ScriptField_VpConsts;

    .line 190
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_densityDPI()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 264
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_dotMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 234
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragDots()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBackgroundMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 249
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_storeAdd()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_storeAlpha()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureDot()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureVignette()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_touchDown()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 285
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertDots()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_densityDPI()F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_densityDPI:F

    return v0
.end method

.method public get_dotMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_dotMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_dotParticles()Lcom/android/noisefield/ScriptField_Particle;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_dotParticles:Lcom/android/noisefield/ScriptField_Particle;

    return-object v0
.end method

.method public get_fragBg()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_fragDots()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_fragDots:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gBackgroundMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_storeAdd()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_storeAdd:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_storeAlpha()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_storeAlpha:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_textureDot()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_textureDot:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_textureVignette()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_textureVignette:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_touchDown()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_touchDown:Z

    return v0
.end method

.method public get_vertBg()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertDots()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertDots:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertexColors()Lcom/android/noisefield/ScriptField_VertexColor_s;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertexColors:Lcom/android/noisefield/ScriptField_VertexColor_s;

    return-object v0
.end method

.method public get_vpConstants()Lcom/android/noisefield/ScriptField_VpConsts;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vpConstants:Lcom/android/noisefield/ScriptField_VpConsts;

    return-object v0
.end method

.method public invoke_positionParticles()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 291
    return-void
.end method

.method public invoke_touch(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 295
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 296
    .local v0, touch_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 299
    return-void
.end method

.method public declared-synchronized set_densityDPI(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 255
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 256
    iput p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_densityDPI:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_dotMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 225
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 226
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_dotMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fragBg(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 115
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fragDots(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 145
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_fragDots:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gBackgroundMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 240
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 241
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_storeAdd(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 175
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_storeAdd:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_storeAlpha(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 160
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_storeAlpha:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureDot(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 70
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_textureDot:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureVignette(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 85
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_textureVignette:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_touchDown(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 276
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/noisefield/ScriptC_noisefield;->__rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 277
    iput-boolean p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_touchDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/noisefield/ScriptC_noisefield;->__rs_fp_BOOLEAN:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vertBg(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 100
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vertDots(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 130
    iput-object p1, p0, Lcom/android/noisefield/ScriptC_noisefield;->mExportVar_vertDots:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
