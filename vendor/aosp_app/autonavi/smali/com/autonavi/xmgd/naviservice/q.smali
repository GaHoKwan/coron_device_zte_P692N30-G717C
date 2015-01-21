.class public Lcom/autonavi/xmgd/naviservice/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/q;


# instance fields
.field private b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

.field private c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/autonavi/xmgd/e/a;

.field private f:Lcom/autonavi/xmgd/e/h;

.field private g:Lcom/autonavi/xmgd/e/e;

.field private h:I

.field private i:Lcom/autonavi/xmgd/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/q;->a:Lcom/autonavi/xmgd/naviservice/q;

    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->GFAVORITE_CATEGORY_FRIEND:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    sget-object v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;->GFAVORITE_ICON_HISTORY:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xmgd/d/f;

    invoke-direct {v0}, Lcom/autonavi/xmgd/d/f;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    new-instance v0, Lcom/autonavi/xmgd/e/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/a;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    new-instance v0, Lcom/autonavi/xmgd/e/h;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/h;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    new-instance v0, Lcom/autonavi/xmgd/e/e;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/e;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    return-void
.end method

.method private A(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_StartSearchPOI(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_StartSearchPOI(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_SearchByKeyworkAndAddress(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_StartSearchPOI(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/xmgd/e/g;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-array v2, v5, [Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v3, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aget-object v3, v2, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v3, v4}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->isSame(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/q;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/q;->a:Lcom/autonavi/xmgd/naviservice/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/q;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/q;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/q;->a:Lcom/autonavi/xmgd/naviservice/q;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/q;->a:Lcom/autonavi/xmgd/naviservice/q;

    return-object v0
.end method

.method private b(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object p1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p2, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    const/16 v1, 0x2710

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    iput-object p3, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    :goto_0
    iget v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    const v2, 0xc350

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_StartSearchPOI(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    add-int/lit16 v1, v1, 0x1388

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/xmgd/d/f;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/d/f;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/xmgd/d/a;->a()Lcom/autonavi/xmgd/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/xmgd/d/f;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/d/f;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/xmgd/d/b;->a()Lcom/autonavi/xmgd/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/d/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/xmgd/d/f;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/d/f;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/xmgd/d/g;->a()Lcom/autonavi/xmgd/d/g;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->i:Lcom/autonavi/xmgd/d/f;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/d/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->convertToSBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_COORD:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    invoke-direct {v0, v1, p1, v3}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v1, v3

    return v0
.end method

.method public a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p2}, Lcom/autonavi/xmgd/naviservice/q;->t(Ljava/lang/String;)I

    move-result v0

    const v1, 0x5f5e100

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/e;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    iget-object v2, p1, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/naviservice/q;->i(I)V

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/h;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->h(I)V

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->x(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->y(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->a:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/a;->e(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->a:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/a;->d(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/a;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->i(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public a([Lcom/autonavi/xmgd/e/k;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-array v0, v1, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    new-instance v1, Lcom/autonavi/xmgd/naviservice/s;

    invoke-direct {v1, p0, v0}, Lcom/autonavi/xmgd/naviservice/s;-><init>(Lcom/autonavi/xmgd/naviservice/q;Lcom/autonavi/xm/navigation/server/GCoord;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public a(II)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xmgd/naviservice/q;->c(II)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->nTel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->nTel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xad570 -> :sswitch_0
        0xc5c10 -> :sswitch_0
        0xc8320 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IILcom/autonavi/xm/navigation/server/map/GLanguage;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v5, [I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    const-string v0, ""

    new-array v2, v5, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    if-eqz p3, :cond_0

    aget v3, v1, v4

    invoke-static {v3}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v3

    if-ne v3, p3, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v1, p1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    aget-object v1, v2, v4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne p3, v1, :cond_6

    :cond_1
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v3

    invoke-interface {v3, p3}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v3, p1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v3

    aget v1, v1, v4

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-ne p2, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-nez p2, :cond_9

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    if-eqz v1, :cond_7

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    if-ne p2, v5, :cond_c

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    if-eqz v0, :cond_a

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    if-ne p2, v6, :cond_2

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    if-eqz v0, :cond_d

    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    aget-object v0, v2, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method a(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Lcom/autonavi/xm/navigation/engine/GDBL_Safe;Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    new-instance v2, Lcom/autonavi/xmgd/naviservice/r;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/naviservice/r;-><init>(Lcom/autonavi/xmgd/naviservice/q;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p4}, Lcom/autonavi/xmgd/naviservice/q;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-array v1, v3, [Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v4, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v3, v4, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    iget v3, v3, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    aget-object v1, v1, v0

    iget v1, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    if-eq v3, v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v3, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v1, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-array v1, v3, [Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v3, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    aget-object v0, v1, v0

    iget v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_3
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/g;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/g;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    div-int/lit16 v0, p1, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1adb0 -> :sswitch_0
        0x1d4c0 -> :sswitch_0
        0x4baf0 -> :sswitch_0
        0x7a120 -> :sswitch_0
        0xad570 -> :sswitch_0
        0xc5c10 -> :sswitch_0
        0xc8320 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/q;->d()V

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/autonavi/xmgd/e/a;->a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->g(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/a;->b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v2, p1, p2, p3}, Lcom/autonavi/xmgd/e/e;->a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/g;)I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {v3, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_DelUserSafeInfo(II)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    iget-object v3, p2, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->h(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/q;->d()V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lcom/autonavi/xmgd/naviservice/q;->i(Ljava/lang/String;)I

    move-result v0

    const v1, 0xbebc200

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/a;->a(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/naviservice/q;->g(I)V

    goto :goto_0
.end method

.method public b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/autonavi/xmgd/naviservice/q;->t(Ljava/lang/String;)I

    move-result v0

    const v1, 0x5f5e100

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/e;->b(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/h;->a(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->h(I)V

    :cond_0
    return v0
.end method

.method public b([Lcom/autonavi/xmgd/e/k;)I
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/naviservice/t;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/naviservice/t;-><init>(Lcom/autonavi/xmgd/naviservice/q;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(IILcom/autonavi/xm/navigation/server/map/GLanguage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/GCoord;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f07000c

    const/4 v4, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/a;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/h;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/e;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/q;->a:Lcom/autonavi/xmgd/naviservice/q;

    return-void
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/g;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xmgd/e/h;->b(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->h(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/q;->d()V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/naviservice/q;->h:I

    return v0
.end method

.method public c(II)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_COORD:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v1, v3

    return v0
.end method

.method public c(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v4, v0, p2}, Lcom/autonavi/xmgd/e/e;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->i(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public c(I)V
    .locals 2

    iput p1, p0, Lcom/autonavi/xmgd/naviservice/q;->h:I

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public c(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xmgd/e/a;->c(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/q;->g(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v2, p1, p2}, Lcom/autonavi/xmgd/e/e;->c(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/g;)I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_DelUserSafeInfo(II)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->i(I)V

    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/q;->d()V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/a;->d(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/naviservice/q;->d()V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e(I)Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/e/a;->e(Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f(I)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->c(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->g(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/h;->c(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->h(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/h;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->f:Lcom/autonavi/xmgd/e/h;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/h;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/e;->c(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v2, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/naviservice/q;->i(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/e;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->g:Lcom/autonavi/xmgd/e/e;

    invoke-virtual {v2, p1}, Lcom/autonavi/xmgd/e/e;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    sget-object v3, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/naviservice/q;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v5, p0, Lcom/autonavi/xmgd/naviservice/q;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v5, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->g(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->e:Lcom/autonavi/xmgd/e/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/e/a;->h(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v7, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v0, v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    aget-object v3, v7, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->lNumberOfAdarea:I

    if-ge v0, v3, :cond_a

    aget-object v3, v7, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v3, v3, v0

    iget-object v5, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v0, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    move-object v4, v5

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    :goto_2
    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "[\u7701\u5e02]"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ",\uff0c"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    array-length v0, v5

    :goto_3
    if-ge v1, v0, :cond_9

    aget-object v6, v5, v1

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    iget v0, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    :goto_4
    if-ne v0, v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, v5

    if-eqz v1, :cond_8

    move v0, v2

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move-object v0, v4

    move v3, v2

    goto/16 :goto_2
.end method

.method public y(Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x0

    const/4 v9, 0x5

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v7, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/q;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v0, v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    aget-object v3, v7, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->lNumberOfAdarea:I

    if-ge v0, v3, :cond_a

    aget-object v3, v7, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v3, v3, v0

    iget-object v5, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v0, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    move-object v4, v5

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    :goto_2
    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ",\uff0c"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    array-length v0, v5

    :goto_3
    if-ge v1, v0, :cond_9

    aget-object v6, v5, v1

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    iget v0, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    :goto_4
    if-ne v0, v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, v5

    if-eqz v1, :cond_8

    move v0, v2

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move-object v0, v4

    move v3, v2

    goto/16 :goto_2
.end method
