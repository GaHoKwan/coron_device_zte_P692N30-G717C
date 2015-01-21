.class public final enum Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_MULTI_CAR_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_SEVERE_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_UNDEFINED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

.field public static final enum GTRAFFIC_EVENT_UNKNOWN:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_UNDEFINED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_FREE"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_SLOW"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_CROWDED"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_ACCIDENT"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_SEVERE_ACCIDENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_SEVERE_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_MULTI_CAR_ACCIDENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_MULTI_CAR_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const-string v1, "GTRAFFIC_EVENT_UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_UNKNOWN:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_UNDEFINED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_SEVERE_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_MULTI_CAR_ACCIDENT:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->GTRAFFIC_EVENT_UNKNOWN:Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->values()[Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GTrafficEvent;

    return-object v0
.end method
