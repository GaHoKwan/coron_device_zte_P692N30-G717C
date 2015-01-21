.class public Lcom/android/mms/ui/MultiSaveActivity;
.super Landroid/app/Activity;
.source "MultiSaveActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiSaveActivity"


# instance fields
.field private mActionBarText:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

.field private mMultiSaveList:Landroid/widget/ListView;

.field private mSelectionItem:Landroid/view/MenuItem;

.field private mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

.field private needQuit:Z

.field private smode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->needQuit:Z

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MultiSaveActivity;)Lcom/android/mms/ui/MultiSaveListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->updateActionBarText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->cancelSelectAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->save()V

    return-void
.end method

.method private cancelSelectAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MultiSaveActivity;->markCheckedState(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/MultiSaveListAdapter;->setItemsValue(Z[I)V

    .line 377
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->updateActionBarText()V

    .line 379
    :cond_0
    return-void
.end method

.method private copyMedia()Z
    .locals 9

    .prologue
    .line 465
    const/4 v4, 0x1

    .line 467
    .local v4, result:Z
    iget-object v7, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MultiSaveListAdapter;->getItemList()Ljava/util/ArrayList;

    move-result-object v2

    .line 468
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MultiSaveListItemData;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 469
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 470
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v7}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 469
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v7}, Lcom/android/mms/ui/MultiSaveListItemData;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 474
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v7}, Lcom/android/mms/ui/MultiSaveListItemData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, filename:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 476
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/ogg"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dcf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 481
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/MultiSaveActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v4, v7

    goto :goto_1

    .line 482
    :cond_3
    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/MultiSaveActivity;->copyPartNoUri(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v4, v7

    goto :goto_1

    .line 487
    .end local v0           #filename:Ljava/lang/String;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #type:Ljava/lang/String;
    :cond_5
    return v4
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 14
    .parameter "part"
    .parameter "filename"

    .prologue
    const/4 v10, 0x0

    .line 523
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    .line 524
    .local v9, uri:Landroid/net/Uri;
    const-string v11, "Mms/MultiSaveActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyPart, copy part into sdcard uri "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v7, 0x0

    .line 527
    .local v7, input:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 529
    .local v5, fout:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/ui/MultiSaveActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 530
    instance-of v11, v7, Ljava/io/FileInputStream;

    if-eqz v11, :cond_5

    .line 531
    move-object v0, v7

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    .line 534
    .local v4, fin:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/android/mms/ui/MessageUtils;->getStorageFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v3

    .line 535
    .local v3, file:Ljava/io/File;
    if-nez v3, :cond_2

    .line 555
    if-eqz v7, :cond_0

    .line 557
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 564
    :cond_0
    if-eqz v5, :cond_1

    .line 566
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 574
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return v10

    .line 538
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 539
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .local v6, fout:Ljava/io/FileOutputStream;
    const/16 v11, 0x1f40

    :try_start_4
    new-array v1, v11, [B

    .line 540
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 541
    .local v8, size:I
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 542
    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 550
    .end local v1           #buffer:[B
    .end local v8           #size:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 552
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v6           #fout:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while opening or reading stream"

    invoke-static {v11, v12, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    if-eqz v7, :cond_3

    .line 557
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 564
    :cond_3
    if-eqz v5, :cond_1

    .line 566
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 567
    :catch_1
    move-exception v2

    .line 569
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    :goto_3
    invoke-static {v11, v12, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 547
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v6       #fout:Ljava/io/FileOutputStream;
    .restart local v8       #size:I
    :cond_4
    :try_start_8
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v11}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v6

    .line 555
    .end local v1           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v6           #fout:Ljava/io/FileOutputStream;
    .end local v8           #size:I
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz v7, :cond_6

    .line 557
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 564
    :cond_6
    if-eqz v5, :cond_7

    .line 566
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 574
    :cond_7
    const/4 v10, 0x1

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_8

    .line 557
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 564
    :cond_8
    if-eqz v5, :cond_9

    .line 566
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 555
    :cond_9
    throw v11

    .line 558
    :catch_2
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    :goto_5
    invoke-static {v11, v12, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 567
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 569
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_3

    .line 558
    :catch_4
    move-exception v2

    .line 560
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_5

    .line 558
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_5

    .line 567
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 569
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_3

    .line 558
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_5

    .line 567
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 569
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MultiSaveActivity"

    const-string v12, "IOException caught while closing stream"

    goto :goto_3

    .line 555
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v6       #fout:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 550
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    goto :goto_2
.end method

.method private copyPartNoUri(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 8
    .parameter "part"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 494
    const/4 v2, 0x0

    .line 496
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/mms/ui/MessageUtils;->getStorageFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 497
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_1

    .line 498
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "default file is null"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    if-eqz v2, :cond_0

    .line 509
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 517
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 501
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 502
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 507
    if-eqz v3, :cond_2

    .line 509
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 517
    :cond_2
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 503
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 507
    if-eqz v2, :cond_0

    .line 509
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    .line 512
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "IOException caught while closing stream"

    :goto_2
    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    .line 509
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 507
    :cond_3
    throw v5

    .line 510
    :catch_2
    move-exception v0

    .line 512
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "IOException caught while closing stream"

    goto :goto_2

    .line 510
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    :catch_3
    move-exception v0

    .line 512
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "IOException caught while closing stream"

    goto :goto_2

    .line 510
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 512
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/MultiSaveActivity"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 513
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 503
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    if-eqz p1, :cond_2

    .line 172
    const-string v2, "is_all_selected"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, selectedAll:Z
    if-eqz v0, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/ui/MultiSaveListAdapter;->setItemsValue(Z[I)V

    .line 188
    .end local v0           #selectedAll:Z
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v0       #selectedAll:Z
    :cond_1
    const-string v2, "select_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 179
    .local v1, selectedItems:[I
    if-eqz v1, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v2, v4, v1}, Lcom/android/mms/ui/MultiSaveListAdapter;->setItemsValue(Z[I)V

    goto :goto_0

    .line 184
    .end local v0           #selectedAll:Z
    .end local v1           #selectedItems:[I
    :cond_2
    const-string v2, "Mms/MultiSaveActivity"

    const-string v3, "initActivityState, fresh start select all"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/ui/MultiSaveListAdapter;->setItemsValue(Z[I)V

    .line 186
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MultiSaveActivity;->markCheckedState(Z)V

    goto :goto_0
.end method

.method private initListAdapter(J)V
    .locals 26
    .parameter "msgId"

    .prologue
    .line 192
    invoke-static/range {p0 .. p2}, Lcom/android/mms/ui/PduBodyCache;->getPduBody(Landroid/content/Context;J)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    .line 197
    .local v12, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 198
    .local v20, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const/16 v21, 0x0

    .line 200
    .local v21, mSlideshow:Lcom/android/mms/model/SlideshowModel;
    if-nez v12, :cond_0

    .line 201
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "initListAdapter, oops, getPduBody returns null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v24

    .line 206
    .local v24, partNum:I
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MultiSaveListItemData;>;"
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 215
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v10

    .line 217
    .local v10, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 218
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 219
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v14

    .line 220
    .local v14, cl:[B
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 221
    .local v23, name:[B
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v13

    .line 222
    .local v13, ci:[B
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v17

    .line 223
    .local v17, fn:[B
    const/16 v16, 0x0

    .line 224
    .local v16, filename:Ljava/lang/String;
    const/16 v22, 0x0

    .line 225
    .local v22, mSrc:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 226
    new-instance v16, Ljava/lang/String;

    .end local v16           #filename:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    .line 238
    .restart local v16       #filename:Ljava/lang/String;
    :goto_2
    move-object/from16 v22, v16

    .line 240
    const/4 v9, 0x0

    .line 242
    .local v9, PartUri:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 243
    const-string v3, "Mms/MultiSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part Uri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 249
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/mms/ui/MessageUtils;->getContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 252
    .local v25, type:Ljava/lang/String;
    if-eqz v20, :cond_f

    if-eqz v22, :cond_f

    .line 254
    invoke-interface/range {v20 .. v20}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 257
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "In multisave initList"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, "Mms/MultiSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_b

    .line 261
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "save all attachment including slides"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "application/ogg"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v5}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/html"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    new-instance v3, Lcom/android/mms/ui/MultiSaveListItemData;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v3, v0, v5, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v3, "Mms/MultiSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2
    const/16 v19, 0x0

    .local v19, k:I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_9

    .line 282
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "text/html"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    :cond_3
    const/4 v8, 0x0

    .line 285
    .local v8, flag:I
    new-instance v3, Lcom/android/mms/ui/MultiSaveListItemData;

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/MultiSaveListItemData;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;JI)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v8           #flag:I
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 210
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v9           #PartUri:Ljava/lang/String;
    .end local v10           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .end local v13           #ci:[B
    .end local v14           #cl:[B
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #fn:[B
    .end local v18           #i:I
    .end local v19           #k:I
    .end local v22           #mSrc:Ljava/lang/String;
    .end local v23           #name:[B
    .end local v25           #type:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 211
    .local v15, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "Create from pdubody exception!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v15           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v10       #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/FileAttachmentModel;>;"
    .restart local v13       #ci:[B
    .restart local v14       #cl:[B
    .restart local v16       #filename:Ljava/lang/String;
    .restart local v17       #fn:[B
    .restart local v18       #i:I
    .restart local v22       #mSrc:Ljava/lang/String;
    .restart local v23       #name:[B
    :cond_5
    if-eqz v23, :cond_6

    .line 228
    new-instance v16, Ljava/lang/String;

    .end local v16           #filename:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v16       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 229
    :cond_6
    if-eqz v13, :cond_7

    .line 230
    new-instance v16, Ljava/lang/String;

    .end local v16           #filename:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .restart local v16       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 231
    :cond_7
    if-eqz v17, :cond_8

    .line 232
    new-instance v16, Ljava/lang/String;

    .end local v16           #filename:Ljava/lang/String;
    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    .restart local v16       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 234
    :cond_8
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "initListAdapter: filename = null,continue"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_9
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 246
    .restart local v9       #PartUri:Ljava/lang/String;
    :cond_a
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "PartUri = null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 268
    .restart local v25       #type:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_2

    .line 270
    const-string v3, "Mms/MultiSaveActivity"

    const-string v4, "Only save attachment files no including slides"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 272
    if-eqz v9, :cond_c

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 273
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 275
    new-instance v3, Lcom/android/mms/ui/MultiSaveListItemData;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v3, v0, v5, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 290
    .end local v19           #k:I
    :cond_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 291
    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "application/ogg"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v5}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 295
    :cond_e
    new-instance v3, Lcom/android/mms/ui/MultiSaveListItemData;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v3, v0, v5, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 299
    :cond_f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 300
    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "application/ogg"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static/range {v25 .. v25}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v5}, Lcom/android/mms/model/FileAttachmentModel;->isSupportedFile(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 304
    :cond_10
    new-instance v3, Lcom/android/mms/ui/MultiSaveListItemData;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v3, v0, v5, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 308
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v9           #PartUri:Ljava/lang/String;
    .end local v13           #ci:[B
    .end local v14           #cl:[B
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #fn:[B
    .end local v22           #mSrc:Ljava/lang/String;
    .end local v23           #name:[B
    .end local v25           #type:Ljava/lang/String;
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->trimToSize()V

    .line 309
    new-instance v3, Lcom/android/mms/ui/MultiSaveListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/android/mms/ui/MultiSaveListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiSaveActivity;->mMultiSaveList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method private markCheckedState(Z)V
    .locals 6
    .parameter "checkedState"

    .prologue
    .line 451
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mMultiSaveList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 452
    .local v0, count:I
    const-string v3, "Mms/MultiSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "markCheckState count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, item:Lcom/android/mms/ui/MultiSaveListItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mMultiSaveList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #item:Lcom/android/mms/ui/MultiSaveListItem;
    check-cast v2, Lcom/android/mms/ui/MultiSaveListItem;

    .line 456
    .restart local v2       #item:Lcom/android/mms/ui/MultiSaveListItem;
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MultiSaveListItem;->selectItem(Z)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private save()V
    .locals 8

    .prologue
    .line 382
    iget-object v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v4

    if-lez v4, :cond_0

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, succeeded:Z
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->copyMedia()Z

    move-result v3

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, i:Landroid/content/Intent;
    const-string v4, "multi_save_result"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 393
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 395
    .local v1, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const-string v4, "Mms/MultiSaveActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 398
    const-string v4, "Mms/MultiSaveActivity"

    const-string v5, "OUT MMS_SAVE_OTHER_ATTACHMENT"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-wide v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 400
    const-string v4, "Mms/MultiSaveActivity"

    const-string v5, "IN MMS_SAVE_OTHER_ATTACHMENT"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz v3, :cond_1

    const v2, 0x7f0b030c

    .line 402
    .local v2, resId:I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 407
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v2           #resId:I
    .end local v3           #succeeded:Z
    :cond_0
    return-void

    .line 401
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v3       #succeeded:Z
    :cond_1
    const v2, 0x7f0b030d

    goto :goto_0
.end method

.method private selectAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MultiSaveActivity;->markCheckedState(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/MultiSaveListAdapter;->setItemsValue(Z[I)V

    .line 369
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->updateActionBarText()V

    .line 371
    :cond_0
    return-void
.end method

.method private setUpActionBar()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 316
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v5, 0x10

    const/16 v6, 0x1a

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 320
    new-instance v1, Lcom/android/mms/ui/CustomMenu;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 321
    .local v1, customMenu:Lcom/android/mms/ui/CustomMenu;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04004d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 325
    .local v2, customView:Landroid/view/View;
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x77

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 330
    const v5, 0x7f0f007d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mActionBarText:Landroid/widget/Button;

    .line 331
    iget-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mActionBarText:Landroid/widget/Button;

    const v6, 0x7f0e0008

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    .line 332
    iget-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    const v6, 0x7f0f01d0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    .line 334
    new-instance v5, Lcom/android/mms/ui/MultiSaveActivity$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiSaveActivity$2;-><init>(Lcom/android/mms/ui/MultiSaveActivity;)V

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 346
    const v5, 0x7f0f0156

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 347
    .local v3, quit:Landroid/widget/Button;
    new-instance v5, Lcom/android/mms/ui/MultiSaveActivity$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiSaveActivity$3;-><init>(Lcom/android/mms/ui/MultiSaveActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v5, 0x7f0f0157

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 355
    .local v4, save:Landroid/widget/Button;
    new-instance v5, Lcom/android/mms/ui/MultiSaveActivity$4;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiSaveActivity$4;-><init>(Lcom/android/mms/ui/MultiSaveActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->updateActionBarText()V

    .line 363
    return-void
.end method

.method private updateActionBarText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mActionBarText:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mActionBarText:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiSaveListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    const v1, 0x7f0b00b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity;->mSelectionItem:Landroid/view/MenuItem;

    const v1, 0x7f0b0074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 135
    .local v1, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const v4, 0x7f0b0325

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 136
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    const v4, 0x7f04004b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    const v4, 0x7f0f0150

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->mMultiSaveList:Landroid/widget/ListView;

    .line 139
    iget-object v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->mMultiSaveList:Landroid/widget/ListView;

    new-instance v5, Lcom/android/mms/ui/MultiSaveActivity$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiSaveActivity$1;-><init>(Lcom/android/mms/ui/MultiSaveActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, i:Landroid/content/Intent;
    const-wide/16 v2, -0x1

    .line 153
    .local v2, msgId:J
    if-eqz v0, :cond_0

    const-string v4, "msgid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "msgid"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 159
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->getSaveAttachMode(Landroid/content/Intent;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/mms/ui/MultiSaveActivity;->smode:J

    .line 165
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MultiSaveActivity;->initListAdapter(J)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiSaveActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/MultiSaveActivity;->setUpActionBar()V

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 430
    const-string v3, "Mms/MultiSaveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, with bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListAdapter;->isAllSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    const-string v3, "is_all_selected"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListAdapter;->getSelectedNumber()I

    move-result v3

    new-array v0, v3, [I

    .line 439
    .local v0, checkedArray:[I
    iget-object v3, p0, Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListAdapter;->getItemList()Ljava/util/ArrayList;

    move-result-object v2

    .line 440
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MultiSaveListItemData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 441
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiSaveListItemData;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiSaveListItemData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    aput v1, v0, v1

    .line 440
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    :cond_3
    const-string v3, "select_list"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0
.end method
