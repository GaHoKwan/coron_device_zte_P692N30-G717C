.class public Lcom/zte/update/tools/MemoryTools;
.super Ljava/lang/Object;
.source "MemoryTools.java"


# static fields
.field static final ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "***MemoryStatus***"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCardDir(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/zte/update/tools/MemoryTools;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    const-string v2, "com.zte.update.tools"

    const-string v3, "searchInFsTable: sdPath Exist"

    invoke-static {v2, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, sdDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x400

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, suffix:Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 123
    const-string v2, "KiB"

    .line 125
    div-long/2addr p0, v4

    .line 127
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 129
    const-string v2, "MiB"

    .line 131
    div-long/2addr p0, v4

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, resultBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 141
    .local v0, commaOffset:I
    :goto_0
    if-lez v0, :cond_1

    .line 143
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 149
    :cond_1
    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAvailableDataStorage()J
    .locals 8

    .prologue
    .line 158
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getDataFs()Landroid/os/StatFs;

    move-result-object v2

    .line 159
    .local v2, dataFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 160
    .local v3, nAvailableBlocks:I
    const-string v4, "com.zte.update.tools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemoryTools: the number of blocks in Data Storage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v2}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v4

    int-to-long v6, v3

    mul-long v0, v4, v6

    .line 162
    .local v0, availableSize:J
    const-string v4, "com.zte.update.tools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemoryTools: the available size in Data Storage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-wide v0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 75
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 79
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, stat:Landroid/os/StatFs;
    invoke-static {v5}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 83
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 85
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 89
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
    .locals 7

    .prologue
    .line 41
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getDataFs()Landroid/os/StatFs;

    move-result-object v4

    .line 43
    .local v4, stat:Landroid/os/StatFs;
    invoke-static {v4}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 45
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 47
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    return-wide v5
.end method

.method private static getBlockSize(Landroid/os/StatFs;)J
    .locals 3
    .parameter "dataFs"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v0, v2

    .line 175
    .local v0, blockSize:J
    return-wide v0
.end method

.method private static getDataFs()Landroid/os/StatFs;
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 180
    .local v0, data:Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, dataFs:Landroid/os/StatFs;
    return-object v1
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->searchInFsTable()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, sdPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/tools/MemoryTools;->checkCardDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    .end local v0           #sdPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 191
    .restart local v0       #sdPath:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/zte/update/tools/MemoryTools;->checkCardDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->searchInExtandIntMem()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/zte/update/tools/MemoryTools;->checkCardDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTotalDataStorage()J
    .locals 8

    .prologue
    .line 167
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getDataFs()Landroid/os/StatFs;

    move-result-object v0

    .line 168
    .local v0, dataFs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    .line 169
    .local v1, nTotalBlocks:I
    invoke-static {v0}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v4

    int-to-long v6, v1

    mul-long v2, v4, v6

    .line 170
    .local v2, totalSize:J
    return-wide v2
.end method

.method public static getTotalExternalMemorySize()J
    .locals 8

    .prologue
    .line 97
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, stat:Landroid/os/StatFs;
    invoke-static {v3}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 105
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 107
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    .line 111
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
    .locals 7

    .prologue
    .line 58
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getDataFs()Landroid/os/StatFs;

    move-result-object v2

    .line 60
    .local v2, stat:Landroid/os/StatFs;
    invoke-static {v2}, Lcom/zte/update/tools/MemoryTools;->getBlockSize(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 62
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v3, v5

    .line 64
    .local v3, totalBlocks:J
    mul-long v5, v3, v0

    return-wide v5
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static searchInExtandIntMem()Ljava/lang/String;
    .locals 7

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 230
    .local v3, sdFiles:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 233
    .local v2, parentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 235
    .local v1, listFiles:[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 236
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/update/tools/MemoryTools;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    const-string v5, "com.zte.update.tools"

    const-string v6, "external memory is existing!!!"

    invoke-static {v5, v6}, Lcom/zte/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 243
    .end local v0           #i:I
    .end local v1           #listFiles:[Ljava/io/File;
    .end local v2           #parentFile:Ljava/io/File;
    :goto_1
    return-object v4

    .line 235
    .restart local v0       #i:I
    .restart local v1       #listFiles:[Ljava/io/File;
    .restart local v2       #parentFile:Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0           #i:I
    .end local v1           #listFiles:[Ljava/io/File;
    .end local v2           #parentFile:Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static searchInFsTab()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 272
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/system/etc/vold.fstab"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, fr:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    .local v1, br:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, line:Ljava/lang/String;
    const-string v5, "dev_mount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, arrStr:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "dev_mount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string v6, "sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 280
    aget-object v5, v0, v7

    invoke-static {v5}, Lcom/zte/update/tools/MemoryTools;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    new-instance v2, Ljava/io/File;

    aget-object v5, v0, v7

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    aget-object v5, v0, v7

    .line 289
    .end local v0           #arrStr:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static searchInFsTable()Ljava/lang/String;
    .locals 6

    .prologue
    .line 248
    const/4 v3, 0x0

    .line 251
    .local v3, path:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->searchInFsTab()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 268
    :cond_0
    const/4 v3, 0x0

    .local v0, e:Ljava/lang/Exception;
    .local v1, f:Ljava/io/File;
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 254
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    .line 255
    .restart local v2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SECONDARY_STORAGE"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    const-string v4, "SECONDARY_STORAGE"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 260
    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/zte/update/tools/MemoryTools;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 257
    .end local v1           #f:Ljava/io/File;
    :cond_2
    const-string v4, "EXTERNAL_STORAGE"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, "EXTERNAL_STORAGE"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #path:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #path:Ljava/lang/String;
    goto :goto_1
.end method
