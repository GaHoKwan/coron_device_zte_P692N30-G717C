.class public final enum Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GZoomLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_100_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_10_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_15_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_1_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_200_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_200_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_2_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_500_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_50_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_50_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final enum ZOOM_5_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final ZOOM_LEVEL_CHINA:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final ZOOM_LEVEL_CITY:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final ZOOM_LEVEL_PROVINCE:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

.field public static final ZOOM_LEVEL_STREET:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;


# instance fields
.field public final zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_500_KM"

    const v2, 0x7a120

    invoke-direct {v0, v1, v4, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_200_KM"

    const v2, 0x30d40

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_50_KM"

    const v2, 0xc350

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_10_KM"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_10_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_5_KM"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_5_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_2_KM"

    const/4 v2, 0x5

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_2_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_1_KM"

    const/4 v2, 0x6

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_1_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_500_M"

    const/4 v2, 0x7

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_200_M"

    const/16 v2, 0x8

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_100_M"

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_100_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_50_M"

    const/16 v2, 0xa

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_25_M"

    const/16 v2, 0xb

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const-string v1, "ZOOM_15_M"

    const/16 v2, 0xc

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_15_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_10_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_5_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_2_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_1_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_100_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_15_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_LEVEL_CHINA:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_LEVEL_PROVINCE:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_5_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_LEVEL_CITY:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_LEVEL_STREET:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->zoomValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->values()[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    return-object v0
.end method


# virtual methods
.method public zoomIn()Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->values()[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    aget-object p0, v1, v0

    goto :goto_0
.end method

.method public zoomOut()Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->values()[Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v1

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    aget-object p0, v1, v0

    goto :goto_0
.end method
