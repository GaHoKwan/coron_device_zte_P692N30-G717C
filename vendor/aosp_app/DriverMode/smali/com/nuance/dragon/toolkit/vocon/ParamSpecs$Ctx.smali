.class public Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;
.super Ljava/lang/Object;


# static fields
.field public static final ACCURACY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final DECODING_STRATEGY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final IG_HIGHCONF:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final IG_LOWCONF:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final INITBEAMWIDTH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final INVALID:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final MAXNBEST_SECONDPASS:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final MAX_COLLAPSED_LISTSIZE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final MAX_NBR_UNCOLLAPSED_ENTRIES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

.field public static final WORDPENALTY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x154d5340

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_ACCURACY"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->ACCURACY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x154d53ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_MAXNBEST"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x154d5443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_MAXNBEST_SECONDPASS"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAXNBEST_SECONDPASS:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x214c4d1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_TSILENCE_FX"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE_FX:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x16ef5416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_TSILENCE"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->TSILENCE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x17df0963

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_INITBEAMWIDTH"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->INITBEAMWIDTH:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x17dfe9b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_WORDPENALTY"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->WORDPENALTY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x404d0c53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_DECODING_STRATEGY"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->DECODING_STRATEGY:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x5237a110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_IG_LOWCONF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->IG_LOWCONF:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x5237a0a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_IG_HIGHCONF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->IG_HIGHCONF:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x75e9470c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_TABLECTX_PARAM_MAX_COLLAPSED_LISTSIZE"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_COLLAPSED_LISTSIZE:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x76d465de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_TABLECTX_PARAM_MAX_NBR_UNCOLLAPSED_ENTRIES"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->MAX_NBR_UNCOLLAPSED_ENTRIES:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LH_CTX_PARAM_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/ParamSpecs$Ctx;->INVALID:Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
