.class Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;
.super Ljava/lang/Thread;
.source "BluetoothFtpSeveralMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupTransferRoutine"


# instance fields
.field private mDirection:I

.field private mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;

.field private mPath:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStates:[Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;[ZILjava/lang/String;Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;)V
    .locals 2
    .parameter "resolver"
    .parameter "states"
    .parameter "direction"
    .parameter "path"
    .parameter "l"

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mResolver:Landroid/content/ContentResolver;

    .line 554
    iput-object p2, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mStates:[Z

    .line 555
    iput p3, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mDirection:I

    .line 556
    iput-object p4, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mPath:Ljava/lang/String;

    .line 557
    iput-object p5, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;

    .line 559
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mDirection:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 560
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_MARKS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mUri:Landroid/net/Uri;

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mDirection:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 562
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_MARKS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private declared-synchronized postResult(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;

    invoke-interface {v0, p1}, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;->onThreadResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isDone(Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;)Z
    .locals 2
    .parameter "l"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 571
    :goto_0
    monitor-exit p0

    return v0

    .line 570
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    const/4 v0, 0x0

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener()V
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mListener:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 586
    const/16 v12, 0x961

    .line 588
    .local v12, res:I
    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 590
    .local v13, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sColumns:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 593
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 594
    const-string v0, "SetupTransferRoutine"

    const-string v1, "[BT][FTP] No file is markable for transferring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v13           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 598
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 599
    .local v6, count:I
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 601
    .local v11, name_idx:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_3

    .line 603
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 604
    const/4 v10, 0x0

    .line 606
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mStates:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    .line 607
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 609
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mDirection:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 613
    :cond_1
    const-string v0, "name"

    invoke-virtual {v13, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "status"

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string v0, "direction"

    iget v1, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 619
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 602
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 621
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v11           #name_idx:I
    .end local v13           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->postResult(I)V

    goto :goto_0

    .line 623
    :catch_0
    move-exception v8

    .line 624
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "SetupTransferRoutine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v12, 0x962

    goto :goto_2
.end method
