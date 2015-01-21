.class final enum Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

.field public static final enum GMAP_VIEW_FLAG_MAIN:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

.field public static final enum GMAP_VIEW_FLAG_MANEUVER_POINT:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

.field public static final enum GMAP_VIEW_FLAG_WHOLE:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    const-string v1, "GMAP_VIEW_FLAG_MAIN"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_MAIN:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    const-string v1, "GMAP_VIEW_FLAG_WHOLE"

    invoke-direct {v0, v1, v4, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_WHOLE:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    const-string v1, "GMAP_VIEW_FLAG_MANEUVER_POINT"

    invoke-direct {v0, v1, v3, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_MANEUVER_POINT:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    new-array v0, v5, [Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_MAIN:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_WHOLE:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_MANEUVER_POINT:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->$VALUES:[Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->nativeValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->$VALUES:[Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    return-object v0
.end method
