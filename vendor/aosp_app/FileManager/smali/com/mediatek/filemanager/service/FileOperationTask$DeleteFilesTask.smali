.class Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;
.super Lcom/mediatek/filemanager/service/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteFilesTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteFilesTask"


# instance fields
.field private final mDeletedFilesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/filemanager/FileInfoManager;",
            "Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p4, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V

    .line 343
    iput-object p4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;->mDeletedFilesInfo:Ljava/util/List;

    .line 344
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 21
    .parameter "params"

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    monitor-enter v18

    .line 349
    :try_start_0
    const-string v2, "DeleteFilesTask"

    const-string v3, "doInBackground..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v12, deletefileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v17, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;-><init>()V

    .line 352
    .local v17, updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;->mDeletedFilesInfo:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllDeleteFiles(Ljava/util/List;Ljava/util/List;)I

    move-result v16

    .line 353
    .local v16, ret:I
    if-gez v16, :cond_0

    .line 354
    const-string v2, "DeleteFilesTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground,ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v18

    .line 391
    :goto_0
    return-object v2

    .line 358
    :cond_0
    new-instance v11, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-direct {v11, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 360
    .local v11, deleteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v10, deleteFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;->mDeletedFilesInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/filemanager/FileInfo;

    .line 362
    .local v14, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v14}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v10, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 392
    .end local v10           #deleteFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    .end local v11           #deleteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    .end local v12           #deletefileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .end local v14           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #ret:I
    .end local v17           #updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 364
    .restart local v10       #deleteFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    .restart local v11       #deleteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    .restart local v12       #deletefileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #ret:I
    .restart local v17       #updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    :cond_1
    :try_start_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotal(J)V

    .line 365
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotalNumber(J)V

    .line 367
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v3, ""

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getProgress()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 371
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 372
    .local v13, file:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    invoke-virtual {v11}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 374
    const-string v2, "DeleteFilesTask"

    const-string v3, "doInBackground,user cancel it."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v18

    goto/16 :goto_0

    .line 377
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/filemanager/service/FileOperationTask;->deleteFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v13}, Lcom/mediatek/filemanager/service/FileOperationTask;->removeItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V

    .line 381
    :cond_4
    const-wide/16 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 382
    const-wide/16 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 383
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->needUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getProgress()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 389
    .end local v13           #file:Ljava/io/File;
    :cond_5
    invoke-virtual {v11}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 390
    const-string v2, "DeleteFilesTask"

    const-string v3, "doInBackground,return sucsess.."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
