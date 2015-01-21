.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

.field public static final enum GMAPVIEW_FLAG_ALL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

.field public static final enum GMAPVIEW_FLAG_ANGLE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

.field public static final enum GMAPVIEW_FLAG_CENTER:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

.field public static final enum GMAPVIEW_FLAG_MODE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

.field public static final enum GMAPVIEW_FLAG_SCALE_LEVEL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const-string v1, "GMAPVIEW_FLAG_CENTER"

    invoke-direct {v0, v1, v6, v3}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_CENTER:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const-string v1, "GMAPVIEW_FLAG_SCALE_LEVEL"

    invoke-direct {v0, v1, v3, v4}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_SCALE_LEVEL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const-string v1, "GMAPVIEW_FLAG_MODE"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_MODE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const-string v1, "GMAPVIEW_FLAG_ANGLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_ANGLE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const-string v1, "GMAPVIEW_FLAG_ALL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_ALL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_CENTER:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_SCALE_LEVEL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_MODE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_ANGLE:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->GMAPVIEW_FLAG_ALL:Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->values()[Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;

    return-object v0
.end method
