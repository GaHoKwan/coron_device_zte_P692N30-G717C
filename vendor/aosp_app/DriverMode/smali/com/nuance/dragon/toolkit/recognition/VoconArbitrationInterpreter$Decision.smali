.class public final enum Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;
.super Ljava/lang/Enum;


# static fields
.field public static final enum DECOY_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

.field public static final enum LOCAL:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

.field public static final enum NOISE:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

.field public static final enum OPEN_SPEECH:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

.field public static final enum OUT_OF_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->LOCAL:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const-string v1, "OPEN_SPEECH"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->OPEN_SPEECH:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const-string v1, "OUT_OF_GRAMMAR"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->OUT_OF_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const-string v1, "DECOY_GRAMMAR"

    invoke-direct {v0, v1, v5}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->DECOY_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const-string v1, "NOISE"

    invoke-direct {v0, v1, v6}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->NOISE:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->LOCAL:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->OPEN_SPEECH:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->OUT_OF_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->DECOY_GRAMMAR:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->NOISE:Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->a:[Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->a:[Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter$Decision;

    return-object v0
.end method
