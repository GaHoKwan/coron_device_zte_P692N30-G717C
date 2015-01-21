.class public Lzte/com/cn/cloudnotepad/backup/BackupManager;
.super Lzte/com/cn/cloudnotepad/backup/BaseManager;
.source "BackupManager.java"


# instance fields
.field private mLocalDirectoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcsFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Ljava/lang/Long;

.field private mTimeDirName:Ljava/lang/String;

.field private mUploadFilesTotalSize:J

.field private mUploadedFilesSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 3
    .parameter "context"
    .parameter "zteAccountUtils"

    .prologue
    const-wide/16 v1, 0x0

    .line 33
    const v0, 0x7f0900bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Ljava/lang/CharSequence;)V

    .line 24
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadFilesTotalSize:J

    .line 25
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalDirectoryList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalFilesList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    .line 34
    return-void
.end method

.method private backupFile()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    .line 162
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getAllResInCloudBackup()Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, cloudResPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v6, :cond_1

    .line 220
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->createTimeDir()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTimeDirName:Ljava/lang/String;

    .line 167
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/apps/zte/\u6211\u7684\u7b14\u8bb0/temp_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTimeDirName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->makeDir(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 168
    iget v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 172
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 180
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalFilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 181
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 184
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalFilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    .local v3, localFilePath:Ljava/lang/String;
    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getPcsFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, pcsPath:Ljava/lang/String;
    invoke-direct {p0, v5, v0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getResFilePathInPathList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, oldBackupResFilePath:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 189
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 192
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v6, v4, v5}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->copy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 193
    const-string v6, "BackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "in backupFile(), copy file ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 194
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_4

    .line 196
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v6, v5}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->getFileMeta(Ljava/lang/String;)Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;

    move-result-object v1

    .line 197
    .local v1, fileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    if-eqz v1, :cond_2

    .line 198
    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    iget-wide v8, v1, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;->size:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    .line 199
    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    iput-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mDoneFilesSize:J

    .line 200
    invoke-virtual {p0, v10}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->sendMsg(I)V

    .line 180
    .end local v1           #fileInfo:Lcom/baidu/pcs/BaiduPCSActionInfo$PCSCommonFileInfo;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v3           #localFilePath:Ljava/lang/String;
    .end local v4           #oldBackupResFilePath:Ljava/lang/String;
    .end local v5           #pcsPath:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getPcsFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .restart local v5       #pcsPath:Ljava/lang/String;
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 177
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v6, v5}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->makeDir(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 205
    .restart local v3       #localFilePath:Ljava/lang/String;
    .restart local v4       #oldBackupResFilePath:Ljava/lang/String;
    :cond_4
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 208
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v6, v3, v5}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->uploadFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 209
    const-string v6, "BackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "in backupFile(), upload file ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 210
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v6, :cond_0

    .line 212
    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-wide v8, v8, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->mTotal:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    .line 213
    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadedFilesSize:J

    iput-wide v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mDoneFilesSize:J

    .line 214
    invoke-virtual {p0, v10}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->sendMsg(I)V

    goto :goto_2
.end method

.method private backupTask()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 142
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->sendMsg(I)V

    .line 144
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->deleteTempPcsFiles()V

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->backupFile()V

    .line 148
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->sendMsg(I)V

    .line 149
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/apps/zte/\u6211\u7684\u7b14\u8bb0/temp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTimeDirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTimeDirName:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->rename(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTime:Ljava/lang/Long;

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->saveBackupTimeToSharedPrefs(Landroid/content/Context;Ljava/lang/Long;)V

    .line 153
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->deletePcsFile()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->deleteTempPcsFiles()V

    goto :goto_0
.end method

.method private clearDustFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, realFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {p1, p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->clearDustFile(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private clearDustFileBeforeUpload()V
    .locals 3

    .prologue
    .line 383
    const-string v0, "wangna"

    const-string v1, "clearDustFileBeforeUpload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getAllResourceList()Ljava/util/List;

    move-result-object v1

    .line 384
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->clearDustFile(Ljava/lang/String;Ljava/util/List;)V

    .line 386
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getWallPaperList()Ljava/util/List;

    move-result-object v1

    .line 386
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->clearDustFile(Ljava/lang/String;Ljava/util/List;)V

    .line 388
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getMapList()Ljava/util/List;

    move-result-object v1

    .line 388
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->clearDustFile(Ljava/lang/String;Ljava/util/List;)V

    .line 390
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getIdList()Ljava/util/List;

    move-result-object v1

    .line 390
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->clearDustFile(Ljava/lang/String;Ljava/util/List;)V

    .line 392
    return-void
.end method

.method private createTimeDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTime:Ljava/lang/Long;

    .line 226
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private deletePcsFile()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 287
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->deleteFiles(Ljava/util/List;)I

    goto :goto_0

    .line 284
    :cond_2
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "deletePcsFile"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private deleteTempPcsFiles()V
    .locals 6

    .prologue
    .line 239
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 253
    :cond_0
    return-void

    .line 242
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 249
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 250
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v3, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->deleteFiles(Ljava/util/List;)I

    move-result v2

    .line 251
    .local v2, ret:I
    const-string v4, "BackupManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "in deleteTempPcsFiles(), delete file : "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getBaiduApiErrorResultString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v2           #ret:I
    :cond_2
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    const-string v4, "temp"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAllResFilesInSingleBackup(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "backDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 319
    .local v2, oldResult:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Resource"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getCloudBackupFilesString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 321
    .local v3, resList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Wallpapers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getCloudBackupFilesString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, wallPaperList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 326
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/location"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getCloudBackupFilesString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, locationList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_2
    iput v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 335
    const/4 v0, 0x0

    .line 337
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v0
.end method

.method private getAllResInCloudBackup()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getAllResFilesInSingleBackup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllResourceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v2, Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lzte/com/cn/cloudnotepad/data/ResourceData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/data/ResourceData;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    .local v0, dbResources:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 403
    .end local v0           #dbResources:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 399
    .restart local v0       #dbResources:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getVideoThumbFileNameList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, videoThumbs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getBaiduApiErrorResultString(I)Ljava/lang/String;
    .locals 3
    .parameter "result"

    .prologue
    .line 256
    const-string v0, ""

    .line 257
    .local v0, resultStr:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown error, result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 259
    :sswitch_0
    const-string v0, "file already exist error"

    .line 260
    goto :goto_0

    .line 262
    :sswitch_1
    const-string v0, "invalid access token"

    .line 263
    goto :goto_0

    .line 265
    :sswitch_2
    const-string v0, "no error"

    .line 266
    goto :goto_0

    .line 268
    :sswitch_3
    const-string v0, "file not exist error"

    .line 269
    goto :goto_0

    .line 257
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x6e -> :sswitch_1
        0x7955 -> :sswitch_0
        0x795a -> :sswitch_3
    .end sparse-switch
.end method

.method private getCloudBackupFilesString(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "cloudBackupDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->getFilePathList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getPcsFileList()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    const-string v1, "/apps/zte/\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->getFilePathList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    .line 135
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mPcsFileList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    const-string v1, "/apps/zte/\u6211\u7684\u7b14\u8bb0"

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->makeDir(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    goto :goto_0
.end method

.method private getPcsFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 232
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, start:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/apps/zte/\u6211\u7684\u7b14\u8bb0/temp_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTimeDirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, path:Ljava/lang/String;
    return-object v0
.end method

.method private getResFilePathInPathList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, cloudPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 292
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v0, v3

    .line 303
    :cond_1
    :goto_0
    return-object v0

    .line 296
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    move-object v0, v3

    .line 303
    goto :goto_0

    .line 297
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, cloudPath:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 299
    .local v2, start:I
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getUploadFilesInfo(Ljava/lang/String;)V
    .locals 8
    .parameter "filePath"

    .prologue
    .line 348
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    return-void

    .line 352
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, soureFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, sourceFiles:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 355
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 356
    const-string v4, "wangna"

    const-string v5, "getUploadFilesInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Ljava/io/File;

    aget-object v4, v2, v1

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "temp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getUploadFilesInfo(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalDirectoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_4
    iget-wide v4, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadFilesTotalSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadFilesTotalSize:J

    .line 367
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mLocalFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getVideoThumbFileNameList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, resourceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, thumbList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 418
    return-object v2

    .line 408
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    .local v0, resFileName:Ljava/lang/String;
    const-string v4, ".3gp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".mp4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, thumbFileName:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 413
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #thumbList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 415
    .restart local v2       #thumbList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private preBackup()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "wangna"

    const-string v1, "preBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->clearDustFileBeforeUpload()V

    .line 102
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->saveDbFileToSdcard()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getUploadFilesInfo(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->getPcsFileList()V

    .line 105
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->deleteTempPcsFiles()V

    .line 109
    :cond_1
    return-void
.end method

.method private saveDbFileToSdcard()V
    .locals 7

    .prologue
    .line 113
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v5, :cond_0

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v5, "wangna"

    const-string v6, "saveDbFileToSdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notepad_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, srcDB:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 119
    .local v4, srcFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 121
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 126
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mAccountUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected doCancelled()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    .line 71
    return-void
.end method

.method protected doPreCancelled()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    .line 65
    return-void
.end method

.method protected doPreTask()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->preBackup()V

    .line 40
    return-void
.end method

.method protected doTask()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->backupTask()V

    .line 77
    return-void
.end method

.method protected donePreTask()V
    .locals 4

    .prologue
    const v2, 0x7f0900ca

    const/4 v3, 0x0

    .line 45
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-eqz v0, :cond_2

    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    const/16 v1, 0x7955

    if-ne v0, v1, :cond_3

    .line 52
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BackupManager;->sendMsg(I)V

    .line 53
    iget-wide v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mUploadFilesTotalSize:J

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mFilesTotalSize:J

    goto :goto_0

    .line 54
    :cond_3
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_4

    .line 55
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doneTask()V
    .locals 4

    .prologue
    const v2, 0x7f0900ca

    const/4 v3, 0x0

    .line 82
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mResult:I

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->updataBackupMessage(J)V

    .line 91
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
