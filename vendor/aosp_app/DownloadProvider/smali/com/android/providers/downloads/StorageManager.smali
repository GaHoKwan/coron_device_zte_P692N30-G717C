.class Lcom/android/providers/downloads/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final EXTRA_STORAGE_DIR:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FREQUENCY_OF_CHECKS_ON_SPACE_AVAILABILITY:I = 0x100000

.field private static final FREQUENCY_OF_DATABASE_N_FILESYSTEM_CLEANUP:I = 0xfa

.field public static final XLOGTAG:Ljava/lang/String; = "DownloadManager/StorageManager"

.field private static final sDownloadDataDirLowSpaceThreshold:J

.field private static final sMaxdownloadDataDirSize:J

.field private static sSingleton:Lcom/android/providers/downloads/StorageManager;


# instance fields
.field private mBytesDownloadedSinceLastCheckOnSpace:I

.field private mCleanupThread:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadDataDir:Ljava/io/File;

.field private mDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

.field private final mExternalStorageDir:Ljava/io/File;

.field private mNumDownloadsSoFar:I

.field private final mSystemCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 119
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 107
    iput-object p1, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 110
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 111
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->trimDatabase()V

    return-void
.end method

.method private discardPurgeableFiles(IJ)J
    .locals 17
    .parameter "destination"
    .parameter "targetBytes"

    .prologue
    .line 341
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discardPurgeableFiles: destination = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, destStr:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    .line 348
    .local v6, bindArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "( status = \'200\' AND destination = ? )"

    const-string v7, "lastmod"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 356
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 357
    const-wide/16 v15, 0x0

    .line 385
    :goto_1
    return-wide v15

    .line 344
    .end local v6           #bindArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #destStr:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 359
    .restart local v6       #bindArgs:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #destStr:Ljava/lang/String;
    :cond_1
    const-wide/16 v15, 0x0

    .line 361
    .local v15, totalFreed:J
    :try_start_0
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 362
    .local v10, dataIndex:I
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    cmp-long v2, v15, p2

    if-gez v2, :cond_3

    .line 363
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, data:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v12, file:Ljava/io/File;
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v15, v2

    .line 372
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 373
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 374
    .local v13, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 379
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataIndex:I
    .end local v12           #file:Ljava/io/File;
    .end local v13           #id:J
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v10       #dataIndex:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 382
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purged files, freed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private declared-synchronized findSpace(Ljava/io/File;JI)V
    .locals 6
    .parameter "root"
    .parameter "targetBytes"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    const/4 v2, 0x4

    if-eq p4, v2, :cond_2

    if-nez p4, :cond_3

    .line 208
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc7

    const-string v4, "external media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 214
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 215
    .local v0, bytesAvailable:J
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 220
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 221
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 223
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System cache dir (\'/cache\') is running low on space.space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 245
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 247
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloads data dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running low on space. space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5
    cmp-long v2, v0, p2

    if-gez v2, :cond_6

    .line 252
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 253
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 254
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 257
    :cond_6
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 258
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and unable to free any more"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 236
    :cond_7
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is below 10% availability. stopping this download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J
    .locals 10
    .parameter "root"

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, files:[Ljava/io/File;
    sget-wide v3, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 271
    .local v3, space:J
    if-nez v0, :cond_0

    move-wide v5, v3

    .line 281
    .end local v3           #space:J
    .local v5, space:J
    :goto_0
    return-wide v5

    .line 274
    .end local v5           #space:J
    .restart local v3       #space:J
    :cond_0
    array-length v2, v0

    .line 275
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 276
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_1
    sget-boolean v7, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v7, :cond_2

    .line 279
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available space (in bytes) in downloads data dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v5, v3

    .line 281
    .end local v3           #space:J
    .restart local v5       #space:J
    goto :goto_0
.end method

.method private getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J
    .locals 9
    .parameter "root"

    .prologue
    .line 285
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 287
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    sub-long v0, v5, v7

    .line 288
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v5, v0

    .line 289
    .local v2, size:J
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 290
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-wide v2
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    const-class v1, Lcom/android/providers/downloads/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/providers/downloads/StorageManager;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized incrementBytesDownloadedSinceLastCheckOnSpace(J)I
    .locals 2
    .parameter "val"

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 499
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeSpuriousFiles()V
    .locals 17

    .prologue
    .line 397
    const-string v1, "DownloadManager"

    const-string v2, "in removeSpuriousFiles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v11, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 402
    .local v13, listOfFiles:[Ljava/io/File;
    if-eqz v13, :cond_0

    .line 403
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 406
    if-eqz v13, :cond_1

    .line 407
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 448
    :cond_2
    return-void

    .line 412
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 417
    :cond_4
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 418
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, filename:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 420
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_5

    .line 421
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in removeSpuriousFiles, preserving file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 429
    .end local v10           #filename:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 429
    :cond_7
    if-eqz v7, :cond_8

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_8
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    .line 436
    .local v14, myUid:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 437
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 439
    .local v15, path:Ljava/lang/String;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v15}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v16

    .line 440
    .local v16, stat:Llibcore/io/StructStat;
    move-object/from16 v0, v16

    iget v1, v0, Llibcore/io/StructStat;->st_uid:I

    if-ne v1, v14, :cond_9

    .line 441
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting spurious file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 444
    .end local v16           #stat:Llibcore/io/StructStat;
    :catch_0
    move-exception v8

    .line 445
    .local v8, e:Llibcore/io/ErrnoException;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized resetBytesDownloadedSinceLastCheckOnSpace()V
    .locals 1

    .prologue
    .line 503
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startThreadToCleanupDatabaseAndPurgeFileSystem()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/providers/downloads/StorageManager$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager$1;-><init>(Lcom/android/providers/downloads/StorageManager;)V

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private trimDatabase()V
    .locals 11

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "DownloadManager"

    const-string v1, "in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    const/4 v7, 0x0

    .line 461
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 465
    if-nez v7, :cond_2

    .line 468
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v10, v0, -0x3e8

    .line 473
    .local v10, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 474
    .local v6, columnId:I
    :goto_1
    if-lez v10, :cond_3

    .line 475
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 477
    .local v8, downloadUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 491
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :cond_3
    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 481
    .restart local v6       #columnId:I
    .restart local v8       #downloadUri:Landroid/net/Uri;
    .restart local v10       #numDelete:I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 482
    goto :goto_1

    .line 484
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :catch_0
    move-exception v9

    .line 488
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimDatabase failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 491
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method getDownloadDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    return-object v0
.end method

.method declared-synchronized incrementNumDownloadsSoFar()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    rem-int/lit16 v0, v0, 0xfa

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;
    .locals 6
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 298
    packed-switch p2, :pswitch_data_0

    .line 326
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected value for destination: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 324
    :cond_0
    :goto_0
    return-object v0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 306
    :pswitch_3
    const/4 v0, 0x0

    .line 309
    .local v0, base:Ljava/io/File;
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/downloadmanager/ext/Extensions;->getDefault(Landroid/content/Context;)Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    .line 310
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadProviderFeatureEx:Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    invoke-interface {v2, p1}, Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;->getStorageDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, folder:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 312
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v0       #base:Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to create external downloads directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 314
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method verifySpace(ILjava/lang/String;J)V
    .locals 4
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->resetBytesDownloadedSinceLastCheckOnSpace()V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, dir:Ljava/io/File;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in verifySpace, destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    if-nez p2, :cond_1

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_2
    :goto_0
    if-nez v0, :cond_6

    .line 190
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid combination of destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 169
    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 172
    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 175
    goto :goto_0

    .line 177
    :pswitch_3
    const-string v1, "/storage/sdcard1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    const-string v1, "/storage/sdcard1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #dir:Ljava/io/File;
    goto :goto_0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    goto :goto_0

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    goto :goto_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 193
    :cond_6
    invoke-direct {p0, v0, p3, p4, p1}, Lcom/android/providers/downloads/StorageManager;->findSpace(Ljava/io/File;JI)V

    .line 194
    return-void

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    .locals 2
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p3, p4}, Lcom/android/providers/downloads/StorageManager;->incrementBytesDownloadedSinceLastCheckOnSpace(J)I

    move-result v0

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    goto :goto_0
.end method
