.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

.field public static final enum GMAPPOI_LABEL_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

.field public static final enum GMAPPOI_LABEL_NAME:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

.field public static final enum GMAPPOI_LABEL_NAME_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

.field public static final enum GMAPPOI_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    const-string v1, "GMAPPOI_LABEL_NAME_ICON"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NAME_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    const-string v1, "GMAPPOI_LABEL_NAME"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NAME:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    const-string v1, "GMAPPOI_LABEL_ICON"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    const-string v1, "GMAPPOI_LABEL_NONE"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NAME_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NAME:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_ICON:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->GMAPPOI_LABEL_NONE:Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->values()[Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapPoiLabel;

    return-object v0
.end method
