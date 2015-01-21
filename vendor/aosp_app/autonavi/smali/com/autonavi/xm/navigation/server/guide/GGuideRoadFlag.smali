.class public final enum Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

.field public static final enum G_GUIDE_ROAD_FLAG_CAR:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

.field public static final enum G_GUIDE_ROAD_FLAG_TOLL_GATE:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

.field public static final enum G_GUIDE_ROAD_FLAG_TRAFFIC_LIGHT:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;


# instance fields
.field private nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    const-string v1, "G_GUIDE_ROAD_FLAG_TRAFFIC_LIGHT"

    invoke-direct {v0, v1, v5, v3}, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_TRAFFIC_LIGHT:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    const-string v1, "G_GUIDE_ROAD_FLAG_TOLL_GATE"

    invoke-direct {v0, v1, v3, v4}, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_TOLL_GATE:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    const-string v1, "G_GUIDE_ROAD_FLAG_CAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_CAR:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_TRAFFIC_LIGHT:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_TOLL_GATE:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->G_GUIDE_ROAD_FLAG_CAR:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->values()[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadFlag;

    return-object v0
.end method
