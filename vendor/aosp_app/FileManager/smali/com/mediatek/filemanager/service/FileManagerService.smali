.class public Lcom/mediatek/filemanager/service/FileManagerService;
.super Landroid/app/Service;
.source "FileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/service/FileManagerService$1;,
        Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;,
        Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;,
        Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    }
.end annotation


# static fields
.field public static final FILE_FILTER_TYPE_ALL:I = 0x2

.field public static final FILE_FILTER_TYPE_DEFAULT:I = 0x0

.field public static final FILE_FILTER_TYPE_FOLDER:I = 0x1

.field public static final FILE_FILTER_TYPE_UNKOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FileManagerService"


# instance fields
.field private final mActivityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mBinder:Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;

    .line 158
    return-void
.end method

.method private filterPasteList(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter "destFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const/4 v2, 0x0

    .line 285
    .local v2, remove:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/filemanager/FileInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 288
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return v2
.end method

.method private getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    .locals 3
    .parameter "activityName"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    .line 213
    .local v0, activityInfo:Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "this activity not init in Service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    return-object v0
.end method

.method private isCutSamePath(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "dstFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 393
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileParentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const/4 v2, 0x1

    .line 397
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 4
    .parameter "activityName"

    .prologue
    .line 330
    const-string v1, "FileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cancel service,activityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v0

    .line 332
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 335
    :cond_0
    return-void
.end method

.method public createFolder(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 6
    .parameter "activityName"
    .parameter "destFolder"
    .parameter "listener"

    .prologue
    .line 239
    const-string v2, "FileManagerService"

    const-string v3, " createFolder Start "

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    const/16 v2, -0x64

    invoke-interface {p3, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    .line 245
    .local v1, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFilterType()I

    move-result v5

    .line 246
    .local v5, filterType:I
    if-eqz v1, :cond_0

    .line 247
    new-instance v0, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 250
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public deleteFiles(Ljava/lang/String;Ljava/util/List;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 5
    .parameter "activityName"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const-string v2, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deleteFiles Start,activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const/16 v2, -0x64

    invoke-interface {p3, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v0

    .line 315
    .local v0, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    if-eqz v0, :cond_0

    .line 316
    new-instance v1, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;

    invoke-direct {v1, v0, p3, p0, p2}, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/util/List;)V

    .line 318
    .local v1, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 319
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public disconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "activityName"

    .prologue
    .line 464
    const-string v1, "FileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnected,activityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v0

    .line 466
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->removeListener()V

    .line 469
    :cond_0
    return-void
.end method

.method public getDetailInfo(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 5
    .parameter "activityName"
    .parameter "file"
    .parameter "listener"

    .prologue
    .line 443
    const-string v2, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDetailInfo,activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    const/16 v2, -0x64

    invoke-interface {p3, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v0

    .line 449
    .local v0, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    if-eqz v0, :cond_0

    .line 450
    new-instance v1, Lcom/mediatek/filemanager/service/DetailInfoTask;

    invoke-direct {v1, v0, p3, p2}, Lcom/mediatek/filemanager/service/DetailInfoTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Lcom/mediatek/filemanager/FileInfo;)V

    .line 452
    .local v1, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 453
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public initFileInfoManager(Ljava/lang/String;)Lcom/mediatek/filemanager/FileInfoManager;
    .locals 2
    .parameter "activityName"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    .line 176
    .local v0, activityInfo:Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    .end local v0           #activityInfo:Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;-><init>(Lcom/mediatek/filemanager/service/FileManagerService$1;)V

    .line 178
    .restart local v0       #activityInfo:Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    new-instance v1, Lcom/mediatek/filemanager/FileInfoManager;

    invoke-direct {v1}, Lcom/mediatek/filemanager/FileInfoManager;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setFileInfoManager(Lcom/mediatek/filemanager/FileInfoManager;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    return-object v1
.end method

.method public isBusy(Ljava/lang/String;)Z
    .locals 5
    .parameter "activityName"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, ret:Z
    iget-object v3, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    .line 200
    .local v0, activityInfo:Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;
    if-nez v0, :cond_0

    .line 201
    const-string v3, "FileManagerService"

    const-string v4, "isBusy return false,because activityInfo is null!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1           #ret:Z
    :goto_0
    return v1

    .line 204
    .restart local v1       #ret:Z
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v2

    .line 205
    .local v2, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->isTaskBusy()Z

    move-result v1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDetailTask(Ljava/lang/String;)Z
    .locals 2
    .parameter "activityName"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mActivityMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v0

    .line 493
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mediatek/filemanager/service/DetailInfoTask;

    if-eqz v1, :cond_0

    .line 494
    const/4 v1, 0x1

    .line 496
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listFiles(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 6
    .parameter "activityName"
    .parameter "path"
    .parameter "listener"

    .prologue
    .line 408
    const-string v1, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFiles,activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "FileManagerService"

    const-string v3, "listFiles, cancel other background task..."

    invoke-static {v1, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v0

    .line 416
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->removeListener()V

    .line 418
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 421
    .end local v0           #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    :cond_0
    const-string v1, "FileManagerService"

    const-string v3, "listFiles,do list."

    invoke-static {v1, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v2

    .line 423
    .local v2, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFilterType()I

    move-result v5

    .line 424
    .local v5, filterType:I
    if-eqz v2, :cond_1

    .line 425
    const-string v1, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFiles fiterType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Lcom/mediatek/filemanager/service/ListFileTask;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/filemanager/service/ListFileTask;-><init>(Landroid/content/Context;Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Ljava/lang/String;I)V

    .line 427
    .restart local v0       #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 428
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 431
    .end local v0           #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 186
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/filemanager/utils/DrmManager;->init(Landroid/content/Context;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mBinder:Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 154
    new-instance v0, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;-><init>(Lcom/mediatek/filemanager/service/FileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService;->mBinder:Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;

    .line 155
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method public pasteFiles(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 7
    .parameter "activityName"
    .parameter
    .parameter "dstFolder"
    .parameter "type"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const/4 v6, 0x0

    const/16 v5, -0x9

    .line 349
    const-string v2, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " pasteFiles Start,activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const/16 v2, -0x64

    invoke-interface {p5, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/mediatek/filemanager/service/FileManagerService;->filterPasteList(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 355
    const/4 v2, -0x8

    invoke-interface {p5, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 357
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    .line 359
    .local v1, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    if-nez v1, :cond_3

    .line 360
    const-string v2, "FileManagerService"

    const-string v3, "mFileInfoManagerMap.get FileInfoManager = null"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-interface {p5, v5}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    .line 365
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 366
    packed-switch p4, :pswitch_data_0

    .line 384
    invoke-interface {p5, v5}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/mediatek/filemanager/service/FileManagerService;->isCutSamePath(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    const/16 v2, -0xc

    invoke-interface {p5, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    goto :goto_0

    .line 372
    :cond_4
    new-instance v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;

    .end local v0           #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 374
    .restart local v0       #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 375
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 378
    :pswitch_1
    new-instance v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;

    .end local v0           #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 380
    .restart local v0       #task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 381
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reconnected(Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 4
    .parameter "activityName"
    .parameter "listener"

    .prologue
    .line 479
    const-string v1, "FileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnected,activityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getTask()Lcom/mediatek/filemanager/service/BaseAsyncTask;

    move-result-object v0

    .line 481
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p2}, Lcom/mediatek/filemanager/service/BaseAsyncTask;->setListener(Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 484
    :cond_0
    return-void
.end method

.method public rename(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 7
    .parameter "activityName"
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "listener"

    .prologue
    .line 265
    const-string v2, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rename Start,activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/16 v2, -0x64

    invoke-interface {p4, v2}, Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;->onTaskResult(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    .line 272
    .local v1, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFilterType()I

    move-result v6

    .line 273
    .local v6, filterType:I
    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 276
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 277
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V
    .locals 6
    .parameter "activityName"
    .parameter "searchName"
    .parameter "path"
    .parameter "operationEvent"

    .prologue
    .line 554
    const-string v2, "FileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search, activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",searchName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->getFileInfoManager()Lcom/mediatek/filemanager/FileInfoManager;

    move-result-object v1

    .line 561
    .local v1, fileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;
    if-eqz v1, :cond_0

    .line 562
    new-instance v0, Lcom/mediatek/filemanager/service/SearchTask;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/filemanager/service/SearchTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 564
    .local v0, task:Lcom/mediatek/filemanager/service/BaseAsyncTask;
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setTask(Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    .line 565
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setListType(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "activityName"

    .prologue
    .line 227
    invoke-direct {p0, p2}, Lcom/mediatek/filemanager/service/FileManagerService;->getActivityInfo(Ljava/lang/String;)Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/service/FileManagerService$FileManagerActivityInfo;->setFilterType(I)V

    .line 228
    return-void
.end method
