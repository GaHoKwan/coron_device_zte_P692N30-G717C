.class Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;
.super Ljava/lang/Thread;
.source "BluetoothFtpLocalBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROOT:Ljava/lang/String; = "/mnt"

.field protected static final RESULT_FAIL:I = 0x1

.field protected static final RESULT_SUCCEED:I = 0x0

.field private static final SDCARD:Ljava/lang/String; = "sdcard"

.field private static final TAG:Ljava/lang/String; = "GetLocalContentThread"


# instance fields
.field private mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;

.field private mPath:Ljava/io/File;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;)V
    .locals 1
    .parameter "path"
    .parameter "r"
    .parameter "l"

    .prologue
    const/4 v0, 0x0

    .line 551
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 543
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    .line 544
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mResolver:Landroid/content/ContentResolver;

    .line 545
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    .line 553
    iput-object p2, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mResolver:Landroid/content/ContentResolver;

    .line 554
    iput-object p3, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;

    .line 556
    invoke-static {}, Lcom/mediatek/bluetooth/util/SystemUtils;->getMountPointPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mRoot:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mRoot:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    const-string v0, "/mnt"

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mRoot:Ljava/lang/String;

    .line 560
    :cond_0
    return-void
.end method

.method private declared-synchronized postResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;

    invoke-interface {v0, p1}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;->onThreadResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_0
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isDone(Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;)Z
    .locals 2
    .parameter "l"

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 567
    :goto_0
    monitor-exit p0

    return v0

    .line 566
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    const/4 v0, 0x0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener()V
    .locals 1

    .prologue
    .line 572
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mListener:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 582
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v14, values:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 585
    .local v5, files:[Ljava/io/File;
    const/4 v9, 0x0

    .line 588
    .local v9, result:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v16, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 593
    .local v12, strPath:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 594
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->postResult(I)V

    .line 664
    .end local v12           #strPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 598
    .restart local v12       #strPath:Ljava/lang/String;
    :cond_0
    move-object v1, v5

    .local v1, arr$:[Ljava/io/File;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v1, v6

    .line 600
    .local v4, f:Ljava/io/File;
    const/4 v13, -0x1

    .line 601
    .local v13, type:I
    const-wide/16 v10, 0x0

    .line 602
    .local v10, size:J
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 604
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 598
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 608
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mRoot:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 610
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 611
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->getTypeCode(Ljava/lang/String;)I

    move-result v13

    .line 612
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, date:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 615
    const-string v15, "name"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v15, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v15, "modified"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v15, "size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v16, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 658
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #date:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #size:J
    .end local v12           #strPath:Ljava/lang/String;
    .end local v13           #type:I
    :catch_0
    move-exception v3

    .line 659
    .local v3, ex:Ljava/lang/Exception;
    const-string v15, "GetLocalContentThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[BT][FTP] Failed to get local folder content. Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v9, 0x1

    .line 663
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->postResult(I)V

    goto/16 :goto_0

    .line 624
    .restart local v1       #arr$:[Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #size:J
    .restart local v12       #strPath:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 625
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 626
    .restart local v8       #name:Ljava/lang/String;
    const/16 v13, 0xa

    .line 627
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    .line 629
    .restart local v2       #date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mRoot:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 630
    const-string v15, "name"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v15, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v15, "modified"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 635
    :cond_5
    if-eqz v8, :cond_1

    const-string v15, "sdcard"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 636
    const-string v15, "name"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v15, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const-string v15, "modified"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 646
    .end local v2           #date:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_6
    const-string v15, "GetLocalContentThread"

    const-string v16, "Unknown Type"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 654
    .end local v1           #arr$:[Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #size:J
    .end local v12           #strPath:Ljava/lang/String;
    .end local v13           #type:I
    :cond_7
    const-string v15, "GetLocalContentThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[BT][FTP] The path is not a directory: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->mPath:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    const/4 v9, 0x1

    goto/16 :goto_4
.end method
