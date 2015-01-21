.class public final enum Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BEAM_FORMING:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum ECHO_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum ECHO_AND_NOISE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum ECHO_CANCEL:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum ECHO_NOISE_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum NOISE_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum NOISE_SUPPRESS:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field public static final enum NONE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NONE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "ECHO_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_CANCEL:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "NOISE_SUPPRESS"

    invoke-direct {v0, v1, v5}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NOISE_SUPPRESS:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "BEAM_FORMING"

    invoke-direct {v0, v1, v6}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->BEAM_FORMING:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "ECHO_AND_NOISE"

    invoke-direct {v0, v1, v7}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_NOISE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "ECHO_AND_BEAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "NOISE_AND_BEAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NOISE_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const-string v1, "ECHO_NOISE_BEAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_NOISE_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NONE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_CANCEL:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NOISE_SUPPRESS:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->BEAM_FORMING:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_NOISE:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->NOISE_AND_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->ECHO_NOISE_BEAM:Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->a:[Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->a:[Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/pipes/SseTuningType;

    return-object v0
.end method
