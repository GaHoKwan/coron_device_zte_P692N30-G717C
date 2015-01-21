.class public final enum Lcom/autonavi/xm/navigation/server/map/GRegMode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_CONTI_CAPSA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_CONTI_DPCA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_CPC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_HONDA_CRV:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_TOB:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_TOC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

.field public static final enum GREG_MODE_TOCAR:Lcom/autonavi/xm/navigation/server/map/GRegMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_TOB"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOB:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_TOC"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_TOCAR"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOCAR:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_CONTI_DPCA"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CONTI_DPCA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_CONTI_CAPSA"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CONTI_CAPSA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_HONDA_CRV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_HONDA_CRV:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const-string v1, "GREG_MODE_CPC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GRegMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CPC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GRegMode;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOB:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_TOCAR:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CONTI_DPCA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CONTI_CAPSA:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_HONDA_CRV:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GRegMode;->GREG_MODE_CPC:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GRegMode;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GRegMode;->values()[Lcom/autonavi/xm/navigation/server/map/GRegMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GRegMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GRegMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GRegMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GRegMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GRegMode;

    return-object v0
.end method
