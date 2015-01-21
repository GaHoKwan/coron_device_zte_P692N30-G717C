.class public Lcom/zte/heartyservice/common/utils/SysInfo;
.super Ljava/lang/Object;
.source "SysInfo.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static MEDIA_APP_KEY:Ljava/lang/String;

.field private static mFakeAvailableMemory:J

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 35
    sput-wide v1, Lcom/zte/heartyservice/common/utils/SysInfo;->totalMemory:J

    .line 39
    const-string v0, "onekeyhelper_mediaapp_key"

    sput-object v0, Lcom/zte/heartyservice/common/utils/SysInfo;->MEDIA_APP_KEY:Ljava/lang/String;

    .line 41
    sput-wide v1, Lcom/zte/heartyservice/common/utils/SysInfo;->mFakeAvailableMemory:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCanStartActivity()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, privacyDataPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 315
    const-string v3, "SysInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liuji debug checkCanStartActivity privacyDataPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 318
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SysInfo;->isWriteableDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const v4, 0x7f0a035a

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 331
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 323
    goto :goto_0

    .line 326
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const v4, 0x7f0a035b

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const v4, 0x7f0a035c

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static checkPDDir()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, privacyDataPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 339
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/SysInfo;->createPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SysInfo;->isWriteableDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static createPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    .line 275
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static extractCPUValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 79
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_2

    .line 80
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 81
    move v0, p1

    .line 82
    .local v0, start:I
    add-int/lit8 p1, p1, 0x1

    .line 84
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 85
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 88
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 92
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 90
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private static extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 62
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 63
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 64
    move v0, p1

    .line 65
    .local v0, start:I
    add-int/lit8 p1, p1, 0x1

    .line 67
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 68
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 71
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 75
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 73
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailMemory()J
    .locals 13

    .prologue
    const-wide/16 v9, 0x0

    .line 130
    sget-wide v11, Lcom/zte/heartyservice/common/utils/SysInfo;->mFakeAvailableMemory:J

    cmp-long v11, v11, v9

    if-lez v11, :cond_0

    .line 131
    sget-wide v9, Lcom/zte/heartyservice/common/utils/SysInfo;->mFakeAvailableMemory:J

    .line 159
    .local v1, i:I
    .local v5, memCached:J
    .local v7, memFree:J
    :goto_0
    return-wide v9

    .line 134
    .end local v1           #i:I
    .end local v5           #memCached:J
    .end local v7           #memFree:J
    :cond_0
    const/4 v1, 0x0

    .line 136
    .restart local v1       #i:I
    const-wide/16 v7, 0x0

    .line 137
    .restart local v7       #memFree:J
    const-wide/16 v5, 0x0

    .line 138
    .restart local v5       #memCached:J
    const/16 v11, 0x96

    :try_start_0
    new-array v4, v11, [B

    .line 139
    .local v4, mBuffer:[B
    new-instance v2, Ljava/io/FileInputStream;

    const-string v11, "/proc/meminfo"

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 141
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 142
    array-length v0, v4

    .line 143
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    cmp-long v11, v5, v9

    if-nez v11, :cond_5

    .line 144
    :cond_1
    const-string v11, "MemFree"

    invoke-static {v4, v1, v11}, Lcom/zte/heartyservice/common/utils/SysInfo;->matchText([BILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 145
    add-int/lit8 v1, v1, 0x7

    .line 146
    invoke-static {v4, v1}, Lcom/zte/heartyservice/common/utils/SysInfo;->extractMemValue([BI)J

    move-result-wide v7

    .line 151
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    aget-byte v11, v4, v1

    const/16 v12, 0xa

    if-eq v11, v12, :cond_4

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_3
    const-string v11, "Cached"

    invoke-static {v4, v1, v11}, Lcom/zte/heartyservice/common/utils/SysInfo;->matchText([BILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 148
    add-int/lit8 v1, v1, 0x6

    .line 149
    invoke-static {v4, v1}, Lcom/zte/heartyservice/common/utils/SysInfo;->extractMemValue([BI)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_2

    .line 143
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_5
    add-long v9, v7, v5

    goto :goto_0

    .line 157
    .end local v0           #BUFLEN:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #mBuffer:[B
    :catch_0
    move-exception v11

    goto :goto_0

    .line 156
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method public static getAvailableDefaultMemorySize()J
    .locals 8

    .prologue
    .line 175
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isDefaultMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 178
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 179
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 180
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 181
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 185
    :goto_0
    return-wide v6

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 215
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 216
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 217
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 218
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getNetdPid()J
    .locals 10

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, i:I
    const-wide/16 v4, -0x1

    .line 386
    .local v4, pid:J
    const/4 v6, 0x0

    .line 387
    .local v6, start:Z
    const/4 v2, 0x0

    .line 389
    .local v2, inline:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "ps netd"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 390
    .local v3, p:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 392
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 394
    const-string v8, "\\s{1,}"

    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, strs:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 399
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #p:Ljava/lang/Process;
    .end local v7           #strs:[Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 396
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static getSerialNo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 296
    const/4 v3, 0x0

    .line 298
    .local v3, serialnum:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 299
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 300
    .local v2, get:Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #get:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 301
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getTotalDefaultMemorySize()J
    .locals 8

    .prologue
    .line 190
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isDefaultMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 193
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 195
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 196
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    .line 200
    :goto_0
    return-wide v6

    .end local v0           #blockSize:J
    .end local v2           #path:Ljava/io/File;
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 207
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 209
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 210
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getTotalMemory()J
    .locals 11

    .prologue
    const-wide/16 v7, 0x0

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, i:I
    :try_start_0
    sget-wide v9, Lcom/zte/heartyservice/common/utils/SysInfo;->totalMemory:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_3

    .line 100
    const-wide/16 v5, 0x0

    .line 101
    .local v5, memTotal:J
    const/16 v9, 0x50

    new-array v4, v9, [B

    .line 102
    .local v4, mBuffer:[B
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/proc/meminfo"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 104
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 105
    array-length v0, v4

    .line 106
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 107
    const-string v9, "MemTotal"

    invoke-static {v4, v1, v9}, Lcom/zte/heartyservice/common/utils/SysInfo;->matchText([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    add-int/lit8 v1, v1, 0x7

    .line 109
    invoke-static {v4, v1}, Lcom/zte/heartyservice/common/utils/SysInfo;->extractMemValue([BI)J

    move-result-wide v5

    .line 111
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    aget-byte v9, v4, v1

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    sput-wide v5, Lcom/zte/heartyservice/common/utils/SysInfo;->totalMemory:J

    .line 125
    .end local v0           #BUFLEN:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #mBuffer:[B
    .end local v5           #memTotal:J
    :goto_2
    return-wide v5

    .line 120
    :cond_3
    sget-wide v5, Lcom/zte/heartyservice/common/utils/SysInfo;->totalMemory:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 123
    :catch_0
    move-exception v9

    :goto_3
    move-wide v5, v7

    .line 125
    goto :goto_2

    .line 122
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method public static isAudioRecording()Z
    .locals 10

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, i:I
    const/4 v6, 0x0

    .line 359
    .local v6, ret:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "top -n 1 -d 1 -t"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 360
    .local v5, p:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 361
    .local v2, is:Ljava/io/InputStream;
    const v7, 0x19000

    new-array v4, v7, [B

    .line 362
    .local v4, mBuffer:[B
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 363
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 364
    array-length v0, v4

    .line 365
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 366
    const-string v7, "AudioIn"

    invoke-static {v4, v1, v7}, Lcom/zte/heartyservice/common/utils/SysInfo;->matchText([BILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 367
    const/4 v6, 0x1

    .line 379
    .end local v0           #BUFLEN:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #mBuffer:[B
    .end local v5           #p:Ljava/lang/Process;
    :cond_0
    :goto_1
    const-string v7, "record"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAudioRecording:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v6

    .line 371
    .restart local v0       #BUFLEN:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #mBuffer:[B
    .restart local v5       #p:Ljava/lang/Process;
    :cond_1
    :goto_2
    if-ge v1, v0, :cond_2

    :try_start_1
    aget-byte v7, v4, v1

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    aget-byte v7, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 365
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0           #BUFLEN:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #mBuffer:[B
    .end local v5           #p:Ljava/lang/Process;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static isDefaultMemoryAvailable()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWriteableDir(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 284
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WriteableTestCL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v2, 0x1

    .line 292
    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, N:I
    add-int v3, p1, v0

    array-length v4, p0

    if-lt v3, v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 54
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setAvailableMemory(J)V
    .locals 0
    .parameter "mem"

    .prologue
    .line 44
    sput-wide p0, Lcom/zte/heartyservice/common/utils/SysInfo;->mFakeAvailableMemory:J

    .line 45
    return-void
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, localIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    .end local v0           #localIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
