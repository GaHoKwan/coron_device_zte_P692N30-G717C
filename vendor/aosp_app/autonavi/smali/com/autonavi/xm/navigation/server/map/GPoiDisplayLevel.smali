.class public final enum Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

.field public static final enum GPOI_DISPLAYLEVEL_AUTO:Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    const-string v1, "GPOI_DISPLAYLEVEL_AUTO"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->GPOI_DISPLAYLEVEL_AUTO:Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->GPOI_DISPLAYLEVEL_AUTO:Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

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

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->values()[Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    return-object v0
.end method
