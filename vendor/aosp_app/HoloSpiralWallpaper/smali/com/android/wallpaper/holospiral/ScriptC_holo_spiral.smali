.class public Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_holo_spiral.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "holo_spiral"

.field private static final mExportFuncIdx_resize:I = 0x0

.field private static final mExportVarIdx_VertexColor_s_dummy:I = 0xe

.field private static final mExportVarIdx_gBackgroundMesh:I = 0x8

.field private static final mExportVarIdx_gFarPlane:I = 0xc

.field private static final mExportVarIdx_gInnerGeometry:I = 0x6

.field private static final mExportVarIdx_gNearPlane:I = 0xb

.field private static final mExportVarIdx_gOuterGeometry:I = 0x7

.field private static final mExportVarIdx_gPFBackground:I = 0x2

.field private static final mExportVarIdx_gPFGeometry:I = 0x3

.field private static final mExportVarIdx_gPSBackground:I = 0x4

.field private static final mExportVarIdx_gPSGeometry:I = 0x5

.field private static final mExportVarIdx_gPVBackground:I = 0x0

.field private static final mExportVarIdx_gPVGeometry:I = 0x1

.field private static final mExportVarIdx_gPointTexture:I = 0x9

.field private static final mExportVarIdx_gVSConstants:I = 0xd

.field private static final mExportVarIdx_gXOffset:I = 0xa


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_VertexColor_s_dummy:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

.field private mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gFarPlane:F

.field private mExportVar_gInnerGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_gNearPlane:F

.field private mExportVar_gOuterGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFGeometry:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPSGeometry:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPVGeometry:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPointTexture:Landroid/renderscript/Allocation;

.field private mExportVar_gVSConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

.field private mExportVar_gXOffset:F


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

    const-string v2, "holo_spiral"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__MESH:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->__F32:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public bind_VertexColor_s_dummy(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xe

    .line 272
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_VertexColor_s_dummy:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    .line 273
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gVSConstants(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xd

    .line 260
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gVSConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    .line 261
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_gBackgroundMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gFarPlane()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 254
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gInnerGeometry()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gNearPlane()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 239
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gOuterGeometry()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFGeometry()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPSBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPSGeometry()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVGeometry()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPointTexture()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gXOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 224
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_VertexColor_s_dummy()Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_VertexColor_s_dummy:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    return-object v0
.end method

.method public get_gBackgroundMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gFarPlane()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gFarPlane:F

    return v0
.end method

.method public get_gInnerGeometry()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gInnerGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gNearPlane()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gNearPlane:F

    return v0
.end method

.method public get_gOuterGeometry()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gOuterGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gPFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFGeometry()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFGeometry:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPSBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPSGeometry()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSGeometry:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPVBackground()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPVGeometry()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVGeometry:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPointTexture()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPointTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gVSConstants()Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gVSConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    return-object v0
.end method

.method public get_gXOffset()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gXOffset:F

    return v0
.end method

.method public invoke_resize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 283
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 284
    .local v0, resize_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 287
    return-void
.end method

.method public declared-synchronized set_gBackgroundMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 186
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gBackgroundMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gFarPlane(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 245
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 246
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gFarPlane:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gInnerGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 156
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gInnerGeometry:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gNearPlane(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 230
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 231
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gNearPlane:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gOuterGeometry(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 171
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gOuterGeometry:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 96
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFGeometry(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 111
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPFGeometry:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 126
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPSGeometry(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 141
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPSGeometry:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 66
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVGeometry(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 81
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPVGeometry:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPointTexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 201
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gPointTexture:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 216
    iput p1, p0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->mExportVar_gXOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
