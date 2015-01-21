.class public Lcom/android/wallpaper/grass/ScriptC_grass;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_grass.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "grass"

.field private static final mExportFuncIdx_updateBlades:I = 0x0

.field private static final mExportVarIdx_Blades:I = 0x14

.field private static final mExportVarIdx_Verticies:I = 0x15

.field private static final mExportVarIdx_gAfternoon:I = 0x7

.field private static final mExportVarIdx_gBladesCount:I = 0x0

.field private static final mExportVarIdx_gBladesMesh:I = 0x13

.field private static final mExportVarIdx_gDawn:I = 0x5

.field private static final mExportVarIdx_gDusk:I = 0x8

.field private static final mExportVarIdx_gHeight:I = 0x3

.field private static final mExportVarIdx_gIndexCount:I = 0x1

.field private static final mExportVarIdx_gIsPreview:I = 0x9

.field private static final mExportVarIdx_gMorning:I = 0x6

.field private static final mExportVarIdx_gPFBackground:I = 0xb

.field private static final mExportVarIdx_gPFGrass:I = 0xc

.field private static final mExportVarIdx_gPSBackground:I = 0xd

.field private static final mExportVarIdx_gPVBackground:I = 0xa

.field private static final mExportVarIdx_gTAa:I = 0x12

.field private static final mExportVarIdx_gTNight:I = 0xe

.field private static final mExportVarIdx_gTSky:I = 0x11

.field private static final mExportVarIdx_gTSunrise:I = 0x10

.field private static final mExportVarIdx_gTSunset:I = 0xf

.field private static final mExportVarIdx_gWidth:I = 0x2

.field private static final mExportVarIdx_gXOffset:I = 0x4


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

.field private mExportVar_Blades:Lcom/android/wallpaper/grass/ScriptField_Blade;

.field private mExportVar_Verticies:Lcom/android/wallpaper/grass/ScriptField_Vertex;

.field private mExportVar_gAfternoon:F

.field private mExportVar_gBladesCount:I

.field private mExportVar_gBladesMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gDawn:F

.field private mExportVar_gDusk:F

.field private mExportVar_gHeight:I

.field private mExportVar_gIndexCount:I

.field private mExportVar_gIsPreview:I

.field private mExportVar_gMorning:F

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFGrass:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gTAa:Landroid/renderscript/Allocation;

.field private mExportVar_gTNight:Landroid/renderscript/Allocation;

.field private mExportVar_gTSky:Landroid/renderscript/Allocation;

.field private mExportVar_gTSunrise:Landroid/renderscript/Allocation;

.field private mExportVar_gTSunset:Landroid/renderscript/Allocation;

.field private mExportVar_gWidth:I

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

    const-string v2, "grass"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wallpaper/grass/ScriptC_grass;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__I32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__F32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__ALLOCATION:Landroid/renderscript/Element;

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->__MESH:Landroid/renderscript/Element;

    .line 49
    return-void
.end method


# virtual methods
.method public bind_Blades(Lcom/android/wallpaper/grass/ScriptField_Blade;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x14

    .line 368
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Blades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    .line 369
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_Verticies(Lcom/android/wallpaper/grass/ScriptField_Vertex;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x15

    .line 380
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Verticies:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    .line 381
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_gAfternoon()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBladesCount()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBladesMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 362
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gDawn()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gDusk()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 197
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIndexCount()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIsPreview()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gMorning()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 242
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFGrass()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 257
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPSBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 272
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 227
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTAa()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 347
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTNight()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 287
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTSky()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 332
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTSunrise()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 317
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTSunset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 302
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gXOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_Blades()Lcom/android/wallpaper/grass/ScriptField_Blade;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Blades:Lcom/android/wallpaper/grass/ScriptField_Blade;

    return-object v0
.end method

.method public get_Verticies()Lcom/android/wallpaper/grass/ScriptField_Vertex;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_Verticies:Lcom/android/wallpaper/grass/ScriptField_Vertex;

    return-object v0
.end method

.method public get_gAfternoon()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gAfternoon:F

    return v0
.end method

.method public get_gBladesCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesCount:I

    return v0
.end method

.method public get_gBladesMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gDawn()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDawn:F

    return v0
.end method

.method public get_gDusk()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDusk:F

    return v0
.end method

.method public get_gHeight()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gHeight:I

    return v0
.end method

.method public get_gIndexCount()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIndexCount:I

    return v0
.end method

.method public get_gIsPreview()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIsPreview:I

    return v0
.end method

.method public get_gMorning()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gMorning:F

    return v0
.end method

.method public get_gPFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFGrass()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFGrass:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPSBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPVBackground()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gTAa()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTAa:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTNight()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTNight:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTSky()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSky:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTSunrise()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunrise:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTSunset()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunset:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gWidth:I

    return v0
.end method

.method public get_gXOffset()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gXOffset:F

    return v0
.end method

.method public invoke_updateBlades()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 392
    return-void
.end method

.method public declared-synchronized set_gAfternoon(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 174
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gAfternoon:F
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

.method public declared-synchronized set_gBladesCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 69
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesCount:I
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

.method public declared-synchronized set_gBladesMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 353
    monitor-enter p0

    const/16 v0, 0x13

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 354
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gBladesMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gDawn(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 144
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDawn:F
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

.method public declared-synchronized set_gDusk(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 189
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gDusk:F
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

.method public declared-synchronized set_gHeight(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 114
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gHeight:I
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

.method public declared-synchronized set_gIndexCount(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 84
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIndexCount:I
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

.method public declared-synchronized set_gIsPreview(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 204
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gIsPreview:I
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

.method public declared-synchronized set_gMorning(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 159
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gMorning:F
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

.method public declared-synchronized set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 233
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 234
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFGrass(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 248
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 249
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPFGrass:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 263
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 264
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPSBackground:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 218
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 219
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_gTAa(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 338
    monitor-enter p0

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 339
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTAa:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTNight(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 278
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 279
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTNight:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTSky(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 323
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 324
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSky:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTSunrise(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 308
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 309
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunrise:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTSunset(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 293
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 294
    iput-object p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gTSunset:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWidth(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 99
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gWidth:I
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

.method public declared-synchronized set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 129
    iput p1, p0, Lcom/android/wallpaper/grass/ScriptC_grass;->mExportVar_gXOffset:F
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
