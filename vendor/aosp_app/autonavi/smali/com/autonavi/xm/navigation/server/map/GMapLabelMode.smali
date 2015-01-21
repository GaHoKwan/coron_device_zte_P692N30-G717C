.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

.field public static final enum GMAP_LABELMODE_NOPOI:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

.field public static final enum GMAP_LABELMODE_NOPOI_WITHMARK:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

.field public static final enum GMAP_LABELMODE_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

.field public static final enum GMAP_LABELMODE_ROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    const-string v1, "GMAP_LABELMODE_NOROTATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    const-string v1, "GMAP_LABELMODE_ROTATE"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_ROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    const-string v1, "GMAP_LABELMODE_NOPOI"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOPOI:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    const-string v1, "GMAP_LABELMODE_NOPOI_WITHMARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOPOI_WITHMARK:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_ROTATE:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOPOI:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->GMAP_LABELMODE_NOPOI_WITHMARK:Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->values()[Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapLabelMode;

    return-object v0
.end method
