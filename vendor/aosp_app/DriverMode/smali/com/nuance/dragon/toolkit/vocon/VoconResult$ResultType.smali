.class public final enum Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

.field public static final enum TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

.field public static final enum UNKNOWN:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    const-string v1, "NBEST"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    const-string v1, "TABLE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->UNKNOWN:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->NBEST:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->TABLE:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->UNKNOWN:Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->a:[Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->a:[Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    return-object v0
.end method
