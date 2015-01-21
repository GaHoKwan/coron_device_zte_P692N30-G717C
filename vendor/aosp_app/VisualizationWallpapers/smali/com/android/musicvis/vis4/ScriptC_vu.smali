.class public Lcom/android/musicvis/vis4/ScriptC_vu;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_vu.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "vu"

.field private static final mExportVarIdx_gAngle:I = 0x0

.field private static final mExportVarIdx_gPFBackground:I = 0x3

.field private static final mExportVarIdx_gPFSBackground:I = 0xa

.field private static final mExportVarIdx_gPVBackground:I = 0x2

.field private static final mExportVarIdx_gPeak:I = 0x1

.field private static final mExportVarIdx_gTvumeter_background:I = 0x4

.field private static final mExportVarIdx_gTvumeter_black:I = 0x8

.field private static final mExportVarIdx_gTvumeter_frame:I = 0x9

.field private static final mExportVarIdx_gTvumeter_needle:I = 0x7

.field private static final mExportVarIdx_gTvumeter_peak_off:I = 0x6

.field private static final mExportVarIdx_gTvumeter_peak_on:I = 0x5


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_gAngle:F

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPeak:I

.field private mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

.field private mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;


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

    const-string v2, "vu"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/musicvis/vis4/ScriptC_vu;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public getFieldID_gAngle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFSBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 224
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPVBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPeak()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_background()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_black()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_frame()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_needle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_peak_off()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTvumeter_peak_on()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_gAngle()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gAngle:F

    return v0
.end method

.method public get_gPFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFSBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPVBackground()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPeak()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPeak:I

    return v0
.end method

.method public get_gTvumeter_background()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_black()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_frame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_needle()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_peak_off()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTvumeter_peak_on()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public declared-synchronized set_gAngle(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 66
    iput p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gAngle:F
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

.method public declared-synchronized set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 111
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_gPFSBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 216
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPFSBackground:Landroid/renderscript/ProgramStore;
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

.method public declared-synchronized set_gPVBackground(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 96
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_gPeak(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 81
    iput p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gPeak:I
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

.method public declared-synchronized set_gTvumeter_background(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 126
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_background:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTvumeter_black(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 186
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_black:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTvumeter_frame(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 201
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_frame:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTvumeter_needle(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 171
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_needle:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTvumeter_peak_off(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 156
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_off:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTvumeter_peak_on(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 141
    iput-object p1, p0, Lcom/android/musicvis/vis4/ScriptC_vu;->mExportVar_gTvumeter_peak_on:Landroid/renderscript/Allocation;
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
