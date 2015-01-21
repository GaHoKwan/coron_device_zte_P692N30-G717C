.class public Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;
.super Ljava/lang/Object;


# static fields
.field private static mGDBL_EngineUnrelated:Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "/sdcard/autonavidata60tob"

    const/4 v1, 0x1

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->load(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->mGDBL_EngineUnrelated:Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->mGDBL_EngineUnrelated:Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->mGDBL_EngineUnrelated:Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;
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
.method public GDBL_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdareaDirList(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public engineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GVerCheckResult;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_EngineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_OLDER:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    goto :goto_0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVersion;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataVersionWithGVersion()Lcom/autonavi/xm/navigation/server/GVersion;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVersion;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataVersionWithoutV()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVersion;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVersion;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEngineVersionWithGVersion()Lcom/autonavi/xm/navigation/server/GVersion;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GVersion;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
