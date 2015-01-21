.class public Lcom/android/phasebeam/ScriptC_phasebeam;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_phasebeam.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "phasebeam"

.field private static final mExportFuncIdx_positionParticles:I = 0x0

.field private static final mExportVarIdx_beamMesh:I = 0xb

.field private static final mExportVarIdx_beamParticles:I = 0x9

.field private static final mExportVarIdx_densityDPI:I = 0xd

.field private static final mExportVarIdx_dotMesh:I = 0xa

.field private static final mExportVarIdx_dotParticles:I = 0x8

.field private static final mExportVarIdx_fragBg:I = 0x3

.field private static final mExportVarIdx_fragDots:I = 0x5

.field private static final mExportVarIdx_gBackgroundMesh:I = 0xc

.field private static final mExportVarIdx_textureBeam:I = 0x1

.field private static final mExportVarIdx_textureDot:I = 0x0

.field private static final mExportVarIdx_vertBg:I = 0x2

.field private static final mExportVarIdx_vertDots:I = 0x4

.field private static final mExportVarIdx_vertexColors:I = 0x7

.field private static final mExportVarIdx_vpConstants:I = 0x6

.field private static final mExportVarIdx_xOffset:I = 0xe


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_beamMesh:Landroid/renderscript/Mesh;

.field private mExportVar_beamParticles:Lcom/android/phasebeam/ScriptField_Particle;

.field private mExportVar_densityDPI:F

.field private mExportVar_dotMesh:Landroid/renderscript/Mesh;

.field private mExportVar_dotParticles:Lcom/android/phasebeam/ScriptField_Particle;

.field private mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

.field private mExportVar_fragDots:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

.field private mExportVar_textureBeam:Landroid/renderscript/Allocation;

.field private mExportVar_textureDot:Landroid/renderscript/Allocation;

.field private mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertDots:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

.field private mExportVar_vpConstants:Lcom/android/phasebeam/ScriptField_VpConsts;

.field private mExportVar_xOffset:F


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

    const-string v2, "phasebeam"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phasebeam/ScriptC_phasebeam;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->__ALLOCATION:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->__MESH:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->__F32:Landroid/renderscript/Element;

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_xOffset:F

    .line 48
    return-void
.end method


# virtual methods
.method public bind_beamParticles(Lcom/android/phasebeam/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x9

    .line 189
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_beamParticles:Lcom/android/phasebeam/ScriptField_Particle;

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

.method public bind_dotParticles(Lcom/android/phasebeam/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 177
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_dotParticles:Lcom/android/phasebeam/ScriptField_Particle;

    .line 178
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vertexColors(Lcom/android/phasebeam/ScriptField_VertexColor_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x7

    .line 165
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    .line 166
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vpConstants(Lcom/android/phasebeam/ScriptField_VpConsts;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x6

    .line 153
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vpConstants:Lcom/android/phasebeam/ScriptField_VpConsts;

    .line 154
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_beamMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 225
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_densityDPI()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 255
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_dotMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 210
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragDots()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBackgroundMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 240
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureBeam()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureDot()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertDots()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_xOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 270
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_beamMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_beamMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_beamParticles()Lcom/android/phasebeam/ScriptField_Particle;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_beamParticles:Lcom/android/phasebeam/ScriptField_Particle;

    return-object v0
.end method

.method public get_densityDPI()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_densityDPI:F

    return v0
.end method

.method public get_dotMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_dotMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_dotParticles()Lcom/android/phasebeam/ScriptField_Particle;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_dotParticles:Lcom/android/phasebeam/ScriptField_Particle;

    return-object v0
.end method

.method public get_fragBg()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_fragDots()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_fragDots:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gBackgroundMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_textureBeam()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_textureBeam:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_textureDot()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_textureDot:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_vertBg()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertDots()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertDots:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertexColors()Lcom/android/phasebeam/ScriptField_VertexColor_s;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertexColors:Lcom/android/phasebeam/ScriptField_VertexColor_s;

    return-object v0
.end method

.method public get_vpConstants()Lcom/android/phasebeam/ScriptField_VpConsts;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vpConstants:Lcom/android/phasebeam/ScriptField_VpConsts;

    return-object v0
.end method

.method public get_xOffset()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_xOffset:F

    return v0
.end method

.method public invoke_positionParticles()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 276
    return-void
.end method

.method public declared-synchronized set_beamMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 217
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_beamMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_densityDPI(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 246
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 247
    iput p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_densityDPI:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_dotMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 202
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_dotMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fragBg(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 109
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fragDots(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 139
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_fragDots:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gBackgroundMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 231
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 232
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureBeam(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 79
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_textureBeam:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureDot(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 64
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_textureDot:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vertBg(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 94
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vertDots(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 124
    iput-object p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_vertDots:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_xOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 262
    iput p1, p0, Lcom/android/phasebeam/ScriptC_phasebeam;->mExportVar_xOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
