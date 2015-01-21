.class public Lcom/android/wallpaper/nexus/ScriptC_nexus;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_nexus.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "nexus"

.field private static final mExportFuncIdx_addTap:I = 0x1

.field private static final mExportFuncIdx_initPulses:I = 0x0

.field private static final mExportVarIdx_gHalfPluseSize:I = 0xc

.field private static final mExportVarIdx_gIsPreview:I = 0x3

.field private static final mExportVarIdx_gMode:I = 0x4

.field private static final mExportVarIdx_gPFTexture:I = 0x5

.field private static final mExportVarIdx_gPFTexture565:I = 0x7

.field private static final mExportVarIdx_gPSBlend:I = 0x6

.field private static final mExportVarIdx_gPluseSize:I = 0xb

.field private static final mExportVarIdx_gTBackground:I = 0x8

.field private static final mExportVarIdx_gTGlow:I = 0xa

.field private static final mExportVarIdx_gTPulse:I = 0x9

.field private static final mExportVarIdx_gWorldScaleX:I = 0x0

.field private static final mExportVarIdx_gWorldScaleY:I = 0x1

.field private static final mExportVarIdx_gXOffset:I = 0x2


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __F32:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field private __PROGRAM_STORE:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_FRAGMENT:Landroid/renderscript/FieldPacker;

.field private __rs_fp_PROGRAM_STORE:Landroid/renderscript/FieldPacker;

.field private mExportVar_gHalfPluseSize:I

.field private mExportVar_gIsPreview:I

.field private mExportVar_gMode:I

.field private mExportVar_gPFTexture:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPFTexture565:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPSBlend:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPluseSize:I

.field private mExportVar_gTBackground:Landroid/renderscript/Allocation;

.field private mExportVar_gTGlow:Landroid/renderscript/Allocation;

.field private mExportVar_gTPulse:Landroid/renderscript/Allocation;

.field private mExportVar_gWorldScaleX:F

.field private mExportVar_gWorldScaleY:F

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

    const-string v2, "nexus"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wallpaper/nexus/ScriptC_nexus;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->__ALLOCATION:Landroid/renderscript/Element;

    .line 47
    return-void
.end method


# virtual methods
.method public getFieldID_gHalfPluseSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 251
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIsPreview()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gMode()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFTexture()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPFTexture565()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPSBlend()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPluseSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 236
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTBackground()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 191
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTGlow()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 221
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTPulse()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 206
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWorldScaleX()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWorldScaleY()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gXOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_gHalfPluseSize()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gHalfPluseSize:I

    return v0
.end method

.method public get_gIsPreview()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gIsPreview:I

    return v0
.end method

.method public get_gMode()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gMode:I

    return v0
.end method

.method public get_gPFTexture()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPFTexture:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPFTexture565()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPFTexture565:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPSBlend()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPSBlend:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPluseSize()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPluseSize:I

    return v0
.end method

.method public get_gTBackground()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTBackground:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTGlow()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTGlow:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTPulse()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTPulse:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gWorldScaleX()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gWorldScaleX:F

    return v0
.end method

.method public get_gWorldScaleY()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gWorldScaleY:F

    return v0
.end method

.method public get_gXOffset()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gXOffset:F

    return v0
.end method

.method public invoke_addTap(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 261
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 262
    .local v0, addTap_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 264
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 265
    return-void
.end method

.method public invoke_initPulses()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 257
    return-void
.end method

.method public declared-synchronized set_gHalfPluseSize(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 243
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gHalfPluseSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gIsPreview(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 108
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gIsPreview:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gMode(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 123
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFTexture(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 138
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPFTexture:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPFTexture565(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 168
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPFTexture565:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_gPSBlend(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 153
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPSBlend:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPluseSize(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 227
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 228
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gPluseSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTBackground(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 183
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTBackground:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gTGlow(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 213
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTGlow:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTPulse(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 198
    iput-object p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gTPulse:Landroid/renderscript/Allocation;
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

.method public declared-synchronized set_gWorldScaleX(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 63
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gWorldScaleX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWorldScaleY(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 78
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gWorldScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 93
    iput p1, p0, Lcom/android/wallpaper/nexus/ScriptC_nexus;->mExportVar_gXOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
