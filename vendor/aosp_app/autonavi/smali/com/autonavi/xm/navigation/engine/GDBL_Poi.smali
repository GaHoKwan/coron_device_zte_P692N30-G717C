.class public Lcom/autonavi/xm/navigation/engine/GDBL_Poi;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_ADMIN_NAME_LEN:I = 0x40

.field public static final MAX_CANDIDATE_NUM:I = 0xa

.field public static final MAX_CANDIDATE_WORD_LEN:I = 0x10

.field public static final MAX_CLASS_NAME_LEN:I = 0x40

.field public static final MAX_KEYWORD_LEN:I = 0x14

.field public static final MAX_POI_ADDR_LEN:I = 0x40

.field public static final MAX_POI_NAME_LEN:I = 0x40

.field public static final MAX_POI_TEL_LEN:I = 0x20

.field private static mGDBL_Poi:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;


# instance fields
.field private final INIT_SEARCH_CONDITION:I

.field private isInitSearchConditionFinish:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSearching:Z

.field private mPoiCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->INIT_SEARCH_CONDITION:I

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mPoiCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mGDBL_Poi:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mGDBL_Poi:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mGDBL_Poi:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;
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
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_AbortSearchPOI()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AbortSearchPOI()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_FreePOIGateInfo([Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_FreeRelationshipPOI([Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_FreeSettAreaInfo([Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetAdareaWithDataList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaWithDataList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCandidateList(Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCandidateList(Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCountryAreaCode(II[Lcom/autonavi/xm/navigation/server/GCountryAreaACode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCountryAreaCode(II[Lcom/autonavi/xm/navigation/server/GCountryAreaACode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetPOIGateInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetRelationshipPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_GetSettAreaInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GDBL_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_RequestNearestPOI(SLcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Lcom/autonavi/xm/navigation/server/GCoord;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->start()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_SearchAdareaInfo(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SearchAdareaInfo(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SearchByKeyworkAndAddress(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v0, p2, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-static {p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_InitSearchCondition(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->start()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mPoiCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_StartSearchPOI(SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z

    invoke-static {p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_InitSearchCondition(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->start()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method
