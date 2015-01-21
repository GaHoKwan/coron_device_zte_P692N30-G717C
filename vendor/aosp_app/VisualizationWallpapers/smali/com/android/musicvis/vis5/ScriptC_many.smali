.class public Lcom/android/musicvis/vis5/ScriptC_many;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_many.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "many"

.field private static final mExportVarIdx_autorotation:I = 0x23

.field private static final mExportVarIdx_fadeincounter:I = 0x17

.field private static final mExportVarIdx_fadeoutcounter:I = 0x16

.field private static final mExportVarIdx_gAngle:I = 0x0

.field private static final mExportVarIdx_gCubeMesh:I = 0x15

.field private static final mExportVarIdx_gIdle:I = 0x4

.field private static final mExportVarIdx_gPFBackgroundMip:I = 0x7

.field private static final mExportVarIdx_gPFBackgroundNoMip:I = 0x8

.field private static final mExportVarIdx_gPFSBackground:I = 0x11

.field private static final mExportVarIdx_gPR:I = 0x9

.field private static final mExportVarIdx_gPVBackground:I = 0x6

.field private static final mExportVarIdx_gPeak:I = 0x1

.field private static final mExportVarIdx_gPointBuffer:I = 0x13

.field private static final mExportVarIdx_gPoints:I = 0x12

.field private static final mExportVarIdx_gRotate:I = 0x2

.field private static final mExportVarIdx_gTilt:I = 0x3

.field private static final mExportVarIdx_gTlinetexture:I = 0x14

.field private static final mExportVarIdx_gTvumeter_album:I = 0x10

.field private static final mExportVarIdx_gTvumeter_background:I = 0xa

.field private static final mExportVarIdx_gTvumeter_black:I = 0xe

.field private static final mExportVarIdx_gTvumeter_frame:I = 0xf

.field private static final mExportVarIdx_gTvumeter_needle:I = 0xd

.field private static final mExportVarIdx_gTvumeter_peak_off:I = 0xc

.field private static final mExportVarIdx_gTvumeter_peak_on:I = 0xb

.field private static final mExportVarIdx_gWaveCounter:I = 0x5

.field private static final mExportVarIdx_idle:I = 0x20

.field private static final mExportVarIdx_lastuptime:I = 0x22

.field private static final mExportVarIdx_wave1amp:I = 0x19

.field private static final mExportVarIdx_wave1pos:I = 0x18

.field private static final mExportVarIdx_wave2amp:I = 0x1b

.field private static final mExportVarIdx_wave2pos:I = 0x1a

.field private static final mExportVarIdx_wave3amp:I = 0x1d

.field private static final mExportVarIdx_wave3pos:I = 0x1c

.field private static final mExportVarIdx_wave4amp:I = 0x1f

.field private static final mExportVarIdx_wave4pos:I = 0x1e

.field private static final mExportVarIdx_waveCounter:I = 0x21


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_RASTER:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_RASTER:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_autorotation:F

.field private mExportVar_fadeincounter:I

.field private mExportVar_fadeoutcounter:I

.field private mExportVar_gAngle:F

.field private mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gIdle:I

.field private mExportVar_gPFBackgroundMip:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFBackgroundNoMip:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPR:Landroid/renderscript/ProgramRaster;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPeak:I

.field private mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

.field private mExportVar_gPoints:Lcom/android/musicvis/vis5/ScriptField_Vertex;

.field private mExportVar_gRotate:F

.field private mExportVar_gTilt:F

.field private mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_album:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

.field private mExportVar_gWaveCounter:I

.field private mExportVar_idle:[F

.field private mExportVar_lastuptime:I

.field private mExportVar_wave1amp:I

.field private mExportVar_wave1pos:I

.field private mExportVar_wave2amp:I

.field private mExportVar_wave2pos:I

.field private mExportVar_wave3amp:I

.field private mExportVar_wave3pos:I

.field private mExportVar_wave4amp:I

.field private mExportVar_wave4pos:I

.field private mExportVar_waveCounter:I


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

    const-string v2, "many"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/musicvis/vis5/ScriptC_many;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__ALLOCATION:Landroid/renderscript/Element;

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 49
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__MESH:Landroid/renderscript/Element;

    .line 50
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeoutcounter:I

    .line 51
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeincounter:I

    .line 52
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1pos:I

    .line 53
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1amp:I

    .line 54
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2pos:I

    .line 55
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2amp:I

    .line 56
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3pos:I

    .line 57
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3amp:I

    .line 58
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4pos:I

    .line 59
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4amp:I

    .line 60
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_waveCounter:I

    .line 61
    iput v1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_lastuptime:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_autorotation:F

    .line 63
    return-void
.end method


# virtual methods
.method public bind_gPoints(Lcom/android/musicvis/vis5/ScriptField_Vertex;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x12

    .line 354
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPoints:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    .line 355
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_autorotation()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 622
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fadeincounter()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 435
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fadeoutcounter()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 420
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gAngle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gCubeMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 405
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIdle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackgroundMip()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackgroundNoMip()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 213
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFSBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 348
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPR()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 228
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPeak()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPointBuffer()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 375
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gRotate()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTilt()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTlinetexture()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 390
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_album()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 333
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_background()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 243
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_black()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 303
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_frame()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 318
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_needle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 288
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_peak_off()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 273
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_peak_on()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 258
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWaveCounter()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_idle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 577
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_lastuptime()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 607
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave1amp()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 465
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave1pos()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 450
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave2amp()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 495
    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave2pos()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 480
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave3amp()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 525
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave3pos()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 510
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave4amp()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 555
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_wave4pos()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 540
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_waveCounter()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 592
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_autorotation()F
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_autorotation:F

    return v0
.end method

.method public get_fadeincounter()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeincounter:I

    return v0
.end method

.method public get_fadeoutcounter()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeoutcounter:I

    return v0
.end method

.method public get_gAngle()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gAngle:F

    return v0
.end method

.method public get_gCubeMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gIdle()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gIdle:I

    return v0
.end method

.method public get_gPFBackgroundMip()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundMip:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFBackgroundNoMip()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundNoMip:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFSBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPR()Landroid/renderscript/ProgramRaster;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPR:Landroid/renderscript/ProgramRaster;

    return-object v0
.end method

.method public get_gPVBackground()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPeak()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPeak:I

    return v0
.end method

.method public get_gPointBuffer()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gPoints()Lcom/android/musicvis/vis5/ScriptField_Vertex;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPoints:Lcom/android/musicvis/vis5/ScriptField_Vertex;

    return-object v0
.end method

.method public get_gRotate()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gRotate:F

    return v0
.end method

.method public get_gTilt()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTilt:F

    return v0
.end method

.method public get_gTlinetexture()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_album()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_album:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_background()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_black()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_frame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_needle()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_peak_off()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_peak_on()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gWaveCounter()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gWaveCounter:I

    return v0
.end method

.method public get_idle()[F
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_idle:[F

    return-object v0
.end method

.method public get_lastuptime()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_lastuptime:I

    return v0
.end method

.method public get_wave1amp()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1amp:I

    return v0
.end method

.method public get_wave1pos()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1pos:I

    return v0
.end method

.method public get_wave2amp()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2amp:I

    return v0
.end method

.method public get_wave2pos()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2pos:I

    return v0
.end method

.method public get_wave3amp()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3amp:I

    return v0
.end method

.method public get_wave3pos()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3pos:I

    return v0
.end method

.method public get_wave4amp()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4amp:I

    return v0
.end method

.method public get_wave4pos()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4pos:I

    return v0
.end method

.method public get_waveCounter()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_waveCounter:I

    return v0
.end method

.method public declared-synchronized set_autorotation(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 613
    monitor-enter p0

    const/16 v0, 0x23

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 614
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_autorotation:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fadeincounter(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 426
    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 427
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeincounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fadeoutcounter(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 411
    monitor-enter p0

    const/16 v0, 0x16

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 412
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_fadeoutcounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gAngle(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 85
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gAngle:F
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

.method public declared-synchronized set_gCubeMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 396
    monitor-enter p0

    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 397
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gIdle(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 145
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gIdle:I
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

.method public declared-synchronized set_gPFBackgroundMip(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 190
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundMip:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFBackgroundNoMip(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 204
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 205
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFBackgroundNoMip:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 339
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 340
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPR(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 219
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 220
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPR:Landroid/renderscript/ProgramRaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 175
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_gPeak(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 100
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPeak:I
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

.method public declared-synchronized set_gPointBuffer(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 366
    monitor-enter p0

    const/16 v0, 0x13

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 367
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gRotate(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 115
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gRotate:F
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

.method public declared-synchronized set_gTilt(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 130
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTilt:F
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

.method public declared-synchronized set_gTlinetexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 381
    monitor-enter p0

    const/16 v0, 0x14

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 382
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_album(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 324
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 325
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_album:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_background(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 234
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 235
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_black(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 294
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 295
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_frame(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 309
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 310
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_needle(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 279
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 280
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 264
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 265
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 249
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 250
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWaveCounter(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 160
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_gWaveCounter:I
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

.method public declared-synchronized set_idle([F)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x1000

    .line 561
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_idle:[F

    .line 562
    new-instance v2, Landroid/renderscript/FieldPacker;

    const/16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 563
    .local v2, fp:Landroid/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, ct1:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 564
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 568
    .local v0, __dimArr:[I
    const/4 v3, 0x0

    const/16 v4, 0x1000

    aput v4, v0, v3

    .line 569
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/android/musicvis/vis5/ScriptC_many;->__F32:Landroid/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 561
    .end local v0           #__dimArr:[I
    .end local v1           #ct1:I
    .end local v2           #fp:Landroid/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_lastuptime(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 598
    monitor-enter p0

    const/16 v0, 0x22

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 599
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_lastuptime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave1amp(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 456
    monitor-enter p0

    const/16 v0, 0x19

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 457
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1amp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave1pos(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 441
    monitor-enter p0

    const/16 v0, 0x18

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 442
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave1pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave2amp(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 486
    monitor-enter p0

    const/16 v0, 0x1b

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 487
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2amp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave2pos(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 471
    monitor-enter p0

    const/16 v0, 0x1a

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 472
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave2pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave3amp(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 516
    monitor-enter p0

    const/16 v0, 0x1d

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 517
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3amp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave3pos(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 501
    monitor-enter p0

    const/16 v0, 0x1c

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 502
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave3pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave4amp(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 546
    monitor-enter p0

    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 547
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4amp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wave4pos(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 531
    monitor-enter p0

    const/16 v0, 0x1e

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 532
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_wave4pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_waveCounter(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 583
    monitor-enter p0

    const/16 v0, 0x21

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 584
    iput p1, p0, Lcom/android/musicvis/vis5/ScriptC_many;->mExportVar_waveCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
