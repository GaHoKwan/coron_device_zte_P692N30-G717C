.class public final enum Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

.field public static final enum GROUTE_FLAG_DEFAULT:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

.field public static final enum GROUTE_FLAG_TMC:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    const-string v1, "GROUTE_FLAG_DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->GROUTE_FLAG_DEFAULT:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    const-string v1, "GROUTE_FLAG_TMC"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->GROUTE_FLAG_TMC:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->GROUTE_FLAG_DEFAULT:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->GROUTE_FLAG_TMC:Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->value:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->values()[Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GRouteFlag;

    return-object v0
.end method