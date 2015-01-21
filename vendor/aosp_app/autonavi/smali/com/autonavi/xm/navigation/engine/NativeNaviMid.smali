.class public Lcom/autonavi/xm/navigation/engine/NativeNaviMid;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_APP_PATH:Ljava/lang/String; = null

.field private static final LIB_DIR:Ljava/lang/String; = "lib"

.field private static final LIB_NAMES:[Ljava/lang/String; = null

.field public static final MAX_JOURNEY_POINT:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/autonavidata60tob/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->DEFAULT_APP_PATH:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NaviEngine60"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GNaviNet"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GDDraw3D_30"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GNaviMid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NaviMid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->LIB_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GDMID_AbortRouteCalculation()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AbortRouteCalculation()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_AbortSearchPOI()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AbortSearchPOI()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static GDMID_AddDetourRoad(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :goto_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshID:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshRoadID:I

    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    invoke-virtual {v5}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->ordinal()I

    move-result v5

    iget-object v10, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->szRoadName:Ljava/lang/String;

    move-wide v8, v6

    invoke-static/range {v0 .. v10}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AddDetourRoad(IIIIIIJJLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method static GDMID_AddFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;->nativeValue:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p2

    iget-short v11, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p2

    iget-short v12, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v19, v0

    invoke-static/range {v1 .. v19}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AddFavorite(IIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    return-object v1
.end method

.method static GDMID_AddGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AddGuideRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 19

    if-nez p1, :cond_0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->ordinal()I

    move-result v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p1

    iget-short v10, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p1

    iget-short v11, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AddJourneyPoint(IIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    goto :goto_0
.end method

.method static GDMID_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 14

    iget v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-short v5, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-short v6, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iget-object v7, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iget-object v8, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-short v8, v8, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iget-object v9, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v9, v9, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iget-object v10, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v10, v10, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    iget-object v11, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v11, v11, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    iget-object v12, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v12, v12, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    iget-object v13, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v13, v13, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    invoke-static/range {v0 .. v13}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AddUserSafeInfo(IIIIISSLjava/lang/String;SBBBBB)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_AdjustCar(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AdjustCar(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_AdjustMapElevation(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AdjustMapElevation(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_AdjustMapViewElevationEx(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_AdjustMapViewElevationEx(IIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_BindRoad()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_BindRoad()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v2, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v3, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_CalcDistance(IIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_CheckDeviate()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_CheckDeviate()Z

    move-result v0

    return v0
.end method

.method static GDMID_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Cleanup()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ClearFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ClearFavorite(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ClearGuideRoute()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ClearGuideRoute()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ClearJourneyPoint()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ClearJourneyPoint()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ClearUserSafeInfo(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_CloseZoomView()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_CloseZoomView()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_Configs_GetBoolean(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_GetBoolean(I[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_GetCoord(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_GetCoord(I[Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_GetInt(I[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_GetRect(I[Lcom/autonavi/xm/navigation/server/GRect;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_GetSize(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_GetSize(I[Lcom/autonavi/xm/navigation/server/GSize;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_PutBoolean(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_Configs_PutCoord(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v2, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_PutCoord(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_PutInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_Configs_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/GRect;->left:I

    iget v2, p1, Lcom/autonavi/xm/navigation/server/GRect;->top:I

    iget v3, p1, Lcom/autonavi/xm/navigation/server/GRect;->right:I

    iget v4, p1, Lcom/autonavi/xm/navigation/server/GRect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_PutRect(IIIII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_PutSize(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GParam;->nativeValue:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/GSize;->cx:I

    iget v2, p1, Lcom/autonavi/xm/navigation/server/GSize;->cy:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_PutSize(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_Configs_SetAutoModeDayNight(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Configs_SetAutoModeDayNight(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    if-ne p0, v0, :cond_2

    aget-object v0, p1, v2

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :goto_1
    iget v2, p0, Lcom/autonavi/xm/navigation/server/GCoordConvert;->nativeValue:I

    invoke-static {v2, v1, v0, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_CoordConvert(III[Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v0, p2, v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object p2, p1

    goto :goto_1
.end method

.method static GDMID_CreateView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_CreateView(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DelFavorite(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DelFavorite(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DelGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DelGuideRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DelJourneyPoint(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DelUserSafeInfo(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DelUserSafeInfo(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_Demoing(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Demoing(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DestroyView()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DestroyView()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DispatchGps(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DispatchGps(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DrawMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DrawMap(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_DrawMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_DrawMapView(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_EditFavorite(Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->nIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteIcon;->nativeValue:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v5, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v7, v7, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v8, v8, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v9, v9, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v10, v10, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v11, v11, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-short v12, v12, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-short v13, v13, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v14, v14, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v15, v15, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v26, v0

    invoke-static/range {v1 .. v26}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_EditFavorite(IIIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSSBBBBB)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    return-object v1
.end method

.method static GDMID_EditUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 14

    iget v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-short v5, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-short v6, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iget-object v7, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iget-object v8, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-short v8, v8, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iget-object v9, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v9, v9, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iget-object v10, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-byte v10, v10, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    iget-object v11, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v11, v11, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    iget-object v12, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v12, v12, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    iget-object v13, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-byte v13, v13, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    invoke-static/range {v0 .. v13}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_EditUserSafeInfo(IIIIISSLjava/lang/String;SBBBBB)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_EngineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v8, v0, [I

    iget-short v0, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData1:S

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData2:S

    iget-short v2, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData3:S

    iget-short v3, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData4:S

    iget-short v4, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData1:S

    iget-short v5, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData2:S

    iget-short v6, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData3:S

    iget-short v7, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData4:S

    invoke-static/range {v0 .. v8}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_EngineMapVerCompare(IIIIIIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    aget v1, v8, v9

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->valueOf(I)Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    move-result-object v1

    aput-object v1, p2, v9

    goto :goto_0
.end method

.method static GDMID_FilterTMCEvent([IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_FilterTMCEvent([IIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_FreePOIGateInfo([Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_FreePOIGateInfo([Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_FreeRelationshipPOI([Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_FreeRelationshipPOI([Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_FreeSettAreaInfo([Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_FreeSettAreaInfo([Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GeoCoordToSP(Lcom/autonavi/xm/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GeoCoordToSP(II[Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetAdareaListLimited(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;Lcom/autonavi/xm/navigation/server/poi/GAdareaType;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ordinal()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaListLimited(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetAdareaWithDataList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdareaWithDataList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->eFlag:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->lTelAreaCode:I

    invoke-static {v2, v1, v0, v3, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetAdminCode(IIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method static GDMID_GetCandidateList(Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;->eCandidateType:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;->szKeyword:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetCandidateList(ILjava/lang/String;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;[Lcom/autonavi/xm/navigation/server/map/GBitmap;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetCountryAreaCode(II[Lcom/autonavi/xm/navigation/server/GCountryAreaACode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetCountryAreaCode(II[I)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget v0, v0, v3

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GCountryAreaACode;->valueOf(I)Lcom/autonavi/xm/navigation/server/GCountryAreaACode;

    move-result-object v0

    aput-object v0, p2, v3

    :cond_0
    return-object v1
.end method

.method static GDMID_GetCurrentJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetCurrentJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetDemoJourneyList([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetDemoJourneyList([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetDemoModelList([Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetDemoModelList([Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetFavoriteList(Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/favorite/GFavoriteCategory;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetFavoriteList(I[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetFavoriteStatus([Lcom/autonavi/xm/navigation/server/favorite/GFavoriteStatus;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetFavoriteStatus([Lcom/autonavi/xm/navigation/server/favorite/GFavoriteStatus;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetGpsInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGpsInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetGuideFlags([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideFlags([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetGuideRoadList(IZ[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideRoadList(IZ[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetGuideRouteCityInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteCityInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideRouteCityInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteCityInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetGuideRouteInfo(I[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideRouteInfo(I[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetGuideRouteList([II[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideRouteList([II[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetInstallCode(Ljava/lang/String;[Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x19

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetInstallCode(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetLastMissedWaypoint([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetLastMissedWaypoint([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetLocLogString([BI)I
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetLocLogString([BI)I

    move-result v0

    return v0
.end method

.method static GDMID_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetManeuverTextList(I[Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetManeuverTextList(I[Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetMapMode([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapMode([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetMapScaleLevel([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapScaleLevel([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMapViewHandle(I[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetMultiManeuverInfo([[Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;IZ[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetMultiManeuverInfo([[Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;IZ[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPOIGateInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPOIGateInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;->sIndex:S

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;->sNumberOfItemToGet:S

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPOIResult(SS[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPathStatisticInfo(IZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPathStatisticInfo(IZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPreDrawMapStatus([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPreDrawMapStatus([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetPriorityCategoryList([Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetPriorityCategoryList([Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetRegisterInfo([Ljava/lang/String;[Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetRegisterInfo([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetRelationshipPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetRelationshipPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetResPath([Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetResPath([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetRoadInfo([Lcom/autonavi/xm/navigation/server/poi/GPoi;III)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetRoadInfo([Lcom/autonavi/xm/navigation/server/poi/GPoi;III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GetSettAreaInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetSettAreaInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetUserSafeInfoList(I[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GoToCCP()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GoToCCP()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GoToCCPMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GoToCCPMapView(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_GuideTheRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GuideTheRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_InitSearchCondition(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v6, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v5, :cond_2

    iget v3, v5, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v5, :cond_1

    iget v4, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_1
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_InitSearchCondition(IIIIILjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method static GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_IsValidateUser(Ljava/lang/String;Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_IsValidateUser(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_LOC_IsNeedUpdateMap()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_LOC_IsNeedUpdateMap()Z

    move-result v0

    return v0
.end method

.method static GDMID_LoadDemoJourney(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_LoadDemoJourney(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_LoadGuideRoute(Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_LoadGuideRoute(Ljava/lang/String;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_LocResetGpsInfo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_LocResetGpsInfo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MapMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    new-array v8, v0, [I

    iget-short v0, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData1:S

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData2:S

    iget-short v2, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData3:S

    iget-short v3, p0, Lcom/autonavi/xm/navigation/server/GVersion;->nData4:S

    iget-short v4, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData1:S

    iget-short v5, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData2:S

    iget-short v6, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData3:S

    iget-short v7, p1, Lcom/autonavi/xm/navigation/server/GVersion;->nData4:S

    invoke-static/range {v0 .. v8}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_EngineMapVerCompare(IIIIIIII[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    aget v1, v8, v9

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->valueOf(I)Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    move-result-object v1

    aput-object v1, p2, v9

    goto :goto_0
.end method

.method static GDMID_MapViewPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MapViewPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MapViewSP(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MapViewSP(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MapViewZoomInEx(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MapViewZoomInEx(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MapViewZoomOutEx(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MapViewZoomOutEx(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MapViewZoomTo(ILcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MapViewZoomTo(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ModelDemoing()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ModelDemoing()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_MoveMap(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MoveMap(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_MoveMapByGeoCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MoveMapByGeoCoord(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_MoveMapView(Lcom/autonavi/xm/navigation/server/map/GMoveMap;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, v2, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_MoveMapView(IIII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_PreDrawMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_PreDrawMap(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_PreDrawMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_PreDrawMapView(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_Register(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Register(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_RemoveGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RemoveGuideRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_RepeatNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RepeatNaviSound()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RequestNearestPOI(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_ResetMapView(ILcom/autonavi/xm/navigation/server/map/GMapViewFlag;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p1, Lcom/autonavi/xm/navigation/server/map/GMapViewFlag;->nativeValue:I

    invoke-static {p0, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ResetMapView(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_RotateMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RotateMap(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_RotateMapView(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RotateMapView(IIZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_RouteRecalculate([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_RouteRecalculate([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_SaveGuideRoute(ILjava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SaveGuideRoute(ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SaveUserConfig()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SaveUserConfig()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SearchAdareaInfo(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 8

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v6, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v5, :cond_3

    iget v3, v5, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v5, :cond_2

    iget v4, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_2
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;->ordinal()I

    move-result v6

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SearchAdareaInfo(IIIIILjava/lang/String;I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method static GDMID_SelectGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SelectGuideRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SelectRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SelectRoute(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetAdareaDataStatus(IZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetAdareaDataStatus(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetCallbackFun(Lcom/autonavi/xm/navigation/server/poi/GPoiBlCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetCallbackFun(Lcom/autonavi/xm/navigation/server/poi/GPoiBlCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetCarPosition(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetCarPosition(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetCurAdarea(II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetECompassData(Lcom/autonavi/xm/navigation/server/map/GECompassData;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget v0, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nTimestamp:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nDeviceAttitude:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GECompassData;->nAzimuth:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetECompassData(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetGpsInfo(Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 22

    if-nez p0, :cond_0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLon:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->lLat:I

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cStatus:B

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLongitude:B

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cLatitude:B

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cYear:B

    move-object/from16 v0, p0

    iget-byte v8, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMonth:B

    move-object/from16 v0, p0

    iget-byte v9, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cDay:B

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cHour:B

    move-object/from16 v0, p0

    iget-byte v11, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cMinute:B

    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSecond:B

    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->cSatelliteNum:B

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dSpeed:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAzimuth:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dHDOP:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfoEx;->dAltitude:D

    move-wide/from16 v20, v0

    invoke-static/range {v2 .. v21}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetGpsInfo(IIBBBBBBBBBBDDDD)I

    move-result v2

    invoke-static {v2}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    goto :goto_0
.end method

.method static GDMID_SetGyroData(II[IJ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetGyroData(II[IJ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetLocInfo(J)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetLocInfo(J)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetMapMode(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetMapMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetMapScaleLevel(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetMapScaleLevel(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetMapViewMode(IILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p2}, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->ordinal()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetMapViewMode(III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetPriorityCategory([II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetPriorityCategory([II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetPulseData(IIJ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetPulseData(IIJ)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetShowPOIName(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetShowPOIName(Z)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetSoundCallback(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetSoundCallback(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SetViewMode(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SetViewMode(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ShowMapView(Lcom/autonavi/xm/navigation/server/map/GMapViewType;III)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->ordinal()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ShowMapView(IIII)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_SpeakNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_SpeakNaviSound()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StartDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StartGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartGuidance()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StartGuide(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartGuide(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StartModelDemo(Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->szModelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->szSPCode:Ljava/lang/String;

    iget v2, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nScaleLevel:I

    iget v3, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nElevation:I

    iget v4, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoModelInfo;->nRadius:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartModelDemo(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_StartRouteCalculation(Z[I[II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p3, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartRouteCalculation(Z[I[II)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v6, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eRoutePoiType:Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iget v2, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    if-eqz v5, :cond_2

    iget v3, v5, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    :goto_1
    if-eqz v5, :cond_1

    iget v4, v5, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_1
    iget-object v5, p0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/poi/GRoutePoiType;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StartSearchPOI(IIIIILjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method static GDMID_Startup(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_Startup(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StopDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StopGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StopGuidance()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StopGuide()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StopGuide()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StopModelDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StopModelDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_StopRouteDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_StopRouteDemo()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static GDMID_TMC_CheckLoginData([BI)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_CheckLoginData([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_Close()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_Close()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_GetFrequency([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_GetFrequency([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_GetURL([Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_GetURL([Ljava/lang/String;[I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_IsShow()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_IsShow()Z

    move-result v0

    return v0
.end method

.method public static GDMID_TMC_IsSupport()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_IsSupport()Z

    move-result v0

    return v0
.end method

.method public static GDMID_TMC_ParseDownloadedData([BI)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_ParseDownloadedData([BI)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_Prepare()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_Prepare()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static GDMID_TMC_Release()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_Release()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static GDMID_TMC_SelectCity([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_SelectCity([I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static GDMID_TMC_Update()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_TMC_Update()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ToNextViewMode(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ToNextViewMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ViewCross(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ViewCross(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ViewPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 18

    if-nez p0, :cond_0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    move-object/from16 v0, p0

    iget-short v9, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    move-object/from16 v0, p0

    iget-short v10, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    move/from16 v17, v0

    invoke-static/range {v1 .. v17}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ViewPOI(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    goto :goto_0
.end method

.method static GDMID_ViewSP(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ViewSP(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ViewTmc(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ViewTmc(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_WGSToGDCoord(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_WGSToGDCoord(II[Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method static GDMID_ZoomIn(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ZoomIn(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ZoomOut(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ZoomOut(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GDMID_ZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_ZoomTo(I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static GetGuideRoadTMCList([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_GDMID_GetGuideRoadTMCList([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/GStatus;->valueOf(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v3, 0x1

    const/high16 v5, 0x10

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v2, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v1, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method static getGraphicsVersion()I
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_getGraphicsLib()I

    move-result v0

    return v0
.end method

.method public static load(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->DEFAULT_APP_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->load(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static load(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "GDNaviMid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, ""

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_1
    sget-object v4, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->LIB_NAMES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " loaded!\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.autonavi.xmgd.navigator.tob/lib/lib"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_3
    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :cond_1
    :try_start_4
    sget-object v4, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->LIB_NAMES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_3
    move-exception v7

    :try_start_6
    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v6

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "debug.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->writeFile(Ljava/io/File;[BZ)Z

    :cond_3
    move v0, v2

    :goto_5
    return v0

    :catch_5
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "debug.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->writeFile(Ljava/io/File;[BZ)Z

    :cond_4
    move v0, v1

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "debug.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->writeFile(Ljava/io/File;[BZ)Z

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method private static native native_GDMID_AbortRouteCalculation()I
.end method

.method private static native native_GDMID_AbortSearchPOI()I
.end method

.method private static native native_GDMID_AddDetourRoad(IIIIIIJJLjava/lang/String;)I
.end method

.method private static native native_GDMID_AddFavorite(IIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I
.end method

.method private static native native_GDMID_AddGuideRoute(I)I
.end method

.method private static native native_GDMID_AddJourneyPoint(IIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I
.end method

.method private static native native_GDMID_AddUserSafeInfo(IIIIISSLjava/lang/String;SBBBBB)I
.end method

.method private static native native_GDMID_AdjustCar(III)I
.end method

.method private static native native_GDMID_AdjustMapElevation(I)I
.end method

.method private static native native_GDMID_AdjustMapViewElevationEx(IIZ)I
.end method

.method private static native native_GDMID_BindRoad()I
.end method

.method private static native native_GDMID_CalcDistance(IIII[I)I
.end method

.method private static native native_GDMID_CheckDeviate()Z
.end method

.method private static native native_GDMID_Cleanup()I
.end method

.method private static native native_GDMID_ClearFavorite(I)I
.end method

.method private static native native_GDMID_ClearGuideRoute()I
.end method

.method private static native native_GDMID_ClearJourneyPoint()I
.end method

.method private static native native_GDMID_ClearUserSafeInfo(I)I
.end method

.method private static native native_GDMID_CloseZoomView()I
.end method

.method private static native native_GDMID_Configs_GetBoolean(I[Z)I
.end method

.method private static native native_GDMID_Configs_GetCoord(I[Lcom/autonavi/xm/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_Configs_GetInt(I[I)I
.end method

.method private static native native_GDMID_Configs_GetRect(I[Lcom/autonavi/xm/navigation/server/GRect;)I
.end method

.method private static native native_GDMID_Configs_GetSize(I[Lcom/autonavi/xm/navigation/server/GSize;)I
.end method

.method private static native native_GDMID_Configs_PutBoolean(IZ)I
.end method

.method private static native native_GDMID_Configs_PutCoord(III)I
.end method

.method private static native native_GDMID_Configs_PutInt(II)I
.end method

.method private static native native_GDMID_Configs_PutRect(IIIII)I
.end method

.method private static native native_GDMID_Configs_PutSize(III)I
.end method

.method private static native native_GDMID_Configs_SetAutoModeDayNight(I)I
.end method

.method private static native native_GDMID_CoordConvert(III[Lcom/autonavi/xm/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_CreateView(I)I
.end method

.method private static native native_GDMID_DelFavorite(II)I
.end method

.method private static native native_GDMID_DelGuideRoute(I)I
.end method

.method private static native native_GDMID_DelJourneyPoint(I)I
.end method

.method private static native native_GDMID_DelUserSafeInfo(II)I
.end method

.method private static native native_GDMID_Demoing(I)I
.end method

.method private static native native_GDMID_DestroyView()I
.end method

.method private static native native_GDMID_DispatchGps(J)I
.end method

.method private static native native_GDMID_DrawMap(I)I
.end method

.method private static native native_GDMID_DrawMapView(I)I
.end method

.method private static native native_GDMID_EditFavorite(IIIIIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBSSBBBBB)I
.end method

.method private static native native_GDMID_EditUserSafeInfo(IIIIISSLjava/lang/String;SBBBBB)I
.end method

.method private static native native_GDMID_EngineMapVerCompare(IIIIIIII[I)I
.end method

.method private static native native_GDMID_FilterTMCEvent([IIZ)I
.end method

.method private static native native_GDMID_FreePOIGateInfo([Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)I
.end method

.method private static native native_GDMID_FreeRelationshipPOI([Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)I
.end method

.method private static native native_GDMID_FreeSettAreaInfo([Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)I
.end method

.method private static native native_GDMID_GeoCoordToSP(II[Ljava/lang/String;I)I
.end method

.method private static native native_GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)I
.end method

.method private static native native_GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)I
.end method

.method private static native native_GDMID_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)I
.end method

.method private static native native_GDMID_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetAdareaListLimited(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;I)I
.end method

.method private static native native_GDMID_GetAdareaWithDataList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)I
.end method

.method private static native native_GDMID_GetAdminCode(IIII[I)I
.end method

.method private static native native_GDMID_GetCandidateList(ILjava/lang/String;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)I
.end method

.method private static native native_GDMID_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;[Lcom/autonavi/xm/navigation/server/map/GBitmap;)I
.end method

.method private static native native_GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)I
.end method

.method private static native native_GDMID_GetCountryAreaCode(II[I)I
.end method

.method private static native native_GDMID_GetCurrentJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetDemoJourneyList([Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyList;)I
.end method

.method private static native native_GDMID_GetDemoModelList([Lcom/autonavi/xm/navigation/server/demo/GDemoModelList;[I)I
.end method

.method private static native native_GDMID_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetFavoriteList(I[Lcom/autonavi/xm/navigation/server/favorite/GFavoritePoiList;)I
.end method

.method private static native native_GDMID_GetFavoriteStatus([Lcom/autonavi/xm/navigation/server/favorite/GFavoriteStatus;)I
.end method

.method private static native native_GDMID_GetGpsInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)I
.end method

.method private static native native_GDMID_GetGuideFlags([I)I
.end method

.method private static native native_GDMID_GetGuideRoadList(IZ[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)I
.end method

.method private static native native_GDMID_GetGuideRoadTMCList([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)I
.end method

.method private static native native_GDMID_GetGuideRouteCityInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteCityInfo;)I
.end method

.method private static native native_GDMID_GetGuideRouteInfo(I[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)I
.end method

.method private static native native_GDMID_GetGuideRouteList([II[I)I
.end method

.method private static native native_GDMID_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)I
.end method

.method private static native native_GDMID_GetInstallCode(Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method private static native native_GDMID_GetJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetLastMissedWaypoint([I)I
.end method

.method private static native native_GDMID_GetLocLogString([BI)I
.end method

.method private static native native_GDMID_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)I
.end method

.method private static native native_GDMID_GetManeuverTextList(I[Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)I
.end method

.method private static native native_GDMID_GetMapCenterInfo([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)I
.end method

.method private static native native_GDMID_GetMapMode([I)I
.end method

.method private static native native_GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)I
.end method

.method private static native native_GDMID_GetMapScaleLevel([I)I
.end method

.method private static native native_GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)I
.end method

.method private static native native_GDMID_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)I
.end method

.method private static native native_GDMID_GetMapViewHandle(I[I)I
.end method

.method private static native native_GDMID_GetMultiManeuverInfo([[Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;IZ[I)I
.end method

.method private static native native_GDMID_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)I
.end method

.method private static native native_GDMID_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)I
.end method

.method private static native native_GDMID_GetPOIGateInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)I
.end method

.method private static native native_GDMID_GetPOIResult(SS[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)I
.end method

.method private static native native_GDMID_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)I
.end method

.method private static native native_GDMID_GetPathStatisticInfo(IZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)I
.end method

.method private static native native_GDMID_GetPreDrawMapStatus([I)I
.end method

.method private static native native_GDMID_GetPriorityCategoryList([Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;)I
.end method

.method private static native native_GDMID_GetRegisterInfo([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native native_GDMID_GetRelationshipPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;)I
.end method

.method private static native native_GDMID_GetResPath([Ljava/lang/String;)I
.end method

.method private static native native_GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)I
.end method

.method private static native native_GDMID_GetRoadInfo([Lcom/autonavi/xm/navigation/server/poi/GPoi;III)I
.end method

.method private static native native_GDMID_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)I
.end method

.method private static native native_GDMID_GetSettAreaInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)I
.end method

.method private static native native_GDMID_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)I
.end method

.method private static native native_GDMID_GetUserSafeInfoList(I[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)I
.end method

.method private static native native_GDMID_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)I
.end method

.method private static native native_GDMID_GoToCCP()I
.end method

.method private static native native_GDMID_GoToCCPMapView(I)I
.end method

.method private static native native_GDMID_GuideTheRoute(I)I
.end method

.method private static native native_GDMID_InitSearchCondition(IIIIILjava/lang/String;I)I
.end method

.method private static native native_GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)I
.end method

.method private static native native_GDMID_IsValidateUser(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native native_GDMID_LOC_IsNeedUpdateMap()Z
.end method

.method private static native native_GDMID_LoadDemoJourney(I)I
.end method

.method private static native native_GDMID_LoadGuideRoute(Ljava/lang/String;[I)I
.end method

.method private static native native_GDMID_LocResetGpsInfo()I
.end method

.method private static native native_GDMID_MapMapVerCompare(IIIIIIII[I)I
.end method

.method private static native native_GDMID_MapViewPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)I
.end method

.method private static native native_GDMID_MapViewSP(Ljava/lang/String;Z)I
.end method

.method private static native native_GDMID_MapViewZoomInEx(II)I
.end method

.method private static native native_GDMID_MapViewZoomOutEx(II)I
.end method

.method private static native native_GDMID_MapViewZoomTo(III)I
.end method

.method private static native native_GDMID_ModelDemoing()I
.end method

.method private static native native_GDMID_MoveMap(III)I
.end method

.method private static native native_GDMID_MoveMapByGeoCoord(II)I
.end method

.method private static native native_GDMID_MoveMapView(IIII)I
.end method

.method private static native native_GDMID_PreDrawMap(I)I
.end method

.method private static native native_GDMID_PreDrawMapView(I)I
.end method

.method private static native native_GDMID_Register(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_RemoveGuideRoute(I)I
.end method

.method private static native native_GDMID_RepeatNaviSound()I
.end method

.method private static native native_GDMID_RequestNearestPOI(II)I
.end method

.method private static native native_GDMID_ResetMapView(II)I
.end method

.method private static native native_GDMID_RotateMap(I)I
.end method

.method private static native native_GDMID_RotateMapView(IIZ)I
.end method

.method private static native native_GDMID_RouteRecalculate([I)I
.end method

.method private static native native_GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_SaveGuideRoute(ILjava/lang/String;Z)I
.end method

.method private static native native_GDMID_SaveUserConfig()I
.end method

.method private static native native_GDMID_SearchAdareaInfo(IIIIILjava/lang/String;I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)I
.end method

.method private static native native_GDMID_SelectGuideRoute(I)I
.end method

.method private static native native_GDMID_SelectRoute(I)I
.end method

.method private static native native_GDMID_SetAdareaDataStatus(IZ)I
.end method

.method private static native native_GDMID_SetCallbackFun(Lcom/autonavi/xm/navigation/server/poi/GPoiBlCallback;)I
.end method

.method private static native native_GDMID_SetCarPosition(I)I
.end method

.method private static native native_GDMID_SetCurAdarea(II)I
.end method

.method private static native native_GDMID_SetECompassData(III)I
.end method

.method private static native native_GDMID_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)I
.end method

.method private static native native_GDMID_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)I
.end method

.method private static native native_GDMID_SetGpsInfo(IIBBBBBBBBBBDDDD)I
.end method

.method private static native native_GDMID_SetGyroData(II[IJ)I
.end method

.method private static native native_GDMID_SetLocInfo(J)I
.end method

.method private static native native_GDMID_SetMapMode(I)I
.end method

.method private static native native_GDMID_SetMapScaleLevel(I)I
.end method

.method private static native native_GDMID_SetMapViewMode(III)I
.end method

.method private static native native_GDMID_SetPriorityCategory([II)I
.end method

.method private static native native_GDMID_SetPulseData(IIJ)I
.end method

.method private static native native_GDMID_SetShowPOIName(Z)I
.end method

.method private static native native_GDMID_SetSoundCallback(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)I
.end method

.method private static native native_GDMID_SetViewMode(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)I
.end method

.method private static native native_GDMID_ShowMapView(IIII)I
.end method

.method private static native native_GDMID_SpeakNaviSound()I
.end method

.method private static native native_GDMID_StartDemo()I
.end method

.method private static native native_GDMID_StartGuidance()I
.end method

.method private static native native_GDMID_StartGuide(I)I
.end method

.method private static native native_GDMID_StartModelDemo(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private static native native_GDMID_StartRouteCalculation(Z[I[II)I
.end method

.method private static native native_GDMID_StartSearchPOI(IIIIILjava/lang/String;I)I
.end method

.method private static native native_GDMID_Startup(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_StopDemo()I
.end method

.method private static native native_GDMID_StopGuidance()I
.end method

.method private static native native_GDMID_StopGuide()I
.end method

.method private static native native_GDMID_StopModelDemo()I
.end method

.method private static native native_GDMID_StopRouteDemo()I
.end method

.method private static native native_GDMID_TMC_CheckLoginData([BI)I
.end method

.method private static native native_GDMID_TMC_Close()I
.end method

.method private static native native_GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)I
.end method

.method private static native native_GDMID_TMC_GetFrequency([I)I
.end method

.method private static native native_GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native native_GDMID_TMC_GetURL([Ljava/lang/String;[I)I
.end method

.method private static native native_GDMID_TMC_IsShow()Z
.end method

.method private static native native_GDMID_TMC_IsSupport()Z
.end method

.method private static native native_GDMID_TMC_ParseDownloadedData([BI)I
.end method

.method private static native native_GDMID_TMC_Prepare()I
.end method

.method private static native native_GDMID_TMC_Release()I
.end method

.method private static native native_GDMID_TMC_SelectCity([I)I
.end method

.method private static native native_GDMID_TMC_Update()I
.end method

.method private static native native_GDMID_ToNextViewMode(I)I
.end method

.method private static native native_GDMID_ViewCross(I)I
.end method

.method private static native native_GDMID_ViewPOI(IIIIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)I
.end method

.method private static native native_GDMID_ViewSP(Ljava/lang/String;)I
.end method

.method private static native native_GDMID_ViewTmc(I)I
.end method

.method private static native native_GDMID_WGSToGDCoord(II[Lcom/autonavi/xm/navigation/server/GCoord;)I
.end method

.method private static native native_GDMID_ZoomIn(I)I
.end method

.method private static native native_GDMID_ZoomOut(I)I
.end method

.method private static native native_GDMID_ZoomTo(I)I
.end method

.method public static native native_UI_LoadGDConfig(Ljava/lang/String;Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;)I
.end method

.method private static native native_getGraphicsLib()I
.end method

.method private static native native_prepareHelper(Landroid/content/Context;)V
.end method

.method private static native native_releaseHelper()V
.end method

.method public static writeFile(Ljava/io/File;[BZ)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_3

    :catch_7
    move-exception v2

    goto :goto_2
.end method
