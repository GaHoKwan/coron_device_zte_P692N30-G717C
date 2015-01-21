.class public final enum Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public static final enum GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_SPEEDLIMIT"

    invoke-direct {v0, v1, v7, v4}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_RESTRICTION_CAMERA"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_ILLEGAL_CAMERA"

    invoke-direct {v0, v1, v8, v6}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_SURVEILLANCE_CAMERA"

    const/4 v2, 0x3

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_LANE_CAMERA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const-string v1, "GSAFE_CATEGORY_ALL"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->$VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->values()[Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->$VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    return-object v0
.end method
