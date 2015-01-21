.class public Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfItem:I

.field public pFavoritePOI:[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->nNumberOfItem:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;->pFavoritePOI:[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;

    return-void
.end method
