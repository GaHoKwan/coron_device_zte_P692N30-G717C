.class public final enum Lcom/autonavi/xm/navigation/server/GCoordConvert;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/GCoordConvert;

.field public static final enum GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

.field public static final enum GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;

    const-string v1, "GCC_SCR_TO_GEO"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/server/GCoordConvert;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;

    const-string v1, "GCC_GEO_TO_SCR"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/navigation/server/GCoordConvert;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GCoordConvert;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->$VALUES:[Lcom/autonavi/xm/navigation/server/GCoordConvert;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/GCoordConvert;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/GCoordConvert;->values()[Lcom/autonavi/xm/navigation/server/GCoordConvert;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GCoordConvert;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/GCoordConvert;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->$VALUES:[Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/GCoordConvert;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/GCoordConvert;

    return-object v0
.end method