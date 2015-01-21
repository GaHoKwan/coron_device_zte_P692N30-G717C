.class public final Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "SystemInfoProxy.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

.field private static sStorageManager:Landroid/os/storage/StorageManager;

.field private static sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    .line 81
    sput-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 87
    const-string v0, "SystemInfoProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 88
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 92
    return-void
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    const-class v1, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    .line 105
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInternalAvailableSpace()J
    .locals 8

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, data:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, statFs:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 169
    .local v0, availableSpace:J
    return-wide v0
.end method

.method public static getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStoragePathSD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalTotalSpace()J
    .locals 8

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, data:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, statFs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 161
    .local v2, totalSpace:J
    return-wide v2
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdAvailableSpace()J
    .locals 8

    .prologue
    .line 141
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, sdcard:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, statFs:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 148
    .local v0, availableSpace:J
    :goto_0
    return-wide v0

    .end local v0           #availableSpace:J
    .end local v2           #sdcard:Ljava/lang/String;
    .end local v3           #statFs:Landroid/os/StatFs;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdTotalSpace()J
    .locals 8

    .prologue
    .line 129
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, sdcard:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, statFs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 136
    .local v2, totalSpace:J
    :goto_0
    return-wide v2

    .end local v0           #sdcard:Ljava/lang/String;
    .end local v1           #statFs:Landroid/os/StatFs;
    .end local v2           #totalSpace:J
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getSimAccessibleBySlot(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, b:Z
    packed-switch p0, :pswitch_data_0

    .line 291
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 275
    :pswitch_0
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim1Accessible()Z

    move-result v0

    .line 276
    goto :goto_0

    .line 279
    :pswitch_1
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim2Accessible()Z

    move-result v0

    .line 280
    goto :goto_0

    .line 283
    :pswitch_2
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim3Accessible()Z

    move-result v0

    .line 284
    goto :goto_0

    .line 287
    :pswitch_3
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim4Accessible()Z

    move-result v0

    .line 288
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSimState(I)I
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    const/4 v0, 0x1

    .line 175
    .local v0, simState:I
    if-nez p0, :cond_1

    .line 176
    sget-object v1, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 189
    :cond_0
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    return v0

    .line 177
    :cond_1
    if-ne v2, p0, :cond_0

    .line 178
    sget-object v1, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public static isExSdcardInserted()Z
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v0

    .line 397
    .local v0, status:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sdcard inserted status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 398
    return v0
.end method

.method public static isSdMounted()Z
    .locals 2

    .prologue
    .line 303
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSdPresent()Z
    .locals 2

    .prologue
    .line 297
    const-string v0, "removed"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSdReadable()Z
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSdMounted()Z

    move-result v0

    return v0
.end method

.method public static isSdSwap()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public static isSdWriteable()Z
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSim1Accessible()Z
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, b:Z
    sget-object v2, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 236
    .local v1, simState:I
    invoke-static {v1}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v0

    .line 238
    return v0
.end method

.method public static isSim2Accessible()Z
    .locals 4

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, b:Z
    sget-object v2, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 246
    .local v1, simState:I
    invoke-static {v1}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v0

    .line 248
    return v0
.end method

.method public static isSim3Accessible()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 258
    .local v0, b:Z
    return v0
.end method

.method public static isSim4Accessible()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 268
    .local v0, b:Z
    return v0
.end method

.method public static isSimAccessible(I)Z
    .locals 1
    .parameter "simState"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, b:Z
    packed-switch p0, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 198
    :pswitch_0
    const/4 v0, 0x1

    .line 199
    goto :goto_0

    .line 205
    :pswitch_1
    const/4 v0, 0x0

    .line 206
    goto :goto_0

    .line 209
    :pswitch_2
    const/4 v0, 0x0

    .line 210
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkSDCardState()[Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    const-string v5, "FeatureOption.MTK_EMMC_SUPPORT = true"

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 318
    new-array v2, v8, [Z

    .line 319
    .local v2, sDstate:[Z
    const/4 v1, 0x0

    .line 320
    .local v1, mSDCardPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 321
    .local v0, mSDCard2Path:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, storagePathList:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 323
    array-length v5, v4

    if-lt v5, v8, :cond_2

    .line 324
    const-string v5, "storagePathList.length >= 2"

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 325
    aget-object v1, v4, v6

    .line 326
    aget-object v0, v4, v7

    .line 327
    if-eqz v1, :cond_0

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, state:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v2, v6

    .line 333
    .end local v3           #state:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 334
    const/4 v3, 0x0

    .line 335
    .restart local v3       #state:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v2, v7

    .line 361
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 344
    :cond_2
    array-length v5, v4

    if-ne v5, v7, :cond_1

    .line 345
    const-string v5, "storagePathList.length == 1"

    invoke-static {v5}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 346
    aget-object v1, v4, v6

    .line 348
    if-eqz v1, :cond_1

    .line 350
    const/4 v3, 0x0

    .line 351
    .restart local v3       #state:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v2, v6

    goto :goto_0
.end method

.method public isSimAccessible()Z
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 228
    .local v0, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSimAccessible(I)Z

    move-result v1

    return v1
.end method
