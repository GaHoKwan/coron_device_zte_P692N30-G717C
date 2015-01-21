.class public final enum Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_ALL:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_NONE:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

.field public static final enum GROUTE_TMC_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_NONE:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_RECOMMAND"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_HIGHWAY"

    invoke-direct {v0, v1, v6, v6}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_ECONOMY"

    invoke-direct {v0, v1, v8, v7}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_SHORTEST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const-string v1, "GROUTE_TMC_OPTION_ALL"

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_ALL:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_NONE:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v1, v0, v8

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->GROUTE_TMC_OPTION_ALL:Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->values()[Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->nativeValue:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteTmcOption;

    return-object v0
.end method
