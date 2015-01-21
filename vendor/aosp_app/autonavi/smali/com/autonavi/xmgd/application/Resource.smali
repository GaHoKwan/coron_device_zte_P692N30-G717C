.class public final Lcom/autonavi/xmgd/application/Resource;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/autonavi/xmgd/application/Resource;


# instance fields
.field public mApkVersion:Ljava/lang/String;

.field public mAroundIconPath:Ljava/lang/String;

.field public mAssetsDir:Ljava/lang/String;

.field public mDayRange:[I

.field public mImageOnSDCard:Ljava/lang/String;

.field public mInlandMapdata:Ljava/lang/String;

.field public mMapVersion:Ljava/lang/String;

.field public mMekVersion:Ljava/lang/String;

.field public mNavidata:Ljava/lang/String;

.field public mPathForSo:Ljava/lang/String;

.field public mPluginDir:Ljava/lang/String;

.field public mPreferenceDefault:[I

.field public mTaiWanMapdata:Ljava/lang/String;

.field public mVersionCode:I

.field public mWelcomeVoice:Ljava/lang/String;

.field public mWholeViewSize:[[I

.field public mZoomCrossSize:[[I


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/autonavi/xmgd/application/Resource;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->reflect()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/application/Resource;->mVersionCode:I

    goto :goto_0
.end method

.method private exception()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "autonavi.xml\u8d44\u6e90\u52a0\u8f7d\u5f02\u5e38\uff01\n\u8bf7\u68c0\u67e5\u6587\u4ef6\u683c\u5f0f\uff01"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mMapVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mMekVersion:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v1, v0, v4

    aget v2, v0, v5

    if-ge v1, v2, :cond_0

    aget v1, v0, v4

    aget v0, v0, v5

    shr-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v2, v6, [[I

    new-array v3, v6, [I

    aput v1, v3, v4

    aput v0, v3, v5

    aput-object v3, v2, v4

    new-array v3, v6, [I

    aput v1, v3, v4

    aput v0, v3, v5

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/autonavi/xmgd/application/Resource;->mZoomCrossSize:[[I

    new-array v2, v6, [[I

    new-array v3, v6, [I

    aput v1, v3, v4

    aput v0, v3, v5

    aput-object v3, v2, v4

    new-array v3, v6, [I

    aput v1, v3, v4

    aput v0, v3, v5

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/autonavi/xmgd/application/Resource;->mWholeViewSize:[[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mPreferenceDefault:[I

    const-string v0, "/sdcard/autonavidata60tob/"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mNavidata:Ljava/lang/String;

    const-string v0, "mapdata/"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mInlandMapdata:Ljava/lang/String;

    const-string v0, "mapdata/taiwan/"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mTaiWanMapdata:Ljava/lang/String;

    const-string v0, "plugins"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mPluginDir:Ljava/lang/String;

    const-string v0, "assets/hdpi/"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mAssetsDir:Ljava/lang/String;

    const-string v0, "image/"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mImageOnSDCard:Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mDayRange:[I

    const-string v0, "image/around/hdpi"

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mAroundIconPath:Ljava/lang/String;

    return-void

    :cond_0
    aget v1, v0, v4

    shr-int/lit8 v1, v1, 0x1

    aget v0, v0, v5

    goto :goto_0

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static declared-synchronized getResource()Lcom/autonavi/xmgd/application/Resource;
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/application/Resource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xmgd/application/Resource;->instance:Lcom/autonavi/xmgd/application/Resource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/application/Resource;

    invoke-direct {v0}, Lcom/autonavi/xmgd/application/Resource;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/application/Resource;->instance:Lcom/autonavi/xmgd/application/Resource;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/Resource;->instance:Lcom/autonavi/xmgd/application/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reflect()V
    .locals 9

    const/4 v8, 0x2

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R$string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "xmgd_mek_version"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mMekVersion:Ljava/lang/String;

    const-string v3, "xmgd_map_version"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mMapVersion:Ljava/lang/String;

    const-string v3, "xmgd_data_path"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mNavidata:Ljava/lang/String;

    const-string v3, "xmgd_inland_data_path"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mInlandMapdata:Ljava/lang/String;

    const-string v3, "xmgd_taiwan_data_path"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mTaiWanMapdata:Ljava/lang/String;

    const-string v3, "xmgd_plugin_path"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mPluginDir:Ljava/lang/String;

    const-string v3, "xmgd_assets_folder"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mAssetsDir:Ljava/lang/String;

    const-string v3, "xmgd_picture_folder"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mImageOnSDCard:Ljava/lang/String;

    const-string v3, "xmgd_welcome_voice"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mWelcomeVoice:Ljava/lang/String;

    const-string v3, "xmgd_around_icon"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/application/Resource;->mAroundIconPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "xmgd_zoomcross_size"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [[I

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v2, v7

    aput v7, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget v7, v2, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget v2, v2, v7

    aput v2, v5, v6

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mZoomCrossSize:[[I

    const-string v2, "xmgd_wholeview_size"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :try_start_2
    new-array v3, v3, [[I

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v2, v7

    aput v7, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget v7, v2, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget v2, v2, v7

    aput v2, v5, v6

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/autonavi/xmgd/application/Resource;->mWholeViewSize:[[I

    const-string v2, "xmgd_default_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/application/Resource;->mPreferenceDefault:[I

    iget-object v2, p0, Lcom/autonavi/xmgd/application/Resource;->mPreferenceDefault:[I

    array-length v2, v2

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->o:I

    if-eq v2, v3, :cond_3

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string v2, "xmgd_day_night_range"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mDayRange:[I

    iget-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mDayRange:[I

    array-length v0, v0

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_3
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/xmgd/application/Resource;->exception()V

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/application/Resource;->instance:Lcom/autonavi/xmgd/application/Resource;

    return-void
.end method

.method public loadWelcomeText()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "xmgd_welcome_voice"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/application/Resource;->mWelcomeVoice:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method
