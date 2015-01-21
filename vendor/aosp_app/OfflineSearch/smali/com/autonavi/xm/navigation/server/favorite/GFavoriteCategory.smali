.class public final enum Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public static final enum GFAVORITE_CATEGORY_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_HOME"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_COMPANY"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_SIGHT"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_FRIEND"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_CUSTOMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_ENTERTAINMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const-string v1, "GFAVORITE_CATEGORY_HISTORY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->$VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->values()[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->$VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    return-object v0
.end method
