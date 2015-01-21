.class public final enum Lcom/autonavi/xm/navigation/server/GVerCheckResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/GVerCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/GVerCheckResult;

.field public static final enum GVERSION_NEWER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

.field public static final enum GVERSION_OLDER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

.field public static final enum GVERSION_SAME:Lcom/autonavi/xm/navigation/server/GVerCheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    const-string v1, "GVERSION_SAME"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_SAME:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    const-string v1, "GVERSION_OLDER"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_OLDER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    const-string v1, "GVERSION_NEWER"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_NEWER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_SAME:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_OLDER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_NEWER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->$VALUES:[Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/GVerCheckResult;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->values()[Lcom/autonavi/xm/navigation/server/GVerCheckResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GVerCheckResult;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/GVerCheckResult;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->$VALUES:[Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/GVerCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    return-object v0
.end method
