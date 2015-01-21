.class public Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;
.super Ljava/lang/Object;


# static fields
.field public static final ABSOLUTE_THRESHOLD:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final AGC:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final ENABLEFETCHPCMAUDIO:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final FIX_WARPFACTOR:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final SENSITIVITY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7cebf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_START_ENABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->START_ENABLE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7cf34a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_SENSITIVITY"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SENSITIVITY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7cfbb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_ABSOLUTE_THRESHOLD"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->ABSOLUTE_THRESHOLD:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7cfd00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_MINSPEECH"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->MINSPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7cffc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_FARTALK"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FARTALK:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d045f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_AGC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->AGC:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d4f1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_TIMEOUT_LSILENCE"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_LSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d5004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_TIMEOUT_SPEECH"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TIMEOUT_SPEECH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d5131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_TSILENCE"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d51f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_FIX_WARPFACTOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->FIX_WARPFACTOR:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x33acf7f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_ADAPTATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d531f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_EVENT_TIMER"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->EVENT_TIMER:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x2b7d5638

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_KNOWN_SPEAKER_CHANGES"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->KNOWN_SPEAKER_CHANGES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x6b239240

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_ENABLEFETCHPCMAUDIO"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->ENABLEFETCHPCMAUDIO:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x32d9b8fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_FX_PARAM_SPEAKER_ADAPTATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Fx;->SPEAKER_ADAPTATION:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
