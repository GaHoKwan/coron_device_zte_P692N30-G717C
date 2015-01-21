.class public final enum Lcom/autonavi/xm/navigation/server/map/GRegBlock;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegBlock;

.field public static final enum GREG_BLOCK_H:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

.field public static final enum GREG_BLOCK_M:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

.field public static final enum GREG_BLOCK_M1:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

.field public static final enum GREG_BLOCK_S:Lcom/autonavi/xm/navigation/server/map/GRegBlock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    const-string v1, "GREG_BLOCK_S"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GRegBlock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_S:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    const-string v1, "GREG_BLOCK_M"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GRegBlock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_M:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    const-string v1, "GREG_BLOCK_H"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GRegBlock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_H:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    const-string v1, "GREG_BLOCK_M1"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GRegBlock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_M1:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_S:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_M:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_H:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->GREG_BLOCK_M1:Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GRegBlock;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->values()[Lcom/autonavi/xm/navigation/server/map/GRegBlock;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GRegBlock;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GRegBlock;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GRegBlock;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GRegBlock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GRegBlock;

    return-object v0
.end method
