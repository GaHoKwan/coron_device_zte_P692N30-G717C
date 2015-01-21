.class public final enum Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_BUSY:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_NONE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_SEVERE_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

.field public static final enum GTRAFFIC_STREAM_UNCOVERED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_BUSY"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_BUSY:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_SLOW"

    invoke-direct {v0, v1, v5, v6}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_CROWDED"

    invoke-direct {v0, v1, v6, v7}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_SEVERE_CROWDED"

    invoke-direct {v0, v1, v7, v8}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_SEVERE_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_UNCOVERED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_UNCOVERED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const-string v1, "GTRAFFIC_STREAM_NONE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_NONE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    const/4 v1, 0x0

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_FREE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_BUSY:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_SLOW:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_SEVERE_CROWDED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_UNCOVERED:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->GTRAFFIC_STREAM_NONE:Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->values()[Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GTrafficStream;

    return-object v0
.end method
