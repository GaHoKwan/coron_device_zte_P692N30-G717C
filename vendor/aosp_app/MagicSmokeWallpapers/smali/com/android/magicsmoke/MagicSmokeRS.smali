.class Lcom/android/magicsmoke/MagicSmokeRS;
.super Lcom/android/magicsmoke/RenderScriptScene;
.source "MagicSmokeRS.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/magicsmoke/MagicSmokeRS$Preset;,
        Lcom/android/magicsmoke/MagicSmokeRS$WorldState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRESET:I = 0x10

.field private static final RSID_NOISEDST1:I = 0x6

.field private static final RSID_NOISEDST2:I = 0x7

.field private static final RSID_NOISEDST3:I = 0x8

.field private static final RSID_NOISEDST4:I = 0x9

.field private static final RSID_NOISEDST5:I = 0xa

.field private static final RSID_NOISESRC1:I = 0x1

.field private static final RSID_NOISESRC2:I = 0x2

.field private static final RSID_NOISESRC3:I = 0x3

.field private static final RSID_NOISESRC4:I = 0x4

.field private static final RSID_NOISESRC5:I = 0x5

.field private static final RSID_STATE:I

.field public static final mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;


# instance fields
.field alphafactor:F

.field private mContext:Landroid/content/Context;

.field private mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

.field private mPF4tex:Landroid/renderscript/ProgramFragment;

.field private mPF5tex:Landroid/renderscript/ProgramFragment;

.field private mPStore:Landroid/renderscript/ProgramStore;

.field private mPV4tex:Landroid/renderscript/ProgramVertex;

.field private mPV5tex:Landroid/renderscript/ProgramVertex;

.field private mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

.field private mRealTextures:[Landroid/renderscript/Allocation;

.field private mSampler:[Landroid/renderscript/Sampler;

.field private mScript:Lcom/android/magicsmoke/ScriptC_clouds;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSourceTextures:[Landroid/renderscript/Allocation;

.field mTextureType:Landroid/renderscript/Type;

.field private mTouchY:F

.field private mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

.field mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 119
    const/16 v0, 0x14

    new-array v10, v0, [Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v11, 0x0

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x2

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0xff00

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x3

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0xff00

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x4

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0xff00

    const v3, 0xff00

    const v4, 0xffffff

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x5

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/high16 v2, 0x80

    const/high16 v3, 0xff

    const v4, 0xffffff

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x6

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffffff

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x7

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const v3, 0xff00

    const v4, 0xffff00

    const/high16 v5, 0x4000

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x8

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0x8000

    const v3, 0xff00

    const v4, 0xffffff

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x9

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/high16 v2, 0x80

    const/high16 v3, 0xff

    const v4, 0xffffff

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xa

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0x808080

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xb

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xc

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const v3, 0xff00

    const v4, 0xffff00

    const/high16 v5, 0x3fc0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xd

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const v3, 0xff00

    const v4, 0xffff00

    const/high16 v5, 0x4000

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xe

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const v3, 0xff00

    const v4, 0xffff00

    const/high16 v5, 0x3fc0

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0xf

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const v2, 0x808080

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x10

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x11

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x70

    const v4, 0xff2020

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x2

    const v2, 0x6060ff

    const/16 v3, 0x70

    const v4, 0xffffff

    const/high16 v5, 0x4020

    const/16 v6, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    const/4 v1, 0x3

    const/16 v2, 0xf0

    const/4 v3, 0x0

    const v4, 0xffffff

    const/high16 v5, 0x4000

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/magicsmoke/MagicSmokeRS$Preset;-><init>(IIIIFIZZZ)V

    aput-object v0, v10, v11

    sput-object v10, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    invoke-direct {p0, p2, p3}, Lcom/android/magicsmoke/RenderScriptScene;-><init>(II)V

    .line 58
    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    invoke-direct {v0}, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    .line 147
    iput p2, p0, Lcom/android/magicsmoke/RenderScriptScene;->mWidth:I

    .line 148
    iput p3, p0, Lcom/android/magicsmoke/RenderScriptScene;->mHeight:I

    .line 149
    iput-object p1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mContext:Landroid/content/Context;

    const-string v1, "magicsmoke"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSharedPref:Landroid/content/SharedPreferences;

    .line 151
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/magicsmoke/MagicSmokeRS;->makeNewState()V

    .line 153
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 327
    new-instance v5, Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v7, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f05

    invoke-direct {v5, v6, v7, v8}, Lcom/android/magicsmoke/ScriptC_clouds;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    .line 329
    new-instance v5, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    iget-object v6, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v6, v11}, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    .line 330
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gVSConstants(Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;)V

    .line 333
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 334
    .local v0, builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050004

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 335
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    invoke-virtual {v5}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 336
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Lcom/android/magicsmoke/ScriptField_VertexInputs_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV5tex:Landroid/renderscript/ProgramVertex;

    .line 339
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV5tex:Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 341
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050003

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 342
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV4tex:Landroid/renderscript/ProgramVertex;

    .line 343
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV4tex:Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mVSConst:Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 345
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV5tex:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPV5tex(Landroid/renderscript/ProgramVertex;)V

    .line 346
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPV4tex:Landroid/renderscript/ProgramVertex;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPV4tex(Landroid/renderscript/ProgramVertex;)V

    .line 348
    new-array v5, v9, [Landroid/renderscript/Allocation;

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    .line 349
    new-array v5, v9, [Landroid/renderscript/Allocation;

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    .line 351
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v6, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v6}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 352
    .local v3, tb:Landroid/renderscript/Type$Builder;
    invoke-virtual {v3, v13}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 353
    invoke-virtual {v3, v13}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 354
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mTextureType:Landroid/renderscript/Type;

    .line 355
    invoke-virtual {p0}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmaps()V

    .line 357
    new-instance v2, Landroid/renderscript/Sampler$Builder;

    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v2, v5}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 358
    .local v2, samplerBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 359
    sget-object v5, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 360
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 361
    sget-object v5, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v2, v5}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 362
    new-array v5, v9, [Landroid/renderscript/Sampler;

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSampler:[Landroid/renderscript/Sampler;

    .line 363
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 364
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSampler:[Landroid/renderscript/Sampler;

    invoke-virtual {v2}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v6

    aput-object v6, v5, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    new-instance v5, Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    iget-object v6, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v5, v6, v11}, Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    .line 368
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gFSConstants(Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;)V

    .line 370
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 371
    .local v0, builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050002

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 372
    const/4 v4, 0x0

    .local v4, texCount:I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 373
    sget-object v5, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 375
    :cond_1
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 377
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF5tex:Landroid/renderscript/ProgramFragment;

    .line 378
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_2

    .line 379
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF5tex:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSampler:[Landroid/renderscript/Sampler;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, v1}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 380
    :cond_2
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF5tex:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 382
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 383
    .restart local v0       #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050001

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 384
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v12, :cond_3

    .line 385
    sget-object v5, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 387
    :cond_3
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v5}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 388
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF4tex:Landroid/renderscript/ProgramFragment;

    .line 389
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_4

    .line 390
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF4tex:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSampler:[Landroid/renderscript/Sampler;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, v1}, Landroid/renderscript/Program;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 391
    :cond_4
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF4tex:Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mFSConst:Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;

    invoke-virtual {v6}, Landroid/renderscript/Script$FieldBase;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 394
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF5tex:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPF5tex(Landroid/renderscript/ProgramFragment;)V

    .line 395
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPF4tex:Landroid/renderscript/ProgramFragment;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPF4tex(Landroid/renderscript/ProgramFragment;)V

    .line 399
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v5, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 400
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v5, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 401
    sget-object v5, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v6, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 402
    invoke-virtual {v0, v11}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 403
    invoke-virtual {v0, v10}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 404
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPStore:Landroid/renderscript/ProgramStore;

    .line 407
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPStore:Landroid/renderscript/ProgramStore;

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPStore(Landroid/renderscript/ProgramStore;)V

    .line 409
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPreset(I)V

    .line 410
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureMask:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTextureMask(I)V

    .line 411
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mRotate:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gRotate(I)V

    .line 412
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureSwap:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTextureSwap(I)V

    .line 413
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mProcessTextureMode:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gProcessTextureMode(I)V

    .line 414
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mBackCol:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gBackCol(I)V

    .line 415
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mLowCol:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gLowCol(I)V

    .line 416
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mHighCol:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gHighCol(I)V

    .line 417
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mAlphaMul:F

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gAlphaMul(F)V

    .line 418
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreMul:I

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPreMul(I)V

    .line 419
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v6, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v6, v6, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mXOffset:F

    invoke-virtual {v5, v6}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gXOffset(F)V

    .line 421
    iget-object v5, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    return-object v5
.end method

.method loadBitmap(IILjava/lang/String;FII)V
    .locals 11
    .parameter "id"
    .parameter "index"
    .parameter "name"
    .parameter "alphamul"
    .parameter "lowcol"
    .parameter "highcol"

    .prologue
    .line 262
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .local v10, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 264
    iget-object v2, p0, Lcom/android/magicsmoke/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, p1, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, in:Landroid/graphics/Bitmap;
    const/high16 v2, 0x1

    new-array v1, v2, [I

    .line 269
    .local v1, pixels:[I
    const/4 v2, 0x0

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x100

    const/16 v7, 0x100

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 270
    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v4, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mTextureType:Landroid/renderscript/Type;

    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    aput-object v3, v2, p2

    .line 274
    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v4, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mTextureType:Landroid/renderscript/Type;

    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    aput-object v3, v2, p2

    .line 279
    const/high16 v2, 0x4

    new-array v8, v2, [B

    .line 280
    .local v8, bpixels:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/high16 v2, 0x1

    if-ge v9, v2, :cond_0

    .line 281
    mul-int/lit8 v2, v9, 0x4

    add-int/lit8 v2, v2, 0x0

    aget v3, v1, v9

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 282
    mul-int/lit8 v2, v9, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v9

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 283
    mul-int/lit8 v2, v9, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v3, v1, v9

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 284
    mul-int/lit8 v2, v9, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v3, v1, v9

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 280
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    aget-object v2, v2, p2

    invoke-virtual {v2, v8}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    return-void
.end method

.method loadBitmaps()V
    .locals 7

    .prologue
    .line 291
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->alphafactor:F

    .line 292
    sget-object v0, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    aget-object v0, v0, v1

    iget v4, v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mAlphaMul:F

    .line 293
    .local v4, alphamul:F
    sget-object v0, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    aget-object v0, v0, v1

    iget v5, v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mLowColor:I

    .line 294
    .local v5, lowcol:I
    sget-object v0, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    aget-object v0, v0, v1

    iget v6, v0, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mHighColor:I

    .line 299
    .local v6, highcol:I
    const v1, 0x7f020002

    const/4 v2, 0x0

    const-string v3, "Tnoise1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmap(IILjava/lang/String;FII)V

    .line 300
    const v1, 0x7f020003

    const/4 v2, 0x1

    const-string v3, "Tnoise2"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmap(IILjava/lang/String;FII)V

    .line 301
    const v1, 0x7f020004

    const/4 v2, 0x2

    const-string v3, "Tnoise3"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmap(IILjava/lang/String;FII)V

    .line 302
    const v1, 0x7f020005

    const/4 v2, 0x3

    const-string v3, "Tnoise4"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmap(IILjava/lang/String;FII)V

    .line 303
    const v1, 0x7f020006

    const/4 v2, 0x4

    const-string v3, "Tnoise5"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/magicsmoke/MagicSmokeRS;->loadBitmap(IILjava/lang/String;FII)V

    .line 305
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTnoise1(Landroid/renderscript/Allocation;)V

    .line 306
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTnoise2(Landroid/renderscript/Allocation;)V

    .line 307
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTnoise3(Landroid/renderscript/Allocation;)V

    .line 308
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTnoise4(Landroid/renderscript/Allocation;)V

    .line 309
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTnoise5(Landroid/renderscript/Allocation;)V

    .line 311
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisesrc1(Landroid/renderscript/Allocation;)V

    .line 312
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisesrc2(Landroid/renderscript/Allocation;)V

    .line 313
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisesrc3(Landroid/renderscript/Allocation;)V

    .line 314
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisesrc4(Landroid/renderscript/Allocation;)V

    .line 315
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSourceTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisesrc5(Landroid/renderscript/Allocation;)V

    .line 317
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisedst1(Landroid/renderscript/Allocation;)V

    .line 318
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisedst2(Landroid/renderscript/Allocation;)V

    .line 319
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisedst3(Landroid/renderscript/Allocation;)V

    .line 320
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisedst4(Landroid/renderscript/Allocation;)V

    .line 321
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mRealTextures:[Landroid/renderscript/Allocation;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->bind_gNoisedst5(Landroid/renderscript/Allocation;)V

    .line 322
    return-void
.end method

.method makeNewState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "preset"

    const/16 v5, 0x10

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, p:I
    sget-object v1, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iput v0, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    .line 172
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mTextureMask:I

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureMask:I

    .line 173
    iget-object v4, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v1, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mRotate:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mRotate:I

    .line 174
    iget-object v4, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v1, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mTextureSwap:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput v1, v4, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureSwap:I

    .line 175
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mProcessTextureMode:I

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mProcessTextureMode:I

    .line 176
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mBackColor:I

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mBackCol:I

    .line 177
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mLowColor:I

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mLowCol:I

    .line 178
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mHighColor:I

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mHighCol:I

    .line 179
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mAlphaMul:F

    iput v4, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mAlphaMul:F

    .line 180
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    sget-object v4, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/magicsmoke/MagicSmokeRS$Preset;->mPreMul:Z

    if-eqz v4, :cond_4

    :goto_2
    iput v2, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreMul:I

    .line 182
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreset:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPreset(I)V

    .line 184
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureMask:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTextureMask(I)V

    .line 185
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mRotate:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gRotate(I)V

    .line 186
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mTextureSwap:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gTextureSwap(I)V

    .line 187
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mProcessTextureMode:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gProcessTextureMode(I)V

    .line 188
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mBackCol:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gBackCol(I)V

    .line 189
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mLowCol:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gLowCol(I)V

    .line 190
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mHighCol:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gHighCol(I)V

    .line 191
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mAlphaMul:F

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gAlphaMul(F)V

    .line 192
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v2, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v2, v2, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mPreMul:I

    invoke-virtual {v1, v2}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gPreMul(I)V

    .line 194
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 173
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 174
    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 180
    goto :goto_2
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 210
    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    int-to-float v0, p3

    iput v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mTouchY:F

    .line 213
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/magicsmoke/MagicSmokeRS;->start()V

    .line 159
    iget-object v0, p0, Lcom/android/magicsmoke/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/magicsmoke/MagicSmokeRS;->stop(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/magicsmoke/MagicSmokeRS;->makeNewState()V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/magicsmoke/RenderScriptScene;->resize(II)V

    .line 199
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 201
    .local v0, proj:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix4f;->loadProjectionNormalized(II)V

    .line 202
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mPVAlloc:Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    invoke-virtual {v1, v0}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 204
    .end local v0           #proj:Landroid/renderscript/Matrix4f;
    :cond_0
    return-void
.end method

.method public setOffset(FFFFII)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iput p1, v0, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mXOffset:F

    .line 239
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iput p2, v0, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mYOffset:F

    .line 240
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mXOffset:F

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gXOffset(F)V

    .line 241
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mScript:Lcom/android/magicsmoke/ScriptC_clouds;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mWorldState:Lcom/android/magicsmoke/MagicSmokeRS$WorldState;

    iget v1, v1, Lcom/android/magicsmoke/MagicSmokeRS$WorldState;->mYOffset:F

    invoke-virtual {v0, v1}, Lcom/android/magicsmoke/ScriptC_clouds;->set_gYOffset(F)V

    .line 242
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/magicsmoke/MagicSmokeRS;->makeNewState()V

    .line 255
    invoke-super {p0}, Lcom/android/magicsmoke/RenderScriptScene;->start()V

    .line 256
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .parameter "forReal"

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeRS;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lcom/android/magicsmoke/RenderScriptScene;->stop(Z)V

    .line 250
    return-void
.end method
