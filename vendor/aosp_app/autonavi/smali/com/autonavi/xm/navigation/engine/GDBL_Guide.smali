.class public Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
.super Ljava/lang/Object;


# static fields
.field private static final DEMOING_INTERVAL:I = 0x64

.field public static final MAX_JOURNEY_POINT:I = 0x7

.field private static final MAX_ROUTES:I = 0x4

.field private static final WHAT_DEMOING:I = 0x1

.field private static mGDBL_Guide:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# instance fields
.field private mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

.field private mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

.field private mIsCalculating:Z

.field private mIsDemoing:Z

.field private mMainRouteHanle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsDemoing:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;ILcom/autonavi/xm/navigation/server/GStatus;[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->handleCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;[II)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    return-object v0
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGDBL_Guide:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGDBL_Guide:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGDBL_Guide:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;[II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/GStatus;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_AbortRouteCalculation()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AbortRouteCalculation()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_AddDetourRoad(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AddDetourRoad(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method GDBL_AddGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AddGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AddJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method GDBL_ClearGuideRoute()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ClearGuideRoute()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ClearJourneyPoint()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ClearJourneyPoint()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_CloseZoomView()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_CloseZoomView()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ContinueDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method GDBL_DelGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DelGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DelJourneyPoint(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCurrentJourneyPoint([Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCurrentJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public GDBL_GetGuideFlags([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetGuideFlags([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetGuideRoadList(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    invoke-static {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetGuideRoadList(IZ[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetGuideRoadTMCList([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetGuideRouteCityInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteCityInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetGuideRouteCityInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteCityInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetGuideRouteInfo([Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetGuideRouteInfo(I[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public GDBL_GetGuideRouteList([II[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetHighwayManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GHighWayManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetJourneyPoint([Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetJourneyPoint([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public GDBL_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetManeuverInfo([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetManeuverTextList([Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetManeuverTextList(I[Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMultiManeuverInfo([[Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;IZ[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMultiManeuverInfo([[Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;IZ[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetPathStatisticInfo(ZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    invoke-static {v0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPathStatisticInfo(IZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetRouteErrorInfo([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetTurnIcon(I[Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method GDBL_GuideTheRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GuideTheRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_LoadGuideRoute(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_LoadGuideRoute(Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnRouteCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;)V

    :cond_1
    return-object v1
.end method

.method GDBL_LoadGuideRoute(Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_LoadGuideRoute(Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_PauseDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->removeMessages(I)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method GDBL_RemoveGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RemoveGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_RepeatNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RepeatNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method GDBL_SaveGuideRoute(ILjava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SaveGuideRoute(ILjava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SaveGuideRoute(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SaveGuideRoute(ILjava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method GDBL_SelectGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SelectGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SelectRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SelectRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SpeakNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SpeakNaviSound()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_StartDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsDemoing:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StartGuidance()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsDemoing:Z

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public GDBL_StartGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StartGuide(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method GDBL_StartGuide(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartGuide(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_StartRouteCalculation(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_BindRoad()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->start()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_StartRouteCalculation2()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;->removeMessages(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StopDemo()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsDemoing:Z

    return-object v0
.end method

.method public GDBL_StopGuidance()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StopGuide()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method GDBL_StopGuide()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StopGuide()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GuideHandler;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method recalculateRoute()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;->start()V

    goto :goto_0
.end method
