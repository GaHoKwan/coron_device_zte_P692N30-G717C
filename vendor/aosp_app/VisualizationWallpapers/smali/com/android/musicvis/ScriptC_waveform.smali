.class public Lcom/android/musicvis/ScriptC_waveform;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_waveform.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "waveform"

.field private static final mExportVarIdx_gCubeMesh:I = 0x9

.field private static final mExportVarIdx_gIdle:I = 0x1

.field private static final mExportVarIdx_gPFBackground:I = 0x5

.field private static final mExportVarIdx_gPVBackground:I = 0x4

.field private static final mExportVarIdx_gPointBuffer:I = 0x7

.field private static final mExportVarIdx_gPoints:I = 0x6

.field private static final mExportVarIdx_gTlinetexture:I = 0x8

.field private static final mExportVarIdx_gWaveCounter:I = 0x2

.field private static final mExportVarIdx_gWidth:I = 0x3

.field private static final mExportVarIdx_gYRotation:I


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __MESH:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_VERTEX:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_MESH:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_VERTEX:Landroid/renderscript/FieldPacker;

.field private mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

.field private mExportVar_gIdle:I

.field private mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

.field private mExportVar_gPoints:Lcom/android/musicvis/ScriptField_Vertex;

.field private mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

.field private mExportVar_gWaveCounter:I

.field private mExportVar_gWidth:I

.field private mExportVar_gYRotation:F


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

    const-string v2, "waveform"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/musicvis/ScriptC_waveform;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->__MESH:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public bind_gPoints(Lcom/android/musicvis/ScriptField_Vertex;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x6

    .line 155
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPoints:Lcom/android/musicvis/ScriptField_Vertex;

    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_gCubeMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 206
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIdle()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFBackground()Landroid/renderscript/Script$FieldID;
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
    .line 134
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPointBuffer()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTlinetexture()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 191
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWaveCounter()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gYRotation()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_gCubeMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_gIdle()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gIdle:I

    return v0
.end method

.method public get_gPFBackground()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPVBackground()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPointBuffer()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gPoints()Lcom/android/musicvis/ScriptField_Vertex;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPoints:Lcom/android/musicvis/ScriptField_Vertex;

    return-object v0
.end method

.method public get_gTlinetexture()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gWaveCounter()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWaveCounter:I

    return v0
.end method

.method public get_gWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWidth:I

    return v0
.end method

.method public get_gYRotation()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gYRotation:F

    return v0
.end method

.method public declared-synchronized set_gCubeMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 198
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gCubeMesh:Landroid/renderscript/Mesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gIdle(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 81
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gIdle:I
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

.method public declared-synchronized set_gPFBackground(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 141
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPFBackground:Landroid/renderscript/ProgramFragment;
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
    .line 125
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 126
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPVBackground:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_gPointBuffer(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 168
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gPointBuffer:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTlinetexture(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 183
    iput-object p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gTlinetexture:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWaveCounter(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 96
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWaveCounter:I
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

.method public declared-synchronized set_gWidth(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 111
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gWidth:I
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

.method public declared-synchronized set_gYRotation(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 66
    iput p1, p0, Lcom/android/musicvis/ScriptC_waveform;->mExportVar_gYRotation:F
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
