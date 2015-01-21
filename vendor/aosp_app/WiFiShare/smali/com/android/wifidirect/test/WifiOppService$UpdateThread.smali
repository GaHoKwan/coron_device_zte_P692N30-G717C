.class Lcom/android/wifidirect/test/WifiOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "WifiOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppService;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    .line 361
    const-string v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 366
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 368
    const/4 v12, 0x0

    .line 370
    .local v12, keepService:Z
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$800(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in WifiOppService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 375
    :cond_0
    :try_start_1
    const-string v0, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingUpdate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppService;->access$900(Lcom/android/wifidirect/test/WifiOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keepUpdateThread is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sListenStarted is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppService;->access$1000(Lcom/android/wifidirect/test/WifiOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$900(Lcom/android/wifidirect/test/WifiOppService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v2, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mUpdateThread:Lcom/android/wifidirect/test/WifiOppService$UpdateThread;
    invoke-static {v0, v2}, Lcom/android/wifidirect/test/WifiOppService;->access$802(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/WifiOppService$UpdateThread;)Lcom/android/wifidirect/test/WifiOppService$UpdateThread;

    .line 380
    if-nez v12, :cond_2

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mListenStarted:Z
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1000(Lcom/android/wifidirect/test/WifiOppService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    monitor-exit v1

    .line 513
    :cond_1
    :goto_1
    return-void

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1100(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateNotification()V

    .line 388
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1100(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->finishNotification()V

    .line 389
    monitor-exit v1

    goto :goto_1

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingUpdate:Z
    invoke-static {v0, v3}, Lcom/android/wifidirect/test/WifiOppService;->access$902(Lcom/android/wifidirect/test/WifiOppService;Z)Z

    .line 392
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 397
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 403
    const/4 v7, 0x0

    .line 405
    .local v7, arrayPos:I
    const/4 v12, 0x0

    .line 406
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    .line 408
    .local v11, isAfterLast:Z
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 424
    .local v10, idColumn:I
    :goto_2
    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1200(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_14

    .line 426
    :cond_4
    if-eqz v11, :cond_6

    .line 430
    const-string v1, "wifiDirect_Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: trimming "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1200(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " @ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z

    .line 436
    :cond_5
    const-string v0, "wifiDirect_Service"

    const-string v1, "UpdateThread.run remove abnormal data. before deleteShare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1500(Lcom/android/wifidirect/test/WifiOppService;I)V

    goto :goto_2

    .line 439
    :cond_6
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 441
    .local v9, id:I
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1200(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_a

    .line 442
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1600(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)V

    .line 443
    const-string v0, "wifiDirect_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: inserting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 445
    const/4 v12, 0x1

    .line 447
    :cond_7
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1700(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    const/4 v12, 0x1

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1800(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    const/4 v12, 0x1

    .line 454
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 455
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 456
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 458
    :cond_a
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1200(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v6, v0, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    .line 460
    .local v6, arrayId:I
    if-ge v6, v9, :cond_c

    .line 461
    const-string v0, "wifiDirect_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: removing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v2, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z

    .line 466
    :cond_b
    const-string v0, "wifiDirect_Service"

    const-string v1, "UpdateThread.run in else case,before deleteShare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1500(Lcom/android/wifidirect/test/WifiOppService;I)V

    goto/16 :goto_2

    .line 468
    :cond_c
    if-ne v6, v9, :cond_10

    .line 471
    const-string v0, "wifiDirect_Service"

    const-string v1, "UpdateThread.run in else case,(arrayId == id)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->userAccepted:Z
    invoke-static {v1}, Lcom/android/wifidirect/test/WifiOppService;->access$1900(Lcom/android/wifidirect/test/WifiOppService;)Z

    move-result v1

    #calls: Lcom/android/wifidirect/test/WifiOppService;->updateShare(Landroid/database/Cursor;IZ)V
    invoke-static {v0, v8, v7, v1}, Lcom/android/wifidirect/test/WifiOppService;->access$2000(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;IZ)V

    .line 473
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 474
    const/4 v12, 0x1

    .line 476
    :cond_d
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1700(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 477
    const/4 v12, 0x1

    .line 479
    :cond_e
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1800(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 480
    const/4 v12, 0x1

    .line 483
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 484
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 485
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 489
    :cond_10
    const-string v0, "wifiDirect_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array update: appending "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1600(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)V

    .line 492
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1300(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1400(Lcom/android/wifidirect/test/WifiOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 493
    const/4 v12, 0x1

    .line 495
    :cond_11
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1700(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 496
    const/4 v12, 0x1

    .line 498
    :cond_12
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/wifidirect/test/WifiOppService;->access$1800(Lcom/android/wifidirect/test/WifiOppService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 499
    const/4 v12, 0x1

    .line 501
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 502
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 509
    .end local v6           #arrayId:I
    .end local v9           #id:I
    :cond_14
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$UpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mNotifier:Lcom/android/wifidirect/test/WifiOppNotification;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppService;->access$1100(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/WifiOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->updateNotification()V

    .line 511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
