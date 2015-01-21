.class public final enum Lcom/autonavi/xm/navigation/server/guide/GDetourOption;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_FOREVER:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_ONCE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_ONE_MONTH:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_ONE_WEEK:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_ONE_YEAR:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public static final enum GDETOUR_OPTION_TODAY:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_ONCE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONCE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_TODAY"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_TODAY:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_ONE_WEEK"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_WEEK:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_ONE_MONTH"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_MONTH:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_ONE_YEAR"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_YEAR:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_FOREVER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_FOREVER:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const-string v1, "GDETOUR_OPTION_CUSTOMIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONCE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_TODAY:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_WEEK:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_MONTH:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONE_YEAR:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_FOREVER:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_CUSTOMIZE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GDetourOption;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->values()[Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GDetourOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GDetourOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    return-object v0
.end method
