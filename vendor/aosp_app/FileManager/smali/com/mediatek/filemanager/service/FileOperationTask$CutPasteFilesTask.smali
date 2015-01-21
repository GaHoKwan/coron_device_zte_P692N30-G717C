.class Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;
.super Lcom/mediatek/filemanager/service/FileOperationTask;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CutPasteFilesTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CutPasteFilesTask"


# instance fields
.field private final mDstFolder:Ljava/lang/String;

.field private final mSrcList:Ljava/util/List;
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
    .locals 0
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
    .line 461
    .local p4, src:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/filemanager/service/FileOperationTask;-><init>(Lcom/mediatek/filemanager/FileInfoManager;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;Landroid/content/Context;)V

    .line 463
    iput-object p4, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    .line 464
    iput-object p5, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    .line 465
    return-void
.end method

.method private cutPasteInDiffCard()Ljava/lang/Integer;
    .locals 26

    .prologue
    .line 565
    const-string v3, "CutPasteFilesTask"

    const-string v4, "cutPasteInDiffCard..."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/16 v21, 0x0

    .line 567
    .local v21, ret:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v17, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v23, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;

    invoke-direct/range {v23 .. v23}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;-><init>()V

    .line 569
    .local v23, updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->getAllFileList(Ljava/util/List;Ljava/util/List;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v21

    .line 570
    if-gez v21, :cond_0

    .line 571
    const-string v3, "CutPasteFilesTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cutPasteInDiffCard,ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 660
    :goto_0
    return-object v3

    .line 575
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->isGreaterThan4G(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/filemanager/service/FileOperationTask;->isFat32Disk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    const-string v3, "CutPasteFilesTask"

    const-string v4, "cutPasteInDiffCard, destination is FAT32."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v3, -0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/mediatek/filemanager/service/FileOperationTask;->isEnoughSpace(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 581
    const-string v3, "CutPasteFilesTask"

    const-string v4, "cutPasteInDiffCard,not enough space."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 585
    :cond_2
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 586
    .local v22, romoveFolderFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v3, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const/4 v8, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v3, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 587
    const/high16 v3, 0x20

    new-array v11, v3, [B

    .line 588
    .local v11, buffer:[B
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 589
    .local v20, pathMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_3
    new-instance v19, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 595
    .local v19, pasteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    new-instance v13, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-direct {v13, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 599
    .local v13, deleteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 601
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 602
    .local v12, cutFileInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/io/File;Lcom/mediatek/filemanager/FileInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/filemanager/FileInfo;

    .line 603
    .local v16, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 606
    .end local v16           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 607
    .local v15, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15, v3}, Lcom/mediatek/filemanager/service/FileOperationTask;->getDstFile(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 608
    .local v14, dstFile:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 609
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 610
    invoke-virtual {v13}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 611
    const-string v3, "CutPasteFilesTask"

    const-string v4, "cutPasteInDiffCard,user cancel."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 614
    :cond_6
    if-nez v14, :cond_7

    .line 615
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v4, 0x0

    new-instance v5, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v6, -0xe

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 620
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15, v14}, Lcom/mediatek/filemanager/service/FileOperationTask;->mkdir(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 622
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15, v14}, Lcom/mediatek/filemanager/service/FileOperationTask;->addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V

    .line 624
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 625
    const-wide/16 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 626
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/mediatek/filemanager/service/FileOperationTask;->updateProgressWithTime(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/io/File;)V

    goto/16 :goto_2

    .line 630
    :cond_8
    const-wide/16 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v15, v14, v1}, Lcom/mediatek/filemanager/service/FileOperationTask;->copyFile([BLjava/io/File;Ljava/io/File;Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;)I

    move-result v21

    .line 632
    const-string v3, "CutPasteFilesTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cutPasteInDiffCard ret2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v3, -0x7

    move/from16 v0, v21

    if-ne v0, v3, :cond_9

    .line 634
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 635
    invoke-virtual {v13}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 636
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 637
    :cond_9
    if-gez v21, :cond_a

    .line 638
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mediatek/filemanager/service/ProgressInfo;

    const/4 v4, 0x0

    new-instance v5, Lcom/mediatek/filemanager/service/ProgressInfo;

    const/16 v6, -0xe

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(IZ)V

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 640
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 641
    const-wide/16 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    goto/16 :goto_2

    .line 643
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15, v14}, Lcom/mediatek/filemanager/service/FileOperationTask;->addItem(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)V

    .line 644
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mediatek/filemanager/service/FileOperationTask;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 646
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    .end local v14           #dstFile:Ljava/io/File;
    .end local v15           #file:Ljava/io/File;
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_c
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 653
    .restart local v15       #file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 654
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    goto :goto_3

    .line 657
    .end local v15           #file:Ljava/io/File;
    :cond_d
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 658
    invoke-virtual {v13}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 659
    const-string v3, "CutPasteFilesTask"

    const-string v4, "cutPasteInDiffCard,return success."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private cutPasteInSameCard()Ljava/lang/Integer;
    .locals 20

    .prologue
    .line 496
    const-string v2, "CutPasteFilesTask"

    const-string v3, "cutPasteInSameCard."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v16, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;-><init>()V

    .line 498
    .local v16, updateInfo:Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotal(J)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateTotalNumber(J)V

    .line 501
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v3, ""

    const/4 v4, 0x0

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-long v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 503
    new-instance v15, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-direct {v15, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 505
    .local v15, pasteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    new-instance v10, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-direct {v10, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 509
    .local v10, deleteMediaStoreHelper:Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/filemanager/FileInfo;

    .line 512
    .local v11, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    new-instance v13, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v13, newFile:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/filemanager/service/FileOperationTask;->checkFileNameAndRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    invoke-virtual {v15}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 517
    invoke-virtual {v10}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 518
    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 561
    .end local v11           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v13           #newFile:Ljava/io/File;
    :goto_1
    return-object v2

    .line 521
    .restart local v11       #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .restart local v13       #newFile:Ljava/io/File;
    :cond_0
    if-nez v13, :cond_1

    .line 522
    const-string v2, "CutPasteFilesTask"

    const-string v3, "cutPasteInSameCard,newFile is null."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
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

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v11}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    const-wide/16 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateProgress(J)V

    .line 530
    const-wide/16 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->updateCurrentNumber(J)V

    .line 531
    new-instance v14, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v14, v13}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/io/File;)V

    .line 532
    .local v14, newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/BaseAsyncTask;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v2, v14}, Lcom/mediatek/filemanager/FileInfoManager;->addItem(Lcom/mediatek/filemanager/FileInfo;)V

    .line 537
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/filemanager/service/FileOperationTask;->mMediaProviderHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-virtual {v14}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->updateInMediaStore(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .end local v14           #newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    :goto_2
    invoke-virtual {v11}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/filemanager/service/FileOperationTask;->updateProgressWithTime(Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;Ljava/io/File;)V

    goto/16 :goto_0

    .line 543
    .restart local v14       #newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_2
    invoke-virtual {v11}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->addRecord(Ljava/lang/String;)V

    goto :goto_2

    .line 547
    .end local v14           #newFileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_3
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

    .line 554
    .end local v11           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v13           #newFile:Ljava/io/File;
    :cond_4
    invoke-virtual {v15}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;->updateRecords()V

    .line 555
    invoke-virtual {v10}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;->updateRecords()V

    .line 557
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getCurrentNumber()J

    move-result-wide v2

    long-to-int v7, v2

    .line 558
    .local v7, currentNumber:I
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/filemanager/service/FileOperationTask$UpdateInfo;->getTotalNumber()J

    move-result-wide v8

    .line 559
    .local v8, totalNumber:J
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/filemanager/service/ProgressInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v2, Lcom/mediatek/filemanager/service/ProgressInfo;

    const-string v3, ""

    const/16 v4, 0x64

    const-wide/16 v5, 0x64

    invoke-direct/range {v2 .. v9}, Lcom/mediatek/filemanager/service/ProgressInfo;-><init>(Ljava/lang/String;IJIJ)V

    aput-object v2, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 561
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private isSameRoot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 485
    invoke-static {}, Lcom/mediatek/filemanager/MountPointManager;->getInstance()Lcom/mediatek/filemanager/MountPointManager;

    move-result-object v1

    .line 486
    .local v1, mpm:Lcom/mediatek/filemanager/MountPointManager;
    invoke-virtual {v1, p1}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, srcMountPoint:Ljava/lang/String;
    invoke-virtual {v1, p2}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, dstMountPoint:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    const/4 v3, 0x1

    .line 492
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    .line 470
    :try_start_0
    const-string v0, "CutPasteFilesTask"

    const-string v2, "doInBackground..."

    invoke-static {v0, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "CutPasteFilesTask"

    const-string v2, "doInBackground,src list is empty."

    invoke-static {v0, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v0, -0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    .line 479
    :goto_0
    return-object v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mSrcList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->mDstFolder:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->isSameRoot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->cutPasteInSameCard()Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 479
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->cutPasteInDiffCard()Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 451
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/service/FileOperationTask$CutPasteFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
