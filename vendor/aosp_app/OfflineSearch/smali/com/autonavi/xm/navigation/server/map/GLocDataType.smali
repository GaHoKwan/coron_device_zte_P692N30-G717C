.class public final enum Lcom/autonavi/xm/navigation/server/map/GLocDataType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_ACCE3D:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_DR:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_EMPTY:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_E_COMPASS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_ALT:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_AZI:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_DATE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_DOP:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_MISTAKE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_MODE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_POS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_RAW_NMEA:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_SATANUM:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_SATASTD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_SPD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_STATUS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GPS_TIME:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_GYRO:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_PULSE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

.field public static final enum GLOC_DATA_TYPE_TEMPERATURE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x13

    const/16 v7, 0x12

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_EMPTY"

    invoke-direct {v0, v1, v4, v4}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_EMPTY:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_RAW_NMEA"

    invoke-direct {v0, v1, v5, v5}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_RAW_NMEA:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_POS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_POS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_AZI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_AZI:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_SPD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SPD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_SATANUM"

    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SATANUM:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_ALT"

    const/4 v2, 0x6

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_ALT:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_DATE"

    const/4 v2, 0x7

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_DATE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_TIME"

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_TIME:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_DOP"

    const/16 v2, 0x9

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_DOP:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_MISTAKE"

    const/16 v2, 0xa

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_MISTAKE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_SATASTD"

    const/16 v2, 0xb

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SATASTD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_STATUS"

    const/16 v2, 0xc

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_STATUS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GPS_MODE"

    const/16 v2, 0xd

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_MODE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_E_COMPASS"

    const/16 v2, 0xe

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_E_COMPASS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_TEMPERATURE"

    const/16 v2, 0xf

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_TEMPERATURE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_ACCE3D"

    const/16 v2, 0x10

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_ACCE3D:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_GYRO"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GYRO:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_PULSE"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_PULSE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const-string v1, "GLOC_DATA_TYPE_DR"

    const/16 v2, 0x300

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_DR:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_EMPTY:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_RAW_NMEA:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_POS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_AZI:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SPD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SATANUM:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_ALT:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_DATE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_TIME:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_DOP:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_MISTAKE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_SATASTD:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_STATUS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GPS_MODE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_E_COMPASS:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_TEMPERATURE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_ACCE3D:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_GYRO:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_PULSE:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->GLOC_DATA_TYPE_DR:Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLocDataType;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->values()[Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GLocDataType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GLocDataType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GLocDataType;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GLocDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GLocDataType;

    return-object v0
.end method
