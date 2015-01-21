.class public Lcom/android/magicsmoke/ScriptC_clouds;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_clouds.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "clouds"

.field private static final mExportVarIdx_gAlphaMul:I = 0xa

.field private static final mExportVarIdx_gBackCol:I = 0x7

.field private static final mExportVarIdx_gFSConstants:I = 0xd

.field private static final mExportVarIdx_gHighCol:I = 0x9

.field private static final mExportVarIdx_gLowCol:I = 0x8

.field private static final mExportVarIdx_gNoisedst1:I = 0x1e

.field private static final mExportVarIdx_gNoisedst2:I = 0x1f

.field private static final mExportVarIdx_gNoisedst3:I = 0x20

.field private static final mExportVarIdx_gNoisedst4:I = 0x21

.field private static final mExportVarIdx_gNoisedst5:I = 0x22

.field private static final mExportVarIdx_gNoisesrc1:I = 0x19

.field private static final mExportVarIdx_gNoisesrc2:I = 0x1a

.field private static final mExportVarIdx_gNoisesrc3:I = 0x1b

.field private static final mExportVarIdx_gNoisesrc4:I = 0x1c

.field private static final mExportVarIdx_gNoisesrc5:I = 0x1d

.field private static final mExportVarIdx_gPF4tex:I = 0x11

.field private static final mExportVarIdx_gPF5tex:I = 0xf

.field private static final mExportVarIdx_gPStore:I = 0x13

.field private static final mExportVarIdx_gPV4tex:I = 0x12

.field private static final mExportVarIdx_gPV5tex:I = 0x10

.field private static final mExportVarIdx_gPreMul:I = 0xb

.field private static final mExportVarIdx_gPreset:I = 0x2

.field private static final mExportVarIdx_gProcessTextureMode:I = 0x6

.field private static final mExportVarIdx_gRotate:I = 0x4

.field private static final mExportVarIdx_gTextureMask:I = 0x3

.field private static final mExportVarIdx_gTextureSwap:I = 0x5

.field private static final mExportVarIdx_gTnoise1:I = 0x14

.field private static final mExportVarIdx_gTnoise2:I = 0x15

.field private static final mExportVarIdx_gTnoise3:I = 0x16

.field private static final mExportVarIdx_gTnoise4:I = 0x17

.field private static final mExportVarIdx_gTnoise5:I = 0x18

.field private static final mExportVarIdx_gVS:I = 0xe

.field private static final mExportVarIdx_gVSConstants:I = 0xc

.field private static final mExportVarIdx_gXOffset:I = 0x0

.field private static final mExportVarIdx_gYOffset:I = 0x1


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

.field private mExportVar_gAlphaMul:F

.field private mExportVar_gBackCol:I

.field private mExportVar_gFSConstants:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

.field private mExportVar_gHighCol:I

.field private mExportVar_gLowCol:I

.field private mExportVar_gNoisedst1:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisedst2:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisedst3:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisedst4:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisedst5:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisesrc1:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisesrc2:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisesrc3:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisesrc4:Landroid/renderscript/Allocation;

.field private mExportVar_gNoisesrc5:Landroid/renderscript/Allocation;

.field private mExportVar_gPF4tex:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPF5tex:Landroid/renderscript/ProgramFragment;

.field private mExportVar_gPStore:Landroid/renderscript/ProgramStore;

.field private mExportVar_gPV4tex:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPV5tex:Landroid/renderscript/ProgramVertex;

.field private mExportVar_gPreMul:I

.field private mExportVar_gPreset:I

.field private mExportVar_gProcessTextureMode:I

.field private mExportVar_gRotate:I

.field private mExportVar_gTextureMask:I

.field private mExportVar_gTextureSwap:I

.field private mExportVar_gTnoise1:Landroid/renderscript/Allocation;

.field private mExportVar_gTnoise2:Landroid/renderscript/Allocation;

.field private mExportVar_gTnoise3:Landroid/renderscript/Allocation;

.field private mExportVar_gTnoise4:Landroid/renderscript/Allocation;

.field private mExportVar_gTnoise5:Landroid/renderscript/Allocation;

.field private mExportVar_gVS:Lcom/android/magicsmoke/ScriptField_VertexInputs_s;

.field private mExportVar_gVSConstants:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

.field private mExportVar_gXOffset:F

.field private mExportVar_gYOffset:F


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

    const-string v2, "clouds"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__F32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__I32:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__PROGRAM_STORE:Landroid/renderscript/Element;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->__ALLOCATION:Landroid/renderscript/Element;

    .line 48
    return-void
.end method


# virtual methods
.method public bind_gFSConstants(Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xd

    .line 257
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gFSConstants:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    .line 258
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisedst1(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1e

    .line 491
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst1:Landroid/renderscript/Allocation;

    .line 492
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisedst2(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1f

    .line 503
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst2:Landroid/renderscript/Allocation;

    .line 504
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisedst3(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x20

    .line 515
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst3:Landroid/renderscript/Allocation;

    .line 516
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisedst4(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x21

    .line 527
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst4:Landroid/renderscript/Allocation;

    .line 528
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisedst5(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x22

    .line 539
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst5:Landroid/renderscript/Allocation;

    .line 540
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisesrc1(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x19

    .line 431
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc1:Landroid/renderscript/Allocation;

    .line 432
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisesrc2(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1a

    .line 443
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc2:Landroid/renderscript/Allocation;

    .line 444
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisesrc3(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1b

    .line 455
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc3:Landroid/renderscript/Allocation;

    .line 456
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisesrc4(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1c

    .line 467
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc4:Landroid/renderscript/Allocation;

    .line 468
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 470
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gNoisesrc5(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1d

    .line 479
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc5:Landroid/renderscript/Allocation;

    .line 480
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gVS(Lcom/android/magicsmoke/ScriptField_VertexInputs_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xe

    .line 269
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gVS:Lcom/android/magicsmoke/ScriptField_VertexInputs_s;

    .line 270
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gVSConstants(Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 245
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gVSConstants:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

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

.method public getFieldID_gAlphaMul()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 224
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBackCol()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gHighCol()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gLowCol()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPF4tex()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 320
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPF5tex()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 290
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPStore()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 350
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPV4tex()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 335
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPV5tex()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 305
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPreMul()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 239
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gPreset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gProcessTextureMode()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gRotate()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTextureMask()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTextureSwap()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTnoise1()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 365
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTnoise2()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 380
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTnoise3()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 395
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTnoise4()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 410
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTnoise5()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 425
    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gXOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gYOffset()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_gAlphaMul()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gAlphaMul:F

    return v0
.end method

.method public get_gBackCol()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gBackCol:I

    return v0
.end method

.method public get_gFSConstants()Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gFSConstants:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    return-object v0
.end method

.method public get_gHighCol()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gHighCol:I

    return v0
.end method

.method public get_gLowCol()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gLowCol:I

    return v0
.end method

.method public get_gNoisedst1()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisedst2()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisedst3()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst3:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisedst4()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst4:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisedst5()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisedst5:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisesrc1()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisesrc2()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisesrc3()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc3:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisesrc4()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc4:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gNoisesrc5()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gNoisesrc5:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gPF4tex()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPF4tex:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPF5tex()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPF5tex:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_gPStore()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPStore:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_gPV4tex()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPV4tex:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPV5tex()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPV5tex:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_gPreMul()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPreMul:I

    return v0
.end method

.method public get_gPreset()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPreset:I

    return v0
.end method

.method public get_gProcessTextureMode()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gProcessTextureMode:I

    return v0
.end method

.method public get_gRotate()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gRotate:I

    return v0
.end method

.method public get_gTextureMask()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTextureMask:I

    return v0
.end method

.method public get_gTextureSwap()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTextureSwap:I

    return v0
.end method

.method public get_gTnoise1()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise1:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTnoise2()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTnoise3()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise3:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTnoise4()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise4:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTnoise5()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise5:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gVS()Lcom/android/magicsmoke/ScriptField_VertexInputs_s;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gVS:Lcom/android/magicsmoke/ScriptField_VertexInputs_s;

    return-object v0
.end method

.method public get_gVSConstants()Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gVSConstants:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    return-object v0
.end method

.method public get_gXOffset()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gXOffset:F

    return v0
.end method

.method public get_gYOffset()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gYOffset:F

    return v0
.end method

.method public declared-synchronized set_gAlphaMul(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 216
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gAlphaMul:F
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

.method public declared-synchronized set_gBackCol(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 171
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gBackCol:I
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

.method public declared-synchronized set_gHighCol(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 201
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gHighCol:I
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

.method public declared-synchronized set_gLowCol(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 186
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gLowCol:I
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

.method public declared-synchronized set_gPF4tex(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 311
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 312
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPF4tex:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPF5tex(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 281
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 282
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPF5tex:Landroid/renderscript/ProgramFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    monitor-enter p0

    const/16 v0, 0x13

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 342
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPStore:Landroid/renderscript/ProgramStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPV4tex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 326
    monitor-enter p0

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 327
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPV4tex:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPV5tex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 297
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPV5tex:Landroid/renderscript/ProgramVertex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gPreMul(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 230
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 231
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPreMul:I
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

.method public declared-synchronized set_gPreset(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 96
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gPreset:I
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

.method public declared-synchronized set_gProcessTextureMode(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 156
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gProcessTextureMode:I
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

.method public declared-synchronized set_gRotate(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 126
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gRotate:I
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

.method public declared-synchronized set_gTextureMask(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 111
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTextureMask:I
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

.method public declared-synchronized set_gTextureSwap(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(II)V

    .line 141
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTextureSwap:I
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

.method public declared-synchronized set_gTnoise1(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 356
    monitor-enter p0

    const/16 v0, 0x14

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 357
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise1:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTnoise2(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 371
    monitor-enter p0

    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 372
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise2:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTnoise3(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 386
    monitor-enter p0

    const/16 v0, 0x16

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 387
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise3:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTnoise4(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 401
    monitor-enter p0

    const/16 v0, 0x17

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 402
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise4:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTnoise5(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 416
    monitor-enter p0

    const/16 v0, 0x18

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 417
    iput-object p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gTnoise5:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gXOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 66
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gXOffset:F
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

.method public declared-synchronized set_gYOffset(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 81
    iput p1, p0, Lcom/android/magicsmoke/ScriptC_clouds;->mExportVar_gYOffset:F
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
