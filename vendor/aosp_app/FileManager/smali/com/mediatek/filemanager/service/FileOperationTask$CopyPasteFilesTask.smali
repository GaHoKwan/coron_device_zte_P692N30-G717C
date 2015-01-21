.class Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;
.super Lcom/mediatek/filemanager/service/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyPasteFilesTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CopyPasteFilesTask"


# instance fields
.field mDstFolder:Ljava/lang/String;

.field mSrcList:Ljava/util/List;
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
.method public constructor <init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "fileInfoManager"
    .parameter "operationEvent"
    .parameter "context"
    .parameter
    .parameter "destFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/filemanager/FileInfoManager;",
            "Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/filemanager/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, src:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    const/4 v0, 0x0

    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V

    .line 666
    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 667
    iput-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 673
    iput-object p4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 674
    iput-object p5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 675
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 24
    .parameter "params"

    .prologue
    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    monitor-enter v21

    .line 680
    :try_start_0
    const-string v2, "CopyPasteFilesTask"

    const-string v3, "doInBackground..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v15, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v20, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;

    invoke-direct/range {v20 .. v20}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;-><init>()V

    .line 684
    .local v20, updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v15, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v19

    .line 685
    .local v19, ret:I
    if-gez v19, :cond_0

    .line 686
    const-string v2, "CopyPasteFilesTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground,ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    .line 765
    :goto_0
    return-object v2

    .line 690
    :cond_0
    new-instance v17, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 694
    .local v17, pasteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 696
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 697
    .local v11, copyFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/filemanager/FileInfo;

    .line 698
    .local v14, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v14}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 766
    .end local v11           #copyFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    .end local v14           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v15           #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #pasteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    .end local v19           #ret:I
    .end local v20           #updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 701
    .restart local v11       #copyFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    .restart local v15       #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #pasteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    .restart local v19       #ret:I
    .restart local v20       #updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->isGreaterThan4G(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->isFat32Disk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    const-string v2, "CopyPasteFilesTask"

    const-string v3, "doInBackground, destination is FAT32."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/16 v2, -0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto :goto_0

    .line 706
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->isEnoughSpace(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 707
    const-string v2, "CopyPasteFilesTask"

    const-string v3, "doInBackground, not enough space."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto :goto_0

    .line 711
    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v3, ""

    const/4 v4, 0x0

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 713
    const/high16 v2, 0x20

    new-array v10, v2, [B

    .line 714
    .local v10, buffer:[B
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v18, pathMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 716
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 719
    .local v13, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 720
    .local v12, dstFile:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 721
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 722
    const-string v2, "CopyPasteFilesTask"

    const-string v3, "doInBackground,user cancel."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto/16 :goto_0

    .line 725
    :cond_6
    if-nez v12, :cond_7

    .line 726
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v5, -0xe

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 730
    :cond_7
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v12}, Lcom/mediatek/filemanager/service/FileOperationTask;->mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v12}, Lcom/mediatek/filemanager/service/FileOperationTask;->addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V

    .line 734
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 735
    const-wide/16 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/mediatek/filemanager/service/FileOperationTask;->updateProgressWithTime(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/io/File;)V

    goto :goto_2

    .line 739
    :cond_8
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_a

    .line 740
    :cond_9
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v5, -0xa

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 742
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 743
    const-wide/16 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    goto/16 :goto_2

    .line 746
    :cond_a
    const-wide/16 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v13, v12, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->copyFile([BLjava/io/File;Ljava/io/File;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v19

    .line 748
    const/4 v2, -0x7

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 749
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 750
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21

    goto/16 :goto_0

    .line 751
    :cond_b
    if-gez v19, :cond_c

    .line 752
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v5, 0x1

    move/from16 v0, v19

    invoke-direct {v4, v0, v5}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 753
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 754
    const-wide/16 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    goto/16 :goto_2

    .line 756
    :cond_c
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v12}, Lcom/mediatek/filemanager/service/FileOperationTask;->addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_2

    .line 761
    .end local v12           #dstFile:Ljava/io/File;
    .end local v13           #file:Ljava/io/File;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 762
    const-string v2, "CopyPasteFilesTask"

    const-string v3, "doInBackground,return success."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileOperationTask$CopyPasteFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
