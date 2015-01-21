.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_GAS:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_HOSPITAL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_HOTEL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_PARK:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_RESTAURANT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

.field public static final enum GMAP_POI_PRIORITY_SIGHT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_GAS"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_GAS:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_PARK"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_PARK:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_RESTAURANT"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_RESTAURANT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_HOTEL"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_HOTEL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_ENTERTAINMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_SIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_SIGHT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const-string v1, "GMAP_POI_PRIORITY_HOSPITAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_HOSPITAL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_GAS:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_PARK:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_RESTAURANT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_HOTEL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_SIGHT:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->GMAP_POI_PRIORITY_HOSPITAL:Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

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

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->values()[Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapPoiPriority;

    return-object v0
.end method
