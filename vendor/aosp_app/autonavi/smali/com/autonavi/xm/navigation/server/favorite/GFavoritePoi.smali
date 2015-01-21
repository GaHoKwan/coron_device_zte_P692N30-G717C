.class public Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;
.super Ljava/lang/Object;


# instance fields
.field public Date:Lcom/autonavi/xm/navigation/server/GDate;

.field public Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

.field public Time:Lcom/autonavi/xm/navigation/server/GTime;

.field public eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

.field public eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

.field public nIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->nIndex:I

    invoke-static {p2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-static {p3}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;->valueOf(I)Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->nIndex:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method
