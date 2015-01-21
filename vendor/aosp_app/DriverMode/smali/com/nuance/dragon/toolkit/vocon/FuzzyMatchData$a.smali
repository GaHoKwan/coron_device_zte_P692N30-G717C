.class final enum Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

.field public static final enum b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

.field public static final enum c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

.field private static final synthetic d:[Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const-string v1, "SPEAKABLE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->d:[Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->d:[Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    return-object v0
.end method
