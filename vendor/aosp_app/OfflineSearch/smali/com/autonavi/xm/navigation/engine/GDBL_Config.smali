.class public Lcom/autonavi/xm/navigation/engine/GDBL_Config;
.super Ljava/lang/Object;


# static fields
.field private static mGDBL_Config:Lcom/autonavi/xm/navigation/engine/GDBL_Config;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->mGDBL_Config:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->mGDBL_Config:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->mGDBL_Config:Lcom/autonavi/xm/navigation/engine/GDBL_Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V
    .locals 0

    return-void
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_GetBoolean(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_GetBoolean(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetCoord(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_GetCoord(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_GetInt(Lcom/autonavi/xm/navigation/server/GParam;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPaletteList(Z[Lcom/autonavi/xm/navigation/server/map/GPaletteList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetPriorityCategoryList([Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPriorityCategoryList([Lcom/autonavi/xm/navigation/server/map/GPriorityCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_GetRect(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetSize(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_GetSize(Lcom/autonavi/xm/navigation/server/GParam;[Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutBoolean(Lcom/autonavi/xm/navigation/server/GParam;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method public GDBL_PutCoord(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutCoord(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method public GDBL_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutInt(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method public GDBL_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutRect(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GRect;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method public GDBL_PutSize(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Configs_PutSize(Lcom/autonavi/xm/navigation/server/GParam;Lcom/autonavi/xm/navigation/server/GSize;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method public GDBL_SaveUserConfig()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SaveUserConfig()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetPriorityCategory([II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetPriorityCategory([II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-direct {p0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->handleConfigChanged(Lcom/autonavi/xm/navigation/server/GParam;)V

    return-object v0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method
