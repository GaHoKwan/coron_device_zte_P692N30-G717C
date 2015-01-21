.class public final enum Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

.field public static final enum GROADNAME_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

.field public static final enum GROADNAME_LABEL_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

.field public static final enum GROADNAME_LABEL_NOROTATE_MARK:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

.field public static final enum GROADNAME_LABEL_ROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    const-string v1, "GROADNAME_LABEL_NOROTATE"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    const-string v1, "GROADNAME_LABEL_ROTATE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_ROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    const-string v1, "GROADNAME_LABEL_NOROTATE_MARK"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NOROTATE_MARK:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    const-string v1, "GROADNAME_LABEL_NONE"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_ROTATE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NOROTATE_MARK:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->GROADNAME_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->values()[Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GRoadNameLabel;

    return-object v0
.end method
