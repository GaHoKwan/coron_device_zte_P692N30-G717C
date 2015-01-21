.class public Lzte/com/cn/cloudnotepad/backup/RestoreManager;
.super Lzte/com/cn/cloudnotepad/backup/BaseManager;
.source "RestoreManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreManager"


# instance fields
.field private mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

.field private mCloudFilePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudRootDir:Ljava/lang/String;

.field private mDbName:Ljava/lang/String;

.field private mDownLoadRootDir:Ljava/lang/String;

.field private mDownloadedFilesSize:J

.field private mIsDBFileExist:Z

.field private mPcsFilesTotalSize:J

.field private mTempRootDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 5
    .parameter "context"
    .parameter "zteAccountUtils"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 37
    const v0, 0x7f0900e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Ljava/lang/CharSequence;)V

    .line 23
    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mPcsFilesTotalSize:J

    .line 24
    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownloadedFilesSize:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mIsDBFileExist:Z

    .line 27
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notepad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private copyDbFile2DataDir(Ljava/lang/String;)V
    .locals 3
    .parameter "srcDbPath"

    .prologue
    .line 235
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->close()V

    .line 236
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 237
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->mOpenHelper:Lzte/com/cn/cloudnotepad/data/NotepadDB;

    .line 238
    return-void
.end method

.method private copyDbFromTempAndClearDustDir()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "RestoreManager"

    const-string v1, "in doRestoreZteNote(), no resource need to change in local"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyDbFile2DataDir(Ljava/lang/String;)V

    .line 226
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 227
    const-string v0, "RestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in doRestoreZteNote(), delete directory : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 230
    const-string v0, "RestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in doRestoreZteNote(), delete directory : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "srcFilePath"
    .parameter "dstFilePath"

    .prologue
    .line 289
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v5, srcFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 291
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 312
    :cond_0
    return-void

    .line 293
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 297
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 298
    .local v6, srcFiles:[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-eqz v7, :cond_0

    .line 301
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 302
    iget-boolean v7, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-nez v7, :cond_0

    .line 305
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, name:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, newSrcFilePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, newDstFilePath:Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private copyFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/4 v8, 0x0

    .line 249
    const-string v9, "RestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "in copyFileData(), copy file from \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" to \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v1, v8

    .line 285
    :cond_0
    :goto_0
    return-object v1

    .line 253
    :cond_1
    const/4 v6, 0x0

    .line 254
    .local v6, outputStream:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 255
    .local v3, inputStream:Ljava/io/FileInputStream;
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 257
    .local v1, dstFile:Ljava/io/File;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 260
    .local v0, buf:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 261
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .local v4, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 262
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    .local v7, outputStream:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .local v5, len:I
    if-gtz v5, :cond_3

    .line 275
    :goto_2
    if-eqz v4, :cond_2

    .line 276
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_2
    if-eqz v7, :cond_0

    .line 279
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    iget-boolean v9, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v9, :cond_4

    .line 264
    const/4 v1, 0x0

    .line 265
    goto :goto_2

    .line 267
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 269
    .end local v5           #len:I
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    move-object v6, v7

    .line 271
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    if-eqz v3, :cond_5

    .line 276
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_5
    if-eqz v6, :cond_6

    .line 279
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    move-object v1, v8

    .line 272
    goto :goto_0

    .line 281
    :catch_2
    move-exception v2

    .line 282
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 273
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 275
    :goto_5
    if-eqz v3, :cond_7

    .line 276
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_7
    if-eqz v6, :cond_8

    .line 279
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 284
    :cond_8
    :goto_6
    throw v8

    .line 281
    :catch_3
    move-exception v2

    .line 282
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 273
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 269
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private copyUserResFile2Dir(Ljava/lang/String;)V
    .locals 3
    .parameter "dstDir"

    .prologue
    .line 242
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Resource/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Wallpapers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/location/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private deleteUselessDirs()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 360
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 361
    return-void
.end method

.method private doPreRestore()V
    .locals 7

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, cloudDbPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, localDbpath:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v2, v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->downloadFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    .line 185
    const-string v2, "RestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in doPreRestore(), cloudDbPath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localDbpath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    const/16 v3, 0x795a

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v2, :cond_2

    .line 187
    :cond_0
    const-string v2, "RestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in doPreRestore(), download file  from \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mIsDBFileExist:Z

    .line 192
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 197
    new-instance v2, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDbName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    .line 198
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->parse()V

    .line 202
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getCloudFilePathListNeedDownload()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    goto :goto_0
.end method

.method private doRestoreZteNote()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 207
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->downloadFiles(Ljava/util/List;Ljava/lang/String;)V

    .line 208
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "RestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in doRestoreZteNote(), copy file from \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyDbFromTempAndClearDustDir()V

    goto :goto_0
.end method

.method private getCloudSingleBackupDir()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 146
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    const-string v5, "/apps/zte/\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v4, v5}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->getFilePathList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .end local v0           #i:I
    :cond_2
    move-object v2, v3

    .line 146
    goto :goto_0

    .line 140
    .restart local v0       #i:I
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, path:Ljava/lang/String;
    const-string v4, "temp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getDownLoadFileInfo(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, filePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 167
    :cond_1
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v3, v2, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mBaiduPCSClient:Lcom/baidu/pcs/BaiduPCSClient;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/baidu/pcs/BaiduPCSClient;->meta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;

    move-result-object v1

    .line 171
    .local v1, ret:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
    iget-object v2, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->status:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;

    iget v2, v2, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSSimplefiedResponse;->errorCode:I

    iput v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    .line 172
    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    if-eqz v2, :cond_2

    .line 173
    const-string v3, "RestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "in getDownLoadFileInfo(), filePath = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_2
    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mPcsFilesTotalSize:J

    iget-object v4, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;->commonFileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    iget-wide v4, v4, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mPcsFilesTotalSize:J

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 342
    const-string v2, "\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 343
    .local v1, start:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, path:Ljava/lang/String;
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocalFilePath"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-object v0
.end method

.method private preRestore()V
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getCloudSingleBackupDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    const-string v1, "temp_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    .line 154
    const-string v0, "RestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in preRestore(), mCloudRootDir = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDownLoadRootDir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->doPreRestore()V

    .line 159
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudFilePathList:Ljava/util/List;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getDownLoadFileInfo(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected deleteFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "localDirPath"

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 354
    :cond_0
    return-void
.end method

.method protected doCancelled()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    .line 110
    return-void
.end method

.method protected doPreCancelled()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    .line 104
    return-void
.end method

.method protected doPreTask()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "in doPreTask(), "

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->printThreadInfo(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->preRestore()V

    .line 46
    return-void
.end method

.method protected doTask()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->doRestoreZteNote()V

    .line 54
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->sendMsg(I)V

    .line 55
    return-void
.end method

.method protected donePreTask()V
    .locals 7

    .prologue
    const v6, 0x7f0900c9

    const v3, 0x7f0900c7

    const v5, 0x7f0900cb

    const/4 v4, 0x0

    .line 60
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "donePreTask"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mIsDBFileExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "in donePreTask(), "

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->printThreadInfo(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    if-nez v0, :cond_6

    .line 67
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudRootDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mIsDBFileExist:Z

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_2
    iget-wide v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mPcsFilesTotalSize:J

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mFilesTotalSize:J

    .line 73
    iget-wide v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mFilesTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->sendMsg(I)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->isParseException()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCloudDbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->isLocalDbChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->copyDbFromTempAndClearDustDir()V

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :cond_5
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 89
    :cond_6
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    const/16 v1, 0x795a

    if-ne v0, v1, :cond_7

    .line 90
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 91
    :cond_7
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_8

    .line 92
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 93
    :cond_8
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_9

    .line 94
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 96
    :cond_9
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected doneTask()V
    .locals 4

    .prologue
    const v2, 0x7f0900cb

    const/4 v3, 0x0

    .line 115
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 119
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mTempRootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 120
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    const/16 v1, 0x795a

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected downloadFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "localDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, cloudFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in downloadFiles(), localDir = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 339
    :goto_1
    return-void

    .line 319
    :cond_0
    iget-boolean v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mCancelled:Z

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownLoadRootDir:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->deleteFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, cloudPathName:Ljava/lang/String;
    const-string v3, "BackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in downloadFiles(), cloudPathName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v3, "\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 327
    .local v2, start:I
    const-string v3, "BackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in downloadFiles(), localPathName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->downloadFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    .line 329
    const-string v3, "RestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in downloadFiles() download file from \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mResult:I

    if-eqz v3, :cond_2

    .line 331
    const-string v3, "RestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in downloadFiles(), error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    :cond_2
    iget-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownloadedFilesSize:J

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-wide v5, v5, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mTotal:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownloadedFilesSize:J

    .line 335
    iget-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDownloadedFilesSize:J

    iput-wide v3, p0, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->mDoneFilesSize:J

    .line 336
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;->sendMsg(I)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
