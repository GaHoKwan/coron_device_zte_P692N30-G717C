.class public final enum Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_ALL:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

.field public static final enum GFAVORITE_SHOW_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_DEFAULT"

    invoke-direct {v0, v1, v8, v4}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_HOME"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_COMPANY"

    invoke-direct {v0, v1, v5, v6}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_SIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_FRIEND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_CUSTOMER"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_ENTERTAINMENT"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_HISTORY"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const-string v1, "GFAVORITE_SHOW_ALL"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_ALL:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_DEFAULT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v1, v0, v8

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_HOME:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_COMPANY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_SIGHT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_CUSTOMER:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_ENTERTAINMENT:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->GFAVORITE_SHOW_ALL:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    aput-object v1, v0, v7

    sput-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->values()[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/favorite/GFavoriteShowOption;

    return-object v0
.end method
