.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapViewType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GMapViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_BUS_OVERVIEW:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_JOURNEYPOINTS:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_POI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_SP:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field public static final enum GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MAIN"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_WHOLE"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTI"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTIWHOLE"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_POI"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_POI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_SP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_SP:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MANEUVER_POINT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_ROUTE_TMC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_MULTI_DIFF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_JOURNEYPOINTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_JOURNEYPOINTS:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const-string v1, "GMAP_VIEW_TYPE_BUS_OVERVIEW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_BUS_OVERVIEW:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_POI:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_SP:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_ROUTE_TMC:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_JOURNEYPOINTS:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_BUS_OVERVIEW:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapViewType;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->values()[Lcom/autonavi/xm/navigation/server/map/GMapViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapViewType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapViewType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    return-object v0
.end method
