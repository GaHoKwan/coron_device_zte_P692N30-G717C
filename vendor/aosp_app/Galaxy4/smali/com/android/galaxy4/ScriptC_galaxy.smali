.class public Lcom/android/galaxy4/ScriptC_galaxy;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_galaxy.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "galaxy"

.field private static final mExportFuncIdx_positionParticles:I = 0x0

.field private static final mExportVarIdx_bgStars:I = 0x2

.field private static final mExportVarIdx_bgStarsMesh:I = 0x5

.field private static final mExportVarIdx_densityDPI:I = 0x13

.field private static final mExportVarIdx_fragBg:I = 0xe

.field private static final mExportVarIdx_fragBgStars:I = 0xb

.field private static final mExportVarIdx_fragSpaceClouds:I = 0xa

.field private static final mExportVarIdx_fragStaticStars:I = 0xc

.field private static final mExportVarIdx_spaceClouds:I = 0x1

.field private static final mExportVarIdx_spaceCloudsMesh:I = 0x4

.field private static final mExportVarIdx_staticStars:I = 0x3

.field private static final mExportVarIdx_staticStarsMesh:I = 0x6

.field private static final mExportVarIdx_textureBg:I = 0x12

.field private static final mExportVarIdx_textureSpaceCloud:I = 0xf

.field private static final mExportVarIdx_textureStaticStar:I = 0x10

.field private static final mExportVarIdx_textureStaticStar2:I = 0x11

.field private static final mExportVarIdx_vertBg:I = 0xd

.field private static final mExportVarIdx_vertBgStars:I = 0x8

.field private static final mExportVarIdx_vertSpaceClouds:I = 0x7

.field private static final mExportVarIdx_vertStaticStars:I = 0x9

.field private static final mExportVarIdx_vpConstants:I


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

.field private mExportVar_bgStars:Lcom/android/galaxy4/ScriptField_Particle;

.field private mExportVar_bgStarsMesh:Landroid/renderscript/Mesh;

.field private mExportVar_densityDPI:F

.field private mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

.field private mExportVar_fragBgStars:Landroid/renderscript/ProgramFragment;

.field private mExportVar_fragSpaceClouds:Landroid/renderscript/ProgramFragment;

.field private mExportVar_fragStaticStars:Landroid/renderscript/ProgramFragment;

.field private mExportVar_spaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

.field private mExportVar_spaceCloudsMesh:Landroid/renderscript/Mesh;

.field private mExportVar_staticStars:Lcom/android/galaxy4/ScriptField_Particle;

.field private mExportVar_staticStarsMesh:Landroid/renderscript/Mesh;

.field private mExportVar_textureBg:Landroid/renderscript/Allocation;

.field private mExportVar_textureSpaceCloud:Landroid/renderscript/Allocation;

.field private mExportVar_textureStaticStar:Landroid/renderscript/Allocation;

.field private mExportVar_textureStaticStar2:Landroid/renderscript/Allocation;

.field private mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertBgStars:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertSpaceClouds:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vertStaticStars:Landroid/renderscript/ProgramVertex;

.field private mExportVar_vpConstants:Lcom/android/galaxy4/ScriptField_VpConsts;


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

    invoke-direct {p0, p1, v0, v1}, Lcom/android/galaxy4/ScriptC_galaxy;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

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
    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->__MESH:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->__PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->__PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->__ALLOCATION:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->__F32:Landroid/renderscript/Element;

    .line 47
    return-void
.end method


# virtual methods
.method public bind_bgStars(Lcom/android/galaxy4/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x2

    .line 86
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_bgStars:Lcom/android/galaxy4/ScriptField_Particle;

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_spaceClouds(Lcom/android/galaxy4/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 74
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_spaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

    .line 75
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_staticStars(Lcom/android/galaxy4/ScriptField_Particle;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    .line 98
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_staticStars:Lcom/android/galaxy4/ScriptField_Particle;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_vpConstants(Lcom/android/galaxy4/ScriptField_VpConsts;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vpConstants:Lcom/android/galaxy4/ScriptField_VpConsts;

    .line 63
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public getFieldID_bgStarsMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_densityDPI()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 344
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 269
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragBgStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 224
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragSpaceClouds()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 209
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_fragStaticStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 239
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_spaceCloudsMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_staticStarsMesh()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 329
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureSpaceCloud()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 284
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureStaticStar()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 299
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_textureStaticStar2()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 314
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertBg()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 254
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertBgStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 179
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertSpaceClouds()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_vertStaticStars()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public get_bgStars()Lcom/android/galaxy4/ScriptField_Particle;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_bgStars:Lcom/android/galaxy4/ScriptField_Particle;

    return-object v0
.end method

.method public get_bgStarsMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_bgStarsMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_densityDPI()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_densityDPI:F

    return v0
.end method

.method public get_fragBg()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_fragBgStars()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragBgStars:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_fragSpaceClouds()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragSpaceClouds:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_fragStaticStars()Landroid/renderscript/ProgramFragment;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragStaticStars:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_spaceClouds()Lcom/android/galaxy4/ScriptField_Particle;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_spaceClouds:Lcom/android/galaxy4/ScriptField_Particle;

    return-object v0
.end method

.method public get_spaceCloudsMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_spaceCloudsMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_staticStars()Lcom/android/galaxy4/ScriptField_Particle;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_staticStars:Lcom/android/galaxy4/ScriptField_Particle;

    return-object v0
.end method

.method public get_staticStarsMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_staticStarsMesh:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_textureBg()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureBg:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_textureSpaceCloud()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureSpaceCloud:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_textureStaticStar()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureStaticStar:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_textureStaticStar2()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureStaticStar2:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_vertBg()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertBgStars()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertBgStars:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertSpaceClouds()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertSpaceClouds:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vertStaticStars()Landroid/renderscript/ProgramVertex;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertStaticStars:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_vpConstants()Lcom/android/galaxy4/ScriptField_VpConsts;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vpConstants:Lcom/android/galaxy4/ScriptField_VpConsts;

    return-object v0
.end method

.method public invoke_positionParticles()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->invoke(I)V

    .line 350
    return-void
.end method

.method public declared-synchronized set_bgStarsMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 126
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_bgStarsMesh:Landroid/renderscript/Mesh;
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

.method public declared-synchronized set_densityDPI(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 335
    monitor-enter p0

    const/16 v0, 0x13

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(IF)V

    .line 336
    iput p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_densityDPI:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_fragBg(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 261
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragBg:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_fragBgStars(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 216
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragBgStars:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_fragSpaceClouds(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 201
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragSpaceClouds:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_fragStaticStars(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 230
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 231
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_fragStaticStars:Landroid/renderscript/ProgramFragment;
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

.method public declared-synchronized set_spaceCloudsMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 111
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_spaceCloudsMesh:Landroid/renderscript/Mesh;
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

.method public declared-synchronized set_staticStarsMesh(Landroid/renderscript/Mesh;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 141
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_staticStarsMesh:Landroid/renderscript/Mesh;
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

.method public declared-synchronized set_textureBg(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 320
    monitor-enter p0

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 321
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureBg:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureSpaceCloud(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 275
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 276
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureSpaceCloud:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureStaticStar(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 291
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureStaticStar:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureStaticStar2(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 305
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 306
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_textureStaticStar2:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vertBg(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 245
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 246
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertBg:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_vertBgStars(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 171
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertBgStars:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_vertSpaceClouds(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 156
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertSpaceClouds:Landroid/renderscript/ProgramVertex;
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

.method public declared-synchronized set_vertStaticStars(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 186
    iput-object p1, p0, Lcom/android/galaxy4/ScriptC_galaxy;->mExportVar_vertStaticStars:Landroid/renderscript/ProgramVertex;
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
