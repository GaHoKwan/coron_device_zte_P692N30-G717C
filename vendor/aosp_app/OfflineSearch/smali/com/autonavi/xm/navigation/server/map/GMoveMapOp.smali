.class public final enum Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

.field public static final enum MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

.field public static final enum MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

.field public static final enum MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

.field public static final enum MOVEMAP_OP_MOVING:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

.field public static final enum MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const-string v1, "MOVEMAP_OP_CLICK"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const-string v1, "MOVEMAP_OP_SWIPE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const-string v1, "MOVEMAP_OP_DRAG"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const-string v1, "MOVEMAP_OP_MOVING"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_MOVING:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const-string v1, "MOVEMAP_OP_GEO_DIRECT"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_MOVING:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->values()[Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    return-object v0
.end method
