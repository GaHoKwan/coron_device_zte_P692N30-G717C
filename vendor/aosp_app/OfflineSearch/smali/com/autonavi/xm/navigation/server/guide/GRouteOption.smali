.class public final enum Lcom/autonavi/xm/navigation/server/guide/GRouteOption;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_LINEAR:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

.field public static final enum GROUTE_OPTION_WALK:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_RECOMMAND"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_HIGHWAY"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_ECONOMY"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_SHORTEST"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_WALK"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_WALK:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const-string v1, "GROUTE_OPTION_LINEAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_LINEAR:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_RECOMMAND:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_HIGHWAY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_ECONOMY:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_SHORTEST:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_WALK:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->GROUTE_OPTION_LINEAR:Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GRouteOption;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->values()[Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GRouteOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GRouteOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GRouteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteOption;

    return-object v0
.end method
