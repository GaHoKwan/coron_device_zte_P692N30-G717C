.class Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;
.super Ljava/lang/Thread;
.source "WifiTransferMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiTransferMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertShareInfoThread"
.end annotation


# instance fields
.field private final mIsMultiple:Z

.field private final mTypeOfMultipleFiles:Ljava/lang/String;

.field private final mTypeOfSingleFile:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/wifidirect/test/WifiTransferMgr;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiTransferMgr;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter "ssid"
    .parameter "multiple"
    .parameter "typeOfSingleFile"
    .parameter "uri"
    .parameter "typeOfMultipleFiles"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    .line 361
    const-string v0, "Insert ShareInfo Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 362
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    .line 363
    iput-boolean p3, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mIsMultiple:Z

    .line 364
    iput-object p4, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    .line 365
    iput-object p5, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mUri:Ljava/lang/String;

    .line 366
    iput-object p6, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 367
    iput-object p7, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    .line 369
    monitor-enter p1

    .line 370
    :try_start_0
    invoke-static {p1}, Lcom/android/wifidirect/test/WifiTransferMgr;->access$008(Lcom/android/wifidirect/test/WifiTransferMgr;)I

    .line 371
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const-string v0, "FyFtp WifiTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread id is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 371
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertMultipleShare()V
    .locals 11

    .prologue
    .line 397
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 398
    .local v3, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 399
    .local v6, ts:Ljava/lang/Long;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 400
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 401
    .local v4, fileUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    #getter for: Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiTransferMgr;->access$100(Lcom/android/wifidirect/test/WifiTransferMgr;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, contentType:Ljava/lang/String;
    const-string v8, "FyFtp WifiTransferMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got mimetype: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Got uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 408
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v8, "mimetype"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v8, "destination"

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v8, "timestamp"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v8, "FyFtp WifiTransferMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiveDeviceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getReceiveDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v8, "rdevicename"

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getReceiveDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    #getter for: Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiTransferMgr;->access$100(Lcom/android/wifidirect/test/WifiTransferMgr;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 419
    .local v2, contentUri:Landroid/net/Uri;
    const-string v8, "FyFtp WifiTransferMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insert contentUri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  to device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 422
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v4           #fileUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private insertSingleShare()V
    .locals 5

    .prologue
    .line 428
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "mimetype"

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "destination"

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "FyFtp WifiTransferMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveDeviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getReceiveDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, "rdevicename"

    invoke-static {}, Lcom/android/wifidirect/test/WifiTransferMgr;->getReceiveDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    #getter for: Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiTransferMgr;->access$100(Lcom/android/wifidirect/test/WifiTransferMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 437
    .local v0, contentUri:Landroid/net/Uri;
    const-string v2, "FyFtp WifiTransferMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert contentUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  to device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 379
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->ssid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "FyFtp WifiTransferMgr"

    const-string v1, "Target bt device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->mIsMultiple:Z

    if-eqz v0, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->insertMultipleShare()V

    .line 388
    :goto_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->this$0:Lcom/android/wifidirect/test/WifiTransferMgr;

    invoke-static {v0}, Lcom/android/wifidirect/test/WifiTransferMgr;->access$010(Lcom/android/wifidirect/test/WifiTransferMgr;)I

    .line 390
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->insertSingleShare()V

    goto :goto_1
.end method
