.class public final enum Lcom/autonavi/xm/navigation/server/location/GGyroType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/location/GGyroType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/location/GGyroType;

.field public static final enum GGYRO_TYPE_100DEGREE:Lcom/autonavi/xm/navigation/server/location/GGyroType;

.field public static final enum GGYRO_TYPE_ANGULAR_SPEED:Lcom/autonavi/xm/navigation/server/location/GGyroType;

.field public static final enum GGYRO_TYPE_VOLTAGE:Lcom/autonavi/xm/navigation/server/location/GGyroType;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;

    const-string v1, "GGYRO_TYPE_100DEGREE"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/server/location/GGyroType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_100DEGREE:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;

    const-string v1, "GGYRO_TYPE_VOLTAGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/navigation/server/location/GGyroType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_VOLTAGE:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;

    const-string v1, "GGYRO_TYPE_ANGULAR_SPEED"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/navigation/server/location/GGyroType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_ANGULAR_SPEED:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/location/GGyroType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_100DEGREE:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_VOLTAGE:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/location/GGyroType;->GGYRO_TYPE_ANGULAR_SPEED:Lcom/autonavi/xm/navigation/server/location/GGyroType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->$VALUES:[Lcom/autonavi/xm/navigation/server/location/GGyroType;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/location/GGyroType;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/location/GGyroType;->values()[Lcom/autonavi/xm/navigation/server/location/GGyroType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/location/GGyroType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/location/GGyroType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/location/GGyroType;->$VALUES:[Lcom/autonavi/xm/navigation/server/location/GGyroType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/location/GGyroType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/location/GGyroType;

    return-object v0
.end method
