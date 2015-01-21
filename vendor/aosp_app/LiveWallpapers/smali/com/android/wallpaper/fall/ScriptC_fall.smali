.class public Lcom/android/wallpaper/fall/ScriptC_fall;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_fall.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "fall"

.field private static final mExportFuncIdx_addDrop:I = 0x1

.field private static final mExportFuncIdx_initLeaves:I = 0x0

.field private static final mExportVarIdx_g_Constants:I = 0xe

.field private static final mExportVarIdx_g_PFBackground:I = 0xa

.field private static final mExportVarIdx_g_PFSBackground:I = 0xf

.field private static final mExportVarIdx_g_PFSLeaf:I = 0x9

.field private static final mExportVarIdx_g_PFSky:I = 0x8

.field private static final mExportVarIdx_g_PVSky:I = 0x7

.field private static final mExportVarIdx_g_PVWater:I = 0x6

.field private static final mExportVarIdx_g_TLeaves:I = 0xb

.field private static final mExportVarIdx_g_TRiverbed:I = 0xc

.field private static final mExportVarIdx_g_WaterMesh:I = 0xd

.field private static final mExportVarIdx_g_glHeight:I = 0x1

.field private static final mExportVarIdx_g_glWidth:I = 0x0

.field private static final mExportVarIdx_g_meshHeight:I = 0x3

.field private static final mExportVarIdx_g_meshWidth:I = 0x2

.field private static final mExportVarIdx_g_rotate:I = 0x5

.field private static final mExportVarIdx_g_xOffset:I = 0x4


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

.field private mExportVar_g_Constants:Lcom/android/wallpaper/fall/ScriptField_Constants;

.field private mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_g_PFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_g_PFSLeaf:Landroid/renderscript/ProgramStore;

.field private mExportVar_g_PFSky:Landroid/renderscript/ProgramFragment;

.field private mExportVar_g_PVSky:Landroid/renderscript/ProgramVertex;

.field private mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

.field private mExportVar_g_TLeaves:Landroid/renderscript/Allocation;

.field private mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

.field private mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

.field private mExportVar_g_glHeight:F

.field private mExportVar_g_glWidth:F

.field private mExportVar_g_meshHeight:F

.field private mExportVar_g_meshWidth:F

.field private mExportVar_g_rotate:F

.field private mExportVar_g_xOffset:F


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

    const-string v2, "fall"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wallpaper/fall/ScriptC_fall;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->__MESH:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public bind_g_Constants(Lcom/android/wallpaper/fall/ScriptField_Constants;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xe

    .line 275
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_Constants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    .line 276
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_g_PFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 224
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PFSBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 296
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PFSLeaf()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PFSky()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PVSky()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_PVWater()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_TLeaves()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 239
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_TRiverbed()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 254
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_WaterMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 269
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_glHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_glWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_meshHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_meshWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_rotate()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_g_xOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_g_Constants()Lcom/android/wallpaper/fall/ScriptField_Constants;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_Constants:Lcom/android/wallpaper/fall/ScriptField_Constants;

    return-object v0
.end method

.method public get_g_PFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_g_PFSBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_g_PFSLeaf()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSLeaf:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_g_PFSky()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSky:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_g_PVSky()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVSky:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_g_PVWater()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_g_TLeaves()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TLeaves:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_TRiverbed()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_WaterMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_g_glHeight()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glHeight:F

    return v0
.end method

.method public get_g_glWidth()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glWidth:F

    return v0
.end method

.method public get_g_meshHeight()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshHeight:F

    return v0
.end method

.method public get_g_meshWidth()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshWidth:F

    return v0
.end method

.method public get_g_rotate()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_rotate:F

    return v0
.end method

.method public get_g_xOffset()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_xOffset:F

    return v0
.end method

.method public invoke_addDrop(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 306
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 307
    .local v0, addDrop_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 308
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 310
    return-void
.end method

.method public invoke_initLeaves()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 302
    return-void
.end method

.method public declared-synchronized set_g_PFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 216
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFBackground:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_g_PFSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 287
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 288
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSBackground:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_PFSLeaf(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 201
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSLeaf:Landroid/renderscript/ProgramStore;
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

.method public declared-synchronized set_g_PFSky(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 186
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PFSky:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_g_PVSky(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 171
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVSky:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_g_PVWater(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 156
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_PVWater:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_g_TLeaves(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 230
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 231
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TLeaves:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_g_TRiverbed(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 245
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 246
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_TRiverbed:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_g_WaterMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 261
    iput-object p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_WaterMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_g_glHeight(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 81
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glHeight:F
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

.method public declared-synchronized set_g_glWidth(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 66
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_glWidth:F
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

.method public declared-synchronized set_g_meshHeight(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 111
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshHeight:F
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

.method public declared-synchronized set_g_meshWidth(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 96
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_meshWidth:F
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

.method public declared-synchronized set_g_rotate(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 141
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_rotate:F
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

.method public declared-synchronized set_g_xOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 126
    iput p1, p0, Lcom/android/wallpaper/fall/ScriptC_fall;->mExportVar_g_xOffset:F
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
