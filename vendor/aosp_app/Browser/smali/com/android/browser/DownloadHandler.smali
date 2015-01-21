.class public Lcom/android/browser/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static final EXTRA_STORAGE_DIR:Ljava/lang/String; = "/storage/sdcard1"

.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "DLHandler"

.field private static final LowSpaceThreshold:J = 0xa00000L

.field private static final XLOGTAG:Ljava/lang/String; = "browser/DLHandler"

.field private static sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static availableStorage(Ljava/lang/String;Landroid/app/Activity;)J
    .locals 6
    .parameter "path"
    .parameter "activity"

    .prologue
    .line 384
    invoke-static {p0}, Lcom/android/browser/DownloadHandler;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/browser/DownloadHandler;->getDownloadsInProgressWillOccupyBytes(Landroid/app/Activity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa00000

    sub-long v0, v2, v4

    .line 385
    .local v0, availableStorage:J
    const-string v2, "browser/DLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check storage before download, availableStorage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", about"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-wide v0
.end method

.method private static checkIfHaveAvailableStoreage(Ljava/lang/String;Landroid/app/Activity;J)V
    .locals 7
    .parameter "path"
    .parameter "activity"
    .parameter "contentLength"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c005d

    const v4, 0x1080027

    .line 348
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, downloadPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, externalPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-static {v1, p1}, Lcom/android/browser/DownloadHandler;->availableStorage(Ljava/lang/String;Landroid/app/Activity;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 352
    const-string v2, "browser/DLHandler"

    const-string v3, "external storage is download path, can to download because of low storeage and will popup low storeage dialog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const-string v2, "/storage/sdcard1"

    invoke-static {v2, p1}, Lcom/android/browser/DownloadHandler;->availableStorage(Ljava/lang/String;Landroid/app/Activity;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 365
    const-string v2, "browser/DLHandler"

    const-string v3, "extra storage is download path, can to download because of low storeage and will popup low storeage dialog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0043

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v10, 0x7c

    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 89
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 90
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 91
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-eq v1, v9, :cond_0

    if-ne v1, v10, :cond_2

    .line 92
    :cond_0
    const/4 v5, 0x1

    .line 96
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    .line 110
    .end local p0
    :goto_1
    return-object p0

    .line 90
    .restart local v1       #c:C
    .restart local p0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 102
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-eq v1, v9, :cond_4

    if-ne v1, v10, :cond_5

    .line 103
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 110
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static getAvailableBytesInFileSystemAtGivenRoot(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 395
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 396
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 397
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v5, v0

    .line 398
    .local v2, size:J
    return-wide v2
.end method

.method private static getDownloadsInProgressWillOccupyBytes(Landroid/app/Activity;)J
    .locals 15
    .parameter "activity"

    .prologue
    .line 407
    const-wide/16 v5, 0x0

    .line 408
    .local v5, downloadsWillOccupyBytes:J
    const/4 v2, 0x0

    .line 409
    .local v2, cursor:Landroid/database/Cursor;
    const-string v11, "download"

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/DownloadManager;

    .line 411
    .local v8, manager:Landroid/app/DownloadManager;
    :try_start_0
    new-instance v11, Landroid/app/DownloadManager$Query;

    invoke-direct {v11}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_2

    .line 413
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_2

    .line 414
    const-string v11, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 415
    .local v3, downloadID:J
    const-string v11, "total_size"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 416
    .local v9, totalBytes:J
    const-string v11, "bytes_so_far"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 417
    .local v0, currentBytes:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-lez v11, :cond_0

    sub-long v11, v9, v0

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 418
    sub-long v11, v9, v0

    add-long/2addr v5, v11

    .line 419
    const-string v11, "browser/DLHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download id :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in downloading, totalBytes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",currentBytes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v0           #currentBytes:J
    .end local v3           #downloadID:J
    .end local v9           #totalBytes:J
    :catch_0
    move-exception v7

    .line 424
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v11, "browser/DLHandler"

    const-string v12, "getDownloadsInProgressWillOccupyBytes: query encounter exception"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    if-eqz v2, :cond_1

    .line 427
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 431
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    const-string v11, "browser/DLHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDownloadsInProgressWillOccupyBytes: return downloadsWillOccupyBytes:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-wide v5

    .line 426
    :cond_2
    if-eqz v2, :cond_1

    .line 427
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_3

    .line 427
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v11
.end method

.method public static onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "referer"
    .parameter "privateBrowsing"
    .parameter "contentLength"

    .prologue
    .line 79
    invoke-static/range {p0 .. p8}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 81
    return-void
.end method

.method public static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 23
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "referer"
    .parameter "privateBrowsing"
    .parameter "contentLength"

    .prologue
    .line 128
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, filename:Ljava/lang/String;
    const-string v3, "browser/DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Guess file name is: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " mimetype is: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 135
    .local v19, status:Ljava/lang/String;
    const-string v3, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    const-string v3, "shared"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const v3, 0x7f0c0162

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, msg:Ljava/lang/String;
    const v20, 0x7f0c0161

    .line 148
    .local v20, title:I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c005d

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 280
    .end local v16           #msg:Ljava/lang/String;
    .end local v20           #title:I
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    const v3, 0x7f0c0160

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 145
    .restart local v16       #msg:Ljava/lang/String;
    const v20, 0x7f0c015f

    .restart local v20       #title:I
    goto :goto_0

    .line 158
    .end local v16           #msg:Ljava/lang/String;
    .end local v20           #title:I
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getDownloadPath()Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, mDownloadPath:Ljava/lang/String;
    const-string v3, "sdcard1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/sdcard1"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_3

    .line 161
    const v14, 0x7f0c0009

    .line 162
    .local v14, mTitle:I
    const v3, 0x7f0c000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, mMsg:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c005d

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 175
    .end local v13           #mMsg:Ljava/lang/String;
    .end local v14           #mTitle:I
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/mediatek/browser/ext/Extensions;->getDownloadPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    move-result-object v3

    sput-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    .line 176
    sget-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    invoke-interface {v3}, Lcom/mediatek/browser/ext/IBrowserDownloadEx;->shouldCheckStorageBeforeDownload()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const-wide/16 v3, 0x0

    cmp-long v3, p7, v3

    if-lez v3, :cond_4

    .line 178
    const-string v3, "browser/DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before checkIfHaveAvailableStoreage(),contentLength: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-static {v12, v0, v1, v2}, Lcom/android/browser/DownloadHandler;->checkIfHaveAvailableStoreage(Ljava/lang/String;Landroid/app/Activity;J)V

    .line 188
    :cond_4
    :try_start_0
    new-instance v22, Landroid/net/WebAddress;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 189
    .local v22, webAddress:Landroid/net/WebAddress;
    invoke-virtual/range {v22 .. v22}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/DownloadHandler;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-virtual/range {v22 .. v22}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, addressString:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 201
    .local v21, uri:Landroid/net/Uri;
    :try_start_1
    new-instance v5, Landroid/app/DownloadManager$Request;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .local v5, request:Landroid/app/DownloadManager$Request;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 208
    invoke-static/range {p0 .. p0}, Lcom/mediatek/browser/ext/Extensions;->getDownloadPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    move-result-object v3

    sput-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    .line 209
    sget-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v3, v4, v5, v11, v0}, Lcom/mediatek/browser/ext/IBrowserDownloadEx;->setRequestDestinationDir(Ljava/lang/String;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, downloadPath:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 217
    .local v18, pathUri:Landroid/net/Uri;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 218
    const-string v3, "browser/DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request.setDestinationInExternalPublicDir, addressString: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v9           #downloadPath:Ljava/lang/String;
    .end local v18           #pathUri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {v5}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 225
    invoke-virtual/range {v22 .. v22}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 228
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, cookies:Ljava/lang/String;
    const-string v3, "cookie"

    invoke-virtual {v5, v3, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 230
    const-string v3, "User-Agent"

    move-object/from16 v0, p2

    invoke-virtual {v5, v3, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 231
    const-string v3, "Referer"

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 232
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 234
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setUserAgent(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 235
    if-nez p4, :cond_6

    .line 236
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    :try_start_2
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    new-instance v3, Lcom/android/browser/FetchUrlMimeType;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/browser/FetchUrlMimeType;-><init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 264
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/mediatek/browser/ext/Extensions;->getDownloadPlugin(Landroid/content/Context;)Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    move-result-object v3

    sput-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    .line 265
    const-wide/16 v3, 0x0

    cmp-long v3, p7, v3

    if-lez v3, :cond_7

    sget-object v3, Lcom/android/browser/DownloadHandler;->sBrowserDownloadEx:Lcom/mediatek/browser/ext/IBrowserDownloadEx;

    invoke-interface {v3}, Lcom/mediatek/browser/ext/IBrowserDownloadEx;->shouldShowToastWithFileSize()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 276
    :goto_3
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v17, pageView:Landroid/content/Intent;
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 190
    .end local v5           #request:Landroid/app/DownloadManager$Request;
    .end local v6           #addressString:Ljava/lang/String;
    .end local v7           #cookies:Ljava/lang/String;
    .end local v17           #pageView:Landroid/content/Intent;
    .end local v21           #uri:Landroid/net/Uri;
    .end local v22           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v10

    .line 193
    .local v10, e:Ljava/lang/Exception;
    const-string v3, "DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to parse url:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v6       #addressString:Ljava/lang/String;
    .restart local v21       #uri:Landroid/net/Uri;
    .restart local v22       #webAddress:Landroid/net/WebAddress;
    :catch_1
    move-exception v10

    .line 203
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const v3, 0x7f0c0163

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 243
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #request:Landroid/app/DownloadManager$Request;
    .restart local v7       #cookies:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 244
    .restart local v10       #e:Ljava/lang/IllegalArgumentException;
    const v3, 0x7f0c0163

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 254
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    const-string v3, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/DownloadManager;

    .line 256
    .local v15, manager:Landroid/app/DownloadManager;
    new-instance v3, Lcom/android/browser/DownloadHandler$1;

    const-string v4, "Browser download"

    invoke-direct {v3, v4, v15, v5}, Lcom/android/browser/DownloadHandler$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 271
    .end local v15           #manager:Landroid/app/DownloadManager;
    :cond_7
    const v3, 0x7f0c0164

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public static showDownloadOrOpenContent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 11
    .parameter "activity"
    .parameter "intent"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"
    .parameter "contentLength"

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0c0023

    new-instance v0, Lcom/android/browser/DownloadHandler$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/browser/DownloadHandler$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0024

    new-instance v2, Lcom/android/browser/DownloadHandler$3;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/browser/DownloadHandler$3;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/DownloadHandler$2;

    invoke-direct {v1}, Lcom/android/browser/DownloadHandler$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 338
    return-void
.end method
