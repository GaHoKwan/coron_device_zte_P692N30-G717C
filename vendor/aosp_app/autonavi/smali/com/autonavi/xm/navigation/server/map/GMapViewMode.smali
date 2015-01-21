.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GMapViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

.field public static final enum GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

.field public static final enum GMAPVIEW_MODE_CAR:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

.field public static final enum GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    const-string v1, "GMAPVIEW_MODE_NORTH"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    const-string v1, "GMAPVIEW_MODE_CAR"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_CAR:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    const-string v1, "GMAPVIEW_MODE_3D"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_NORTH:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_CAR:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

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

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->values()[Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapViewMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    return-object v0
.end method
