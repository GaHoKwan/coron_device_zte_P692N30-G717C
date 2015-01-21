.class public Lcom/autonavi/xm/navigation/engine/GDBL_Map;
.super Ljava/lang/Object;


# static fields
.field private static final ANTI_FLING_VELOCITY:I = 0x50

.field private static final INTERVAL_FLING:I = 0x1e

.field private static final INTERVAL_SWITCH_VIEW_MODE:I = 0x2d

.field private static final INTERVAL_ZOOM:I = 0x3c

.field private static final MAX_SWITCH_VIEW_MODE_STEP_COUNT:I = 0x5

.field private static final MAX_ZOOM_STEP_COUNT:I = 0x4

.field private static final WHAT_DRAW:I = 0x7

.field private static final WHAT_SCALE_FINISH:I = 0x5

.field private static final WHAT_SCALE_IN:I = 0x1

.field private static final WHAT_SCALE_OUT:I = 0x2

.field private static final WHAT_SCALE_TO:I = 0x6

.field private static final WHAT_SWIPE:I = 0x4

.field private static final WHAT_TO_NEXT_VIEW_MODE:I = 0x3

.field private static sGDBL_Map:Lcom/autonavi/xm/navigation/engine/GDBL_Map;


# instance fields
.field private isScaleRunning:Z

.field private mCurrentHandle:I

.field private mGMapViewType:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field private mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

.field private mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

.field private mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mGMapViewType:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    return-void
.end method

.method private GDBL_ZoomTo_Inner(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->doZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_ZoomTo_Inner(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    return p1
.end method

.method private drawFlagMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isMapSurfaceExist()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnDrawMapViewStart()V

    :cond_2
    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_PreDrawMap(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DrawMap(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnDrawMapViewEnd()V

    goto :goto_0
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->sGDBL_Map:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->sGDBL_Map:Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->sGDBL_Map:Lcom/autonavi/xm/navigation/engine/GDBL_Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isWholeViewHandle(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {v3, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private stopMap()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_AdjustCar(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AdjustCar(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_AdjustMapElevation(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AdjustMapViewElevationEx(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_CoordConvert(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCarImage(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCarInfo([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMapCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {v0, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapView([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapView;->Center:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapView;->Center:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_0
    return-object v0
.end method

.method public GDBL_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewCenterInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMapViewInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapObjectInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMapViewInfo([Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetMapViewInfo(I[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetZoomViewObject([Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GoToCCP(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GoToCCP()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_MoveMap(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mLastCenter:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MoveMapView(Lcom/autonavi/xm/navigation/server/map/GMoveMap;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aput v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v5, v5, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_MoveMapByGeoCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MoveMapByGeoCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_MoveMapView(ILcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p2, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MoveMapView(Lcom/autonavi/xm/navigation/server/map/GMoveMap;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_RefreshMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_ResetMapView(ILcom/autonavi/xm/navigation/server/map/GMapViewFlag;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ResetMapView(ILcom/autonavi/xm/navigation/server/map/GMapViewFlag;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_RotateMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RotateMapView(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_RotateMapView(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RotateMapView(IIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_RotateMapView(IZFFF)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetAdareaDataStatus(IZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetAdareaDataStatus(IZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetECompassData(Lcom/autonavi/xm/navigation/server/map/GECompassData;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetECompassData(Lcom/autonavi/xm/navigation/server/map/GECompassData;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetGetElementCB(Lcom/autonavi/xm/navigation/server/map/GGetElementCallBack;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetGetElementList([Lcom/autonavi/xm/navigation/server/map/GCustomElement;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetMapViewMode(IILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetMapViewMode(IILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetViewMode(Lcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetMapViewMode(IILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ShowMapView(Lcom/autonavi/xm/navigation/server/map/GMapViewType;III)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_ToNextViewMode()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_ViewCross(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ViewCross(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->GMAP_VIEW_FLAG_MANEUVER_POINT:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;

    iget v1, v1, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapViewChangeFlag;->nativeValue:I

    invoke-virtual {p0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->changeMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_ViewMap(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->changeMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ViewPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetShowPOIName(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ViewPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_ViewSP(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ViewSP(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_ZoomIn()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    iput-boolean v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_ZoomIn_Inner(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomInEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_ZoomMapView(IILcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomTo(ILcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public GDBL_ZoomOut()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v2, 0x2

    mul-int/lit8 v3, v0, 0x3c

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_ZoomOut_Inner(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomOutEx(II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_ZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    mul-int/lit8 v3, v0, 0x3c

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_ZoomToNoAnim(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->stopMap()V

    iput-boolean v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ANIMATED:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {v0, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {v0, p1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomTo(ILcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ANIMATED:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {v1, v3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnZoomEnd()V

    :cond_2
    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isScaleRunning:Z

    goto :goto_0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Map;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public changeMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDBL_Map] changeMapView GDMID_GetMapViewHandle default flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawFlagMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-array v0, v0, [I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    aget v0, v0, v3

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GDBL_Map] changeMapView GDMID_GetMapViewHandle GMAP_VIEW_TYPE_MAIN ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-array v0, v0, [I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_2

    aget v0, v0, v3

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GDBL_Map] changeMapView GDMID_GetMapViewHandle GMAP_VIEW_TYPE_WHOLE ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapViewHandle(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_3

    aget v0, v0, v3

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GDBL_Map] changeMapView GDMID_GetMapViewHandle GMAP_VIEW_TYPE_MANEUVER_POINT ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doZoomTo(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-static {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapViewZoomTo(ILcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isMapSurfaceExist()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isWholeViewHandle(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawFlagMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnDrawMapViewStart()V

    :cond_3
    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_PreDrawMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DrawMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$GMapCallback;->GDBL_OnDrawMapViewEnd()V

    goto :goto_0
.end method

.method public drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mMapHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map$MapHandler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public drawMapView_Inner()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawHandleMapView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public isWholeView()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->mCurrentHandle:I

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->isWholeViewHandle(I)Z

    move-result v0

    return v0
.end method
