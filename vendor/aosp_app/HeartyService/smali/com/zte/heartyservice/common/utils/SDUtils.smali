.class public Lcom/zte/heartyservice/common/utils/SDUtils;
.super Ljava/lang/Object;
.source "SDUtils.java"


# static fields
.field public static final EXTERNAL_SD:I = 0x1

.field public static final INTERNAL_SD:I = 0x0

.field private static final OTHER_VOLUMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SDUtils"

.field private static externalSD:Ljava/io/File;

.field private static internalSD:Ljava/io/File;

.field private static pdSD:I

.field private static sReceiver:Landroid/content/BroadcastReceiver;

.field private static sReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "usbotg"

    aput-object v2, v0, v1

    const-string v1, "usbcard"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->OTHER_VOLUMES:[Ljava/lang/String;

    .line 24
    sput-object v4, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    .line 25
    sput-object v4, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    .line 26
    sput-boolean v3, Lcom/zte/heartyservice/common/utils/SDUtils;->sReload:Z

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    .line 30
    new-instance v0, Lcom/zte/heartyservice/common/utils/SDUtils$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/utils/SDUtils$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-boolean p0, Lcom/zte/heartyservice/common/utils/SDUtils;->sReload:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    return p0
.end method

.method public static addMonitor()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/common/utils/SDUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 150
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 151
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 152
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 153
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getAvailableSDSize(Ljava/io/File;)J
    .locals 7
    .parameter "file"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SDUtils;->isSDMounted(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 168
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 169
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    .line 171
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method public static getAvailableSDSizeForPD()J
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDFileForPD()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCameraPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDFileForPD()Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, privacySD:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalSD()Ljava/io/File;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->loadSDPath()V

    .line 93
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SDUtils;->isSDMounted(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInternalSD()Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->loadSDPath()V

    .line 83
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SDUtils;->isSDMounted(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getJustExternalSDPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->loadSDPath()V

    .line 113
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getJustInternalSDPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->loadSDPath()V

    .line 103
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDFileForPD()Ljava/io/File;

    move-result-object v0

    .line 205
    .local v0, privacySD:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.privacy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPDTempDirExchangeFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFolder()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, pdTempDirExchangeFolder:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/exchange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPDTempDirExchangeFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, pdPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.dirExchange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPDTempExchangeFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, pdPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.exchange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSDFileForPD()Ljava/io/File;
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 185
    sget v2, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 186
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDSize(Ljava/io/File;)J

    move-result-wide v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    div-long v0, v2, v4

    .line 187
    .local v0, size:J
    const-string v2, "SDUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseSDForPD InternalSDSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 189
    const/4 v2, 0x0

    sput v2, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    .line 195
    :cond_0
    :goto_0
    sget v2, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    if-nez v2, :cond_2

    .line 196
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v2

    .line 199
    :goto_1
    return-object v2

    .line 191
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/zte/heartyservice/common/utils/SDUtils;->pdSD:I

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v2

    goto :goto_1
.end method

.method public static getSDSize(Ljava/io/File;)J
    .locals 7
    .parameter "file"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SDUtils;->isSDMounted(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 141
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v3, v5

    .line 142
    .local v3, totalBlocks:J
    mul-long v5, v3, v0

    .line 144
    .end local v0           #blockSize:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #totalBlocks:J
    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 158
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 160
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 161
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getTotalSDSize(Ljava/io/File;)J
    .locals 7
    .parameter "file"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/SDUtils;->isSDMounted(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 178
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v3, v5

    .line 179
    .local v3, totalBlocks:J
    mul-long v5, v3, v0

    .line 181
    .end local v0           #blockSize:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #totalBlocks:J
    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method private static isSDMounted(Ljava/io/File;)Z
    .locals 5
    .parameter "SDPath"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    :cond_0
    const/4 v3, 0x0

    .line 134
    :goto_0
    return v3

    .line 125
    :cond_1
    const-string v2, "removed"

    .line 127
    .local v2, state:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 129
    .local v1, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    .end local v1           #sm:Landroid/os/storage/StorageManager;
    :goto_1
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SDUtils"

    const-string v4, "isSDMounted"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static loadSDPath()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 52
    sget-boolean v7, Lcom/zte/heartyservice/common/utils/SDUtils;->sReload:Z

    if-eqz v7, :cond_2

    .line 53
    const/4 v7, 0x0

    sput-boolean v7, Lcom/zte/heartyservice/common/utils/SDUtils;->sReload:Z

    .line 57
    sput-object v8, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    .line 58
    sput-object v8, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    .line 60
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 62
    .local v4, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 63
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 64
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/zte/heartyservice/common/utils/SDUtils;->internalSD:Ljava/io/File;

    .line 63
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object v7, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/zte/heartyservice/common/utils/SDUtils;->OTHER_VOLUMES:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/zte/heartyservice/common/utils/SDUtils;->externalSD:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SDUtils"

    const-string v8, "getSDPath"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static removeMonitor()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/SDUtils;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method
