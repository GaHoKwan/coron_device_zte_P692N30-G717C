.class public Lcom/zte/aliveupdate/main/AliveUpdateApp;
.super Landroid/app/Application;
.source "AliveUpdateApp.java"


# static fields
.field public static final LIB_BSPACTH_FILE_NAME:Ljava/lang/String; = "libbspatch-jni.so"

.field public static final NETWORK_STRATEGY:Ljava/lang/String; = "network_strategy"

.field private static final REFERENCE_KEY_ALLOW_BUSSINESS_WLAN:Ljava/lang/String; = "ALLOW_BUSSINESS_WLAN"

.field private static final STRING_REFERENCE_NAME_APP_KEEPER:Ljava/lang/String; = "AppKeeper"

.field public static hasUpdated:Z

.field private static preferences:Landroid/content/SharedPreferences;

.field private static sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;


# instance fields
.field private buildModel:Ljava/lang/String;

.field private clientName:Ljava/lang/String;

.field private configuration:Lcom/zte/aliveupdate/Configuration;

.field private imei:Ljava/lang/String;

.field private innerDeviceName:Ljava/lang/String;

.field private isCheckBackgroud:Z

.field private mThread:Ljava/lang/Thread;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->hasUpdated:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->isCheckBackgroud:Z

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public static checkThreadValid()V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    iget-object v0, v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please call this method in ui thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    iget-object v2, v2, Lcom/zte/aliveupdate/main/AliveUpdateApp;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    return-void
.end method

.method public static getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    return-object v0
.end method

.method public static getNetWorkType()Lcom/zte/aliveupdate/common/datatype/NetWorkType;
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ALIVE_UPDATE_NETWORK_TYPE"

    sget-object v2, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    move-result-object v0

    return-object v0
.end method

.method public static getPeriodType()Lcom/zte/aliveupdate/common/datatype/PeriodType;
    .locals 3

    .prologue
    .line 207
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ALIVE_UPDATE_PEROID_TYPE"

    invoke-static {}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->getDefault()Lcom/zte/aliveupdate/common/datatype/PeriodType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/datatype/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initBuildModel()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.product.name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "android"

    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    goto :goto_0
.end method

.method private initClientName()V
    .locals 2

    .prologue
    .line 140
    const/high16 v1, 0x7f06

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->clientName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AliveUpdate"

    iput-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->clientName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDeviceInfo()V
    .locals 2

    .prologue
    .line 323
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    .local v0, mTm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->imei:Ljava/lang/String;

    .line 326
    return-void
.end method

.method private initInnerDeviceName()V
    .locals 6

    .prologue
    .line 360
    const-string v0, "UNKNOW"

    .line 362
    .local v0, UNKOWN:Ljava/lang/String;
    :try_start_0
    const-string v4, "ro.build.sw_internal_version"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, version_in:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDevDetailSwV1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    const-string v4, "ro.build.inner.version"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDevDetailSwV2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    const-string v4, "ro.build.version.incremental"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDevDetailSwV3 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version_in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 377
    .local v2, endtag:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->innerDeviceName:Ljava/lang/String;

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "innerDeviceName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->innerDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v2           #endtag:I
    .end local v3           #version_in:Ljava/lang/String;
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->innerDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static initInstance(Lcom/zte/aliveupdate/main/AliveUpdateApp;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 193
    sput-object p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    .line 194
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    const-string v1, "AppKeeper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    .line 195
    return-void
.end method

.method private initJNILibs()V
    .locals 7

    .prologue
    .line 414
    const-string v2, "libbspatch-jni.so"

    .line 415
    .local v2, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 416
    .local v4, libFileIns:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 419
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 420
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 422
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 423
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 424
    .local v3, length:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 425
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v0           #buffer:[B
    .end local v3           #length:I
    :catch_0
    move-exception v1

    .line 431
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-static {v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v5}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 438
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 434
    .restart local v0       #buffer:[B
    .restart local v3       #length:I
    :cond_0
    invoke-static {v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v5}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    goto :goto_1

    .line 434
    .end local v0           #buffer:[B
    .end local v3           #length:I
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v5}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    throw v6
.end method

.method private initLog()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/zte/util/AndroidLogger;

    invoke-direct {v0}, Lcom/zte/util/AndroidLogger;-><init>()V

    .line 305
    .local v0, log:Lcom/zte/util/AndroidLogger;
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zte/util/Log;->initLog(Lcom/zte/util/Logger;I)V

    .line 306
    return-void
.end method

.method private initUserActRecFile()V
    .locals 4

    .prologue
    .line 309
    new-instance v1, Lcom/zte/update/tools/UserActRecFile;

    invoke-direct {v1}, Lcom/zte/update/tools/UserActRecFile;-><init>()V

    .line 311
    .local v1, uarf:Lcom/zte/update/tools/UserActRecFile;
    :try_start_0
    invoke-static {v1}, Lcom/zte/update/tools/Recorder;->initRec(Lcom/zte/update/tools/IRecorder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device IMEI ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/update/tools/Recorder;->writeRec(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build Mode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/update/tools/Recorder;->writeRec(Ljava/lang/String;)V

    .line 320
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initUserFeedback()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "init user feedback"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Laliveupdate/ZTEStatisticsBuild;->init(Landroid/content/Context;)V

    .line 151
    invoke-static {p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 152
    invoke-static {p0}, Lcom/zte/feedback/sdk/ZTEFeedback;->init(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method private initVersionInfo()V
    .locals 5

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 159
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->versionCode:I

    .line 160
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAllowBussinessWLan()Z
    .locals 3

    .prologue
    .line 248
    sget-object v0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ALLOW_BUSSINESS_WLAN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAllowBussinessWLan(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 242
    sget-object v1, Lcom/zte/aliveupdate/main/AliveUpdateApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ALLOW_BUSSINESS_WLAN"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method public static setInstance(Lcom/zte/aliveupdate/main/AliveUpdateApp;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 400
    sput-object p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sAutoUpdateApp:Lcom/zte/aliveupdate/main/AliveUpdateApp;

    .line 402
    return-void
.end method


# virtual methods
.method public changeBuildModel(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public getAppMemory()I
    .locals 4

    .prologue
    .line 341
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 342
    .local v0, memory:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Application Memory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    return v0
.end method

.method public getBuildModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "filename"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->innerDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 261
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 262
    const-string v4, "error to get PackageManger"

    invoke-static {p0, v4}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-object v3

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 268
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 269
    const-string v4, "error to get ApplicationInfo"

    invoke-static {p0, v4}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 274
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isHasCheckedBackgroud()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->isCheckBackgroud:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initInstance(Lcom/zte/aliveupdate/main/AliveUpdateApp;)V

    .line 84
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initVersionInfo()V

    .line 85
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initBuildModel()V

    .line 89
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initDeviceInfo()V

    .line 90
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initLog()V

    .line 91
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initUserActRecFile()V

    .line 96
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->configuration:Lcom/zte/aliveupdate/Configuration;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliveUpdate versionName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Configuration name ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->configuration:Lcom/zte/aliveupdate/Configuration;

    invoke-virtual {v1}, Lcom/zte/aliveupdate/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the device buildmodel ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->buildModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initInnerDeviceName()V

    .line 111
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initClientName()V

    .line 113
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initUserFeedback()V

    .line 117
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->registEvent()V

    .line 119
    invoke-static {}, Lcom/zte/update/scan/ScanCheckManager;->getInstance()Lcom/zte/update/scan/ScanCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/scan/ScanCheckManager;->initScanToRequestStorage()V

    .line 120
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->initJNILibs()V

    .line 121
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "AliveUpdate"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 410
    return-void
.end method

.method protected registEvent()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0xa

    .line 126
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    .line 128
    .local v0, mgr:Lcom/zte/update/app/ui/ObserverManager;
    invoke-static {}, Lcom/zte/update/ui/NotificationUtil;->getInstance()Lcom/zte/update/ui/NotificationUtil;

    move-result-object v1

    .line 129
    .local v1, notification:Lcom/zte/update/ui/NotificationUtil;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 131
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/zte/update/ui/DownloadNotification;->getInstance()Lcom/zte/update/ui/DownloadNotification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/zte/update/ui/DownloadNotification;->getInstance()Lcom/zte/update/ui/DownloadNotification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 136
    return-void
.end method

.method public setHasCheckedBackgroud(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/zte/aliveupdate/main/AliveUpdateApp;->isCheckBackgroud:Z

    .line 348
    return-void
.end method
