.class public Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;
.super Ljava/lang/Object;


# static fields
.field private static mGDBL_Favorite:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;->mGDBL_Favorite:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;->mGDBL_Favorite:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;->mGDBL_Favorite:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_AddFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AddFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ClearFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ClearFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_DelFavorite(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DelFavorite(II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_EditFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_EditFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetFavoriteList(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetFavoriteList(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method
