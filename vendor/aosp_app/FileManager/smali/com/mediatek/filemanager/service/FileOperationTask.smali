.class abstract Lcom/mediatek/filemanager/service/FileOperationTask;
.super Lcom/mediatek/filemanager/service/BaseAsyncTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/service/FileOperationTask$RenameTask;,
        Lcom/mediatek/filemanager/service/FileOperationTask$CreateFolderTask;,
        Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;,
        Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;,
        Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;,
        Lcom/mediatek/filemanager/service/FileOperationTask$DeleteFilesTask;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "FileOperationTask"

.field protected static final TOTAL:I = 0x64


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V
    .locals 2
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/service/BaseAsyncTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 72
    if-nez p3, :cond_0

    .line 73
    const-string v0, "FileOperationTask"

    const-string v1, "construct FileOperationTask exception! "

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iput-object p3, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-direct {v0, p3, p0}, Lcom/mediatek/filemanager/service/MediaStoreHelper;-><init>(Landroid/content/Context;Lcom/mediatek/filemanager/service/BaseAsyncTask;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    .line 79
    return-void
.end method

.method private calcNeedSpace(Ljava/util/List;)J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v2, 0x0

    .line 122
    .local v2, need:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 123
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 125
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-wide v2
.end method


# virtual methods
.method protected addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter "file"
    .parameter "addFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, fileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v0, p3}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    .line 325
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v1, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 327
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_0
    return-void
.end method

.method checkFileNameAndRename(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .parameter "conflictFile"

    .prologue
    const/4 v1, 0x0

    .line 296
    move-object v0, p1

    .line 298
    .local v0, retFile:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string v2, "FileOperationTask"

    const-string v3, "checkFileNameAndRename,cancel."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    return-object v1

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    const-string v1, "FileOperationTask"

    const-string v2, "checkFileNameAndRename,file is not exist."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    invoke-static {v0}, Lcom/mediatek/filemanager/utils/FileUtils;->genrateNextNewName(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 308
    const-string v2, "FileOperationTask"

    const-string v3, "checkFileNameAndRename,retFile is null."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected copyFile([BLjava/io/File;Ljava/io/File;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I
    .locals 21
    .parameter "buffer"
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "updateInfo"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 233
    :cond_0
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile, invalid parameter."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/16 v17, -0xe

    .line 292
    :goto_0
    return v17

    .line 237
    :cond_1
    const/4 v11, 0x0

    .line 238
    .local v11, in:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 239
    .local v15, out:Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 241
    .local v17, ret:I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_4

    .line 242
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile, create new file fail."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 243
    const/16 v18, -0xe

    .line 275
    if-eqz v11, :cond_2

    .line 276
    :try_start_1
    throw v11

    .line 278
    :cond_2
    if-eqz v15, :cond_3

    .line 279
    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 286
    :cond_3
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move/from16 v17, v18

    .line 243
    goto :goto_0

    .line 245
    :cond_4
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 246
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile, src file is not exist."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 247
    const/16 v18, -0xe

    .line 275
    if-eqz v11, :cond_5

    .line 276
    :try_start_3
    throw v11

    .line 278
    :cond_5
    if-eqz v15, :cond_6

    .line 279
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 286
    :cond_6
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move/from16 v17, v18

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_7
    :try_start_4
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 250
    .end local v11           #in:Ljava/io/FileInputStream;
    .local v12, in:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 252
    .end local v15           #out:Ljava/io/FileOutputStream;
    .local v16, out:Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 253
    .local v14, len:I
    :goto_3
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_e

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    const-string v3, "FileOperationTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFile,commit copy file cancelled; break while loop thread id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 259
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,delete fail in copyFile()"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 261
    :cond_8
    const/16 v18, -0x7

    .line 275
    if-eqz v12, :cond_9

    .line 276
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_9
    if-eqz v16, :cond_a

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 286
    :cond_a
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move/from16 v17, v18

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_b
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 265
    int-to-long v3, v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->updateProgressWithTime(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 269
    :catch_0
    move-exception v13

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 270
    .end local v12           #in:Ljava/io/FileInputStream;
    .end local v14           #len:I
    .restart local v11       #in:Ljava/io/FileInputStream;
    .local v13, ioException:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 272
    const/16 v17, -0xe

    .line 275
    if-eqz v11, :cond_c

    .line 276
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_c
    if-eqz v15, :cond_d

    .line 279
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 286
    :cond_d
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v18, v19

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 275
    .end local v11           #in:Ljava/io/FileInputStream;
    .end local v13           #ioException:Ljava/io/IOException;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v12       #in:Ljava/io/FileInputStream;
    .restart local v14       #len:I
    .restart local v16       #out:Ljava/io/FileOutputStream;
    :cond_e
    if-eqz v12, :cond_f

    .line 276
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_f
    if-eqz v16, :cond_10

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 286
    :cond_10
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v18, v19

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 290
    .end local v12           #in:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 274
    .end local v14           #len:I
    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    .line 275
    :goto_8
    if-eqz v11, :cond_11

    .line 276
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 278
    :cond_11
    if-eqz v15, :cond_12

    .line 279
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 286
    :cond_12
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 274
    throw v18

    .line 281
    :catch_1
    move-exception v13

    .line 282
    .restart local v13       #ioException:Ljava/io/IOException;
    :try_start_d
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    goto :goto_9

    .line 286
    .end local v13           #ioException:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 281
    .restart local v13       #ioException:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 282
    :try_start_e
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v18, v19

    goto/16 :goto_6

    .line 286
    :catchall_2
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 281
    .end local v13           #ioException:Ljava/io/IOException;
    :catch_3
    move-exception v13

    .line 282
    .restart local v13       #ioException:Ljava/io/IOException;
    :try_start_f
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    goto/16 :goto_1

    .line 286
    .end local v13           #ioException:Ljava/io/IOException;
    :catchall_3
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 281
    :catch_4
    move-exception v13

    .line 282
    .restart local v13       #ioException:Ljava/io/IOException;
    :try_start_10
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    goto/16 :goto_2

    .line 286
    .end local v13           #ioException:Ljava/io/IOException;
    :catchall_4
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 281
    .end local v11           #in:Ljava/io/FileInputStream;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v12       #in:Ljava/io/FileInputStream;
    .restart local v14       #len:I
    .restart local v16       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v13

    .line 282
    .restart local v13       #ioException:Ljava/io/IOException;
    :try_start_11
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    goto/16 :goto_4

    .line 286
    .end local v13           #ioException:Ljava/io/IOException;
    :catchall_5
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 281
    :catch_6
    move-exception v13

    .line 282
    .restart local v13       #ioException:Ljava/io/IOException;
    :try_start_12
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,io exception 2!"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 284
    const/16 v17, -0xe

    .line 286
    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v18, v19

    goto/16 :goto_7

    .line 286
    .end local v13           #ioException:Ljava/io/IOException;
    :catchall_6
    move-exception v3

    move-object/from16 v18, v3

    const-string v3, "FileOperationTask"

    const-string v4, "copyFile,update 100%."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const-wide/16 v6, 0x64

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 286
    throw v18

    .line 274
    .end local v14           #len:I
    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v3

    move-object/from16 v18, v3

    move-object v11, v12

    .end local v12           #in:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v11           #in:Ljava/io/FileInputStream;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v12       #in:Ljava/io/FileInputStream;
    .restart local v14       #len:I
    .restart local v16       #out:Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #in:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 269
    .end local v14           #len:I
    :catch_7
    move-exception v13

    goto/16 :goto_5

    .end local v11           #in:Ljava/io/FileInputStream;
    .restart local v12       #in:Ljava/io/FileInputStream;
    :catch_8
    move-exception v13

    move-object v11, v12

    .end local v12           #in:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method protected deleteFile(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    if-nez p1, :cond_1

    .line 94
    new-array v2, v0, [Lcom/mediatek/filemanager/service/ProgressInfo;

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v4, -0xd

    invoke-direct {v3, v4, v0}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :goto_0
    move v0, v1

    .line 105
    :cond_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :cond_2
    const-string v2, "FileOperationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile fail,file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-array v2, v0, [Lcom/mediatek/filemanager/service/ProgressInfo;

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v4, -0xf

    invoke-direct {v3, v4, v0}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I
    .locals 7
    .parameter "deleteFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, deleteList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    const-string v5, "FileOperationTask"

    const-string v6, "getAllDeleteFile,cancel. "

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v5, -0x7

    .line 189
    :cond_0
    :goto_0
    return v5

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    invoke-interface {p2, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 178
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_2

    .line 179
    const-string v5, "FileOperationTask"

    const-string v6, "getAllDeleteFile,files is null. "

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v5, -0x1

    goto :goto_0

    .line 182
    :cond_2
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 183
    .local v1, file:Ljava/io/File;
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-interface {p2, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected getAllDeleteFiles(Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, fileInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    .local p2, deleteList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    .line 158
    .local v2, ret:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 159
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllDeleteFile(Ljava/io/File;Ljava/util/List;)I

    move-result v2

    .line 160
    if-gez v2, :cond_0

    .line 164
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return v2
.end method

.method protected getAllFile(Ljava/io/File;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I
    .locals 8
    .parameter "srcFile"
    .parameter
    .parameter "updateInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    const-string v6, "FileOperationTask"

    const-string v7, "getAllFile, cancel."

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v5, -0x7

    .line 228
    :cond_0
    :goto_0
    return v5

    .line 213
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotal(J)V

    .line 215
    const-wide/16 v6, 0x1

    invoke-virtual {p3, v6, v7}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotalNumber(J)V

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 218
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_2

    .line 219
    const/4 v5, -0x1

    goto :goto_0

    .line 221
    :cond_2
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 222
    .local v1, file:Ljava/io/File;
    invoke-virtual {p0, v1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllFile(Ljava/io/File;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v5

    .line 223
    .local v5, ret:I
    if-ltz v5, :cond_0

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ret:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I
    .locals 4
    .parameter
    .parameter
    .parameter "updateInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, srcList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    .local p2, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    .line 195
    .local v2, ret:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 196
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllFile(Ljava/io/File;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v2

    .line 197
    if-gez v2, :cond_0

    .line 203
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    return v2
.end method

.method protected getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter "file"
    .parameter "defPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, pathMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "FileOperationTask"

    const-string v3, "getDstFile."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, curPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    move-object v0, p3

    .line 87
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, dstFile:Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->checkFileNameAndRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method protected isEnoughSpace(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/lang/String;)Z
    .locals 8
    .parameter "updateInfo"
    .parameter "dstFolder"

    .prologue
    .line 145
    const-string v5, "FileOperationTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEnoughSpace,dstFolder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v3

    .line 147
    .local v3, needSpace:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    .line 149
    .local v1, freeSpace:J
    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 150
    const/4 v5, 0x0

    .line 152
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected isFat32Disk(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 140
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v0

    .line 141
    .local v0, mpm:Lcom/mediatek/filemanager/MountPointManager;
    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/MountPointManager;->isFat32Disk(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isGreaterThan4G(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)Z
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v0

    .line 130
    .local v0, size:J
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 131
    const-string v2, "FileOperationTask"

    const-string v3, "isGreaterThan4G true."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x1

    .line 136
    :goto_0
    return v2

    .line 135
    :cond_0
    const-string v2, "FileOperationTask"

    const-string v3, "isGreaterThan4G false."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .parameter
    .parameter "srcFile"
    .parameter "dstFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, pathMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 109
    const-string v2, "FileOperationTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir,srcFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",dstFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    new-array v2, v0, [Lcom/mediatek/filemanager/service/ProgressInfo;

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v4, -0xe

    invoke-direct {v3, v4, v0}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move v0, v1

    .line 116
    goto :goto_0
.end method

.method protected removeItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter "file"
    .parameter "removeFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, fileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    new-instance v0, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v0, p3}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    .line 332
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v1, p0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/FileInfoManager;->removeItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 334
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_0
    return-void
.end method

.method protected updateProgressWithTime(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/io/File;)V
    .locals 10
    .parameter "updateInfo"
    .parameter "file"

    .prologue
    const-wide/16 v3, 0x64

    .line 315
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->needUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getProgress()J

    move-result-wide v0

    mul-long/2addr v0, v3

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotal()J

    move-result-wide v5

    div-long/2addr v0, v5

    long-to-int v2, v0

    .line 317
    .local v2, progress:I
    const/4 v0, 0x1

    new-array v8, v0, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v9, 0x0

    new-instance v0, Lcom/mediatek/filemanager/service/ProgressInfo;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v0, v8, v9

    invoke-virtual {p0, v8}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 320
    .end local v2           #progress:I
    :cond_0
    return-void
.end method
