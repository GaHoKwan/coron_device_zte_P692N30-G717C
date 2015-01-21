.class public Lcom/autonavi/xm/navigation/engine/GDBL_Main;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_APP_PATH:Ljava/lang/String;

.field private static sGDBL_Main:Lcom/autonavi/xm/navigation/engine/GDBL_Main;


# instance fields
.field private mApplication:Landroid/content/Context;

.field private mDataDir:Ljava/lang/String;

.field private mIsLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->DEFAULT_APP_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mIsLibLoaded:Z

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->sGDBL_Main:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->sGDBL_Main:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->sGDBL_Main:Lcom/autonavi/xm/navigation/engine/GDBL_Main;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private loadLibrary()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mIsLibLoaded:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getDataDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->load(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mIsLibLoaded:Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public GDBL_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetSoundCallback(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->Clearup()Lcom/autonavi/xm/navigation/server/GStatus;

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_CreateView(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_CreateView(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_DestroyView()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DestroyView()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_EngineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_EngineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GeoCoordToSP(Lcom/autonavi/xm/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GeoCoordToSP(Lcom/autonavi/xm/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

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

.method public GDBL_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetResourceVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetTDataVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_MapMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_MapMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;[Lcom/autonavi/xm/navigation/server/GVerCheckResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SPToGeoCoord(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetApplication(Landroid/content/Context;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mApplication:Landroid/content/Context;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->loadLibrary()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_SetDataDir(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_Startup(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->loadLibrary()V

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getDataDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_Startup(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Config;->Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetSoundCallback(Lcom/autonavi/xm/navigation/server/guide/GSoundCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_WGSToGDCoord(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_WGSToGDCoord(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method getDataDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->mDataDir:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->DEFAULT_APP_PATH:Ljava/lang/String;

    goto :goto_0
.end method
