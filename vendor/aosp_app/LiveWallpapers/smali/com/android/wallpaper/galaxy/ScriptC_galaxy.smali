.class public Lcom/android/wallpaper/galaxy/ScriptC_galaxy;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_galaxy.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "galaxy"

.field private static final mExportFuncIdx_initParticles:I = 0x0

.field private static final mExportVarIdx_Particles:I = 0xb

.field private static final mExportVarIdx_gIsPreview:I = 0x1

.field private static final mExportVarIdx_gPFBackground:I = 0x2

.field private static final mExportVarIdx_gPFStars:I = 0x3

.field private static final mExportVarIdx_gPSLights:I = 0x6

.field private static final mExportVarIdx_gPVBkProj:I = 0x5

.field private static final mExportVarIdx_gPVStars:I = 0x4

.field private static final mExportVarIdx_gParticlesMesh:I = 0xa

.field private static final mExportVarIdx_gTFlares:I = 0x8

.field private static final mExportVarIdx_gTLight1:I = 0x9

.field private static final mExportVarIdx_gTSpace:I = 0x7

.field private static final mExportVarIdx_gXOffset:I = 0x0

.field private static final mExportVarIdx_vpConstants:I = 0xc


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_Particles:Lcom/android/wallpaper/galaxy/ScriptField_Particle;

.field private mExportVar_gIsPreview:I

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFStars:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSLights:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBkProj:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPVStars:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gParticlesMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gTFlares:Landroid/renderscript/Allocation;

.field private mExportVar_gTLight1:Landroid/renderscript/Allocation;

.field private mExportVar_gTSpace:Landroid/renderscript/Allocation;

.field private mExportVar_gXOffset:F

.field private mExportVar_vpConstants:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;


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

    const-string v2, "galaxy"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__ALLOCATION:Landroid/renderscript/Element;

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->__MESH:Landroid/renderscript/Element;

    .line 49
    return-void
.end method


# virtual methods
.method public bind_Particles(Lcom/android/wallpaper/galaxy/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xb

    .line 233
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_Particles:Lcom/android/wallpaper/galaxy/ScriptField_Particle;

    .line 234
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vpConstants(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 245
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_vpConstants:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    .line 246
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_gIsPreview()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPSLights()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVBkProj()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gParticlesMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 227
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTFlares()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 197
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTLight1()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTSpace()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gXOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_Particles()Lcom/android/wallpaper/galaxy/ScriptField_Particle;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_Particles:Lcom/android/wallpaper/galaxy/ScriptField_Particle;

    return-object v0
.end method

.method public get_gIsPreview()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gIsPreview:I

    return v0
.end method

.method public get_gPFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFStars()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFStars:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPSLights()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPSLights:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPVBkProj()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVBkProj:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPVStars()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVStars:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gParticlesMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gParticlesMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gTFlares()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTFlares:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTLight1()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTLight1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTSpace()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTSpace:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gXOffset()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gXOffset:F

    return v0
.end method

.method public get_vpConstants()Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_vpConstants:Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;

    return-object v0
.end method

.method public invoke_initParticles()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 257
    return-void
.end method

.method public declared-synchronized set_gIsPreview(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 84
    iput p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gIsPreview:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 99
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFStars(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 114
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPFStars:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPSLights(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 159
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPSLights:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVBkProj(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 144
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVBkProj:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVStars(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 129
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gPVStars:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gParticlesMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 218
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 219
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gParticlesMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTFlares(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 189
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTFlares:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTLight1(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 204
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTLight1:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTSpace(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 174
    iput-object p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gTSpace:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 69
    iput p1, p0, Lcom/android/wallpaper/galaxy/ScriptC_galaxy;->mExportVar_gXOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
