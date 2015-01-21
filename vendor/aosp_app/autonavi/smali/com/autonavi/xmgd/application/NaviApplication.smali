.class public Lcom/autonavi/xmgd/application/NaviApplication;
.super Lcom/mobilebox/acra/CrashReportingApplication;


# static fields
.field public static ASSETSDATA:Ljava/lang/String; = null

.field public static ImageOnSDCard:Ljava/lang/String; = null

.field public static final MAPDATA:Ljava/lang/String; = "data/"

.field public static final MAPLAYERSDATA:Ljava/lang/String; = "mapLayersData"

.field public static NAVIDATA:Ljava/lang/String; = null

.field public static final PREF_AUTONAVI:Ljava/lang/String; = "autonavi"

.field public static USE_UI_3_0:Z = false

.field private static final autoZoomStep:[I = null

.field public static cache_autonavi:Landroid/content/SharedPreferences; = null

.field public static final dirImagePath:Ljava/lang/String; = "image/dir/"

.field private static externalAction:Ljava/lang/String; = null

.field private static extraIntent:Landroid/content/Intent; = null

.field public static final isInstallPluginInner:Z = true

.field private static isMapExist:Z

.field private static isMapForeground:Z

.field private static isMapSurfaceExit:Z

.field private static isPluginExist_AR:Z

.field private static isPluginExist_CallCenter:Z

.field private static isPluginExist_HighWay:Z

.field private static isPluginExist_RTTC:Z

.field private static isPluginExist_Recorder:Z

.field private static isPluginExist_Voice:Z

.field private static mDataSaveDir:Ljava/lang/String;

.field private static mHasPhoneCall:Z

.field private static mapExitingCounter:I

.field public static openHMTData:Z

.field public static sdkVersion:I

.field public static sessionid:Ljava/lang/String;

.field private static startExitingCounter:I

.field private static statusBarHeight:F

.field public static userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autonavidata60tob/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    const-string v2, "assets/hdpi/"

    sput-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->ASSETSDATA:Ljava/lang/String;

    const-string v2, "image/"

    sput-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->ImageOnSDCard:Ljava/lang/String;

    const-string v2, "/data/data/com.autonavi.xmgd.navigator.tob/"

    sput-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->mDataSaveDir:Ljava/lang/String;

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_AR:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_CallCenter:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Voice:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_RTTC:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_HighWay:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Recorder:Z

    sput-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_AR:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_CallCenter:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Voice:Z

    sput-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_RTTC:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_HighWay:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Recorder:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isMapSurfaceExit:Z

    const/4 v2, 0x0

    sput v2, Lcom/autonavi/xmgd/application/NaviApplication;->statusBarHeight:F

    sput-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->openHMTData:Z

    const/16 v2, 0x8

    sput v2, Lcom/autonavi/xmgd/application/NaviApplication;->sdkVersion:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v2, Lcom/autonavi/xmgd/application/NaviApplication;->sdkVersion:I

    sget v2, Lcom/autonavi/xmgd/application/NaviApplication;->sdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->USE_UI_3_0:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->mHasPhoneCall:Z

    const-string v0, ""

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->sessionid:Ljava/lang/String;

    sput-object v4, Lcom/autonavi/xmgd/application/NaviApplication;->extraIntent:Landroid/content/Intent;

    sput-object v4, Lcom/autonavi/xmgd/application/NaviApplication;->externalAction:Ljava/lang/String;

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isMapExist:Z

    sput-boolean v1, Lcom/autonavi/xmgd/application/NaviApplication;->isMapForeground:Z

    sput v1, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I

    sput v1, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->autoZoomStep:[I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobilebox/acra/CrashReportingApplication;-><init>()V

    return-void
.end method

.method public static getAutoZoomLevel(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;
    .locals 3

    const/16 v2, 0x1f4

    const/16 v1, 0xfa

    const/16 v0, 0x64

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    :goto_0
    return-object v0

    :cond_0
    if-ge v0, p0, :cond_1

    if-gt p0, v1, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_50_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    goto :goto_0

    :cond_1
    if-ge v1, p0, :cond_2

    if-gt p0, v2, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_100_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    goto :goto_0

    :cond_2
    if-ge v2, p0, :cond_3

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_3

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_200_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    goto :goto_0
.end method

.method public static getDataSaveDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->mDataSaveDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalAction()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->externalAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getExtraItent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->extraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getIsMapForeground()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapForeground:Z

    return v0
.end method

.method public static getPluginExist_AR()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_AR:Z

    return v0
.end method

.method public static getPluginExist_CallCenter()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_CallCenter:Z

    return v0
.end method

.method public static getPluginExist_HighWay()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_HighWay:Z

    return v0
.end method

.method public static getPluginExist_RTTC()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_RTTC:Z

    return v0
.end method

.method public static getPluginExist_Recorder()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Recorder:Z

    return v0
.end method

.method public static getPluginExist_Voice()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Voice:Z

    return v0
.end method

.method public static getStatusBarHeight()F
    .locals 1

    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->statusBarHeight:F

    return v0
.end method

.method public static isHasPhoneCall()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->mHasPhoneCall:Z

    return v0
.end method

.method public static isMapExist()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapExist:Z

    return v0
.end method

.method public static declared-synchronized isMapExiting()Z
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/application/NaviApplication;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isMapSurfaceExist()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapSurfaceExit:Z

    return v0
.end method

.method public static isNeedAutoZoom(II)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->autoZoomStep:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->autoZoomStep:[I

    aget v2, v2, v0

    if-ge p0, v2, :cond_0

    if-ge p1, v2, :cond_1

    :cond_0
    if-lt p0, v2, :cond_3

    if-ge p1, v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized isStartExiting()Z
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/application/NaviApplication;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDataSaveDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/autonavi/xmgd/application/NaviApplication;->mDataSaveDir:Ljava/lang/String;

    return-void
.end method

.method public static setExternalAction(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/autonavi/xmgd/application/NaviApplication;->externalAction:Ljava/lang/String;

    return-void
.end method

.method public static setExtraItent(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/autonavi/xmgd/application/NaviApplication;->extraIntent:Landroid/content/Intent;

    return-void
.end method

.method public static setHasPhoneCall(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->mHasPhoneCall:Z

    return-void
.end method

.method public static setIsMapForeground(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapForeground:Z

    return-void
.end method

.method public static setMapExist(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapExist:Z

    return-void
.end method

.method public static declared-synchronized setMapExiting(Z)V
    .locals 4

    const-class v1, Lcom/autonavi/xmgd/application/NaviApplication;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I

    :goto_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaviApplication] setMapExiting :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",counter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/autonavi/xmgd/application/NaviApplication;->mapExitingCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setMapSurfaceExist(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isMapSurfaceExit:Z

    return-void
.end method

.method public static setPluginExist_AR(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_AR:Z

    return-void
.end method

.method public static setPluginExist_CallCenter(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_CallCenter:Z

    return-void
.end method

.method public static setPluginExist_HighWay(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_HighWay:Z

    return-void
.end method

.method public static setPluginExist_RTTC(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_RTTC:Z

    return-void
.end method

.method public static setPluginExist_Recorder(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Recorder:Z

    return-void
.end method

.method public static setPluginExist_Voice(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xmgd/application/NaviApplication;->isPluginExist_Voice:Z

    return-void
.end method

.method public static declared-synchronized setStartExiting(Z)V
    .locals 4

    const-class v1, Lcom/autonavi/xmgd/application/NaviApplication;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I

    :goto_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaviApplication] setStartExiting :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",counter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget v0, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/autonavi/xmgd/application/NaviApplication;->startExitingCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setStatusBarHeight(F)V
    .locals 0

    sput p0, Lcom/autonavi/xmgd/application/NaviApplication;->statusBarHeight:F

    return-void
.end method


# virtual methods
.method public getCrashResources()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RES_NOTIF_TICKER_TEXT"

    const-string v2, "\u9ad8\u5fb7\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38..."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_NOTIF_TITLE"

    const-string v2, "\u9ad8\u5fb7\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38..."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_NOTIF_TEXT"

    const-string v2, "\u70b9\u51fb\u6b64\u5904\u53d1\u9001\u9519\u8bef\u62a5\u544a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_DIALOG_TEXT"

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38\uff0c\u9700\u8981\u91cd\u65b0\u542f\u52a8\u3002\u60a8\u53ef\u4ee5\u53d1\u9001\u9519\u8bef\u62a5\u544a\u4ee5\u4fbf\u8f6f\u4ef6\u5f00\u53d1\u5546\u5728\u6700\u77ed\u65f6\u95f4\u5185\u89e3\u51b3\u95ee\u9898\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_DIALOG_COMMENT_PROMPT"

    const-string v2, "\u60a8\u8fd8\u53ef\u4ee5\u5728\u6b64\u63cf\u8ff0\u51fa\u73b0\u5f02\u5e38\u7684\u64cd\u4f5c:"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFormId()Ljava/lang/String;
    .locals 1

    const-string v0, "dHBEbjFQekUzZkppRWtZU19ESzRUOFE6MQ"

    return-object v0
.end method
