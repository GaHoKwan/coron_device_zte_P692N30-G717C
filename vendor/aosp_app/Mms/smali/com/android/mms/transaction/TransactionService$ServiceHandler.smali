.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 761
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 762
    return-void
.end method

.method private decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 765
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 766
    const-string v0, "EVENT_QUIT"

    .line 776
    :goto_0
    return-object v0

    .line 767
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 768
    const-string v0, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    goto :goto_0

    .line 769
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 770
    const-string v0, "EVENT_TRANSACTION_REQUEST"

    goto :goto_0

    .line 771
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 772
    const-string v0, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    goto :goto_0

    .line 773
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 774
    const-string v0, "EVENT_NEW_INTENT"

    goto :goto_0

    .line 776
    :cond_4
    const-string v0, "unknown message.what"

    goto :goto_0
.end method

.method private decodeTransactionType(I)Ljava/lang/String;
    .locals 1
    .parameter "transactionType"

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 781
    const-string v0, "NOTIFICATION_TRANSACTION"

    .line 789
    :goto_0
    return-object v0

    .line 782
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 783
    const-string v0, "RETRIEVE_TRANSACTION"

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 785
    const-string v0, "SEND_TRANSACTION"

    goto :goto_0

    .line 786
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 787
    const-string v0, "READREC_TRANSACTION"

    goto :goto_0

    .line 789
    :cond_3
    const-string v0, "invalid transaction type"

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 16
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    const-string v11, "Mms/Txn"

    const-string v12, "process Transaction"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/4 v7, 0x3

    .line 1499
    .local v7, requestResult:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    .line 1501
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z
    invoke-static {v11, v13}, Lcom/android/mms/transaction/TransactionService;->access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/transaction/Transaction;

    .line 1504
    .local v9, t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1505
    const-string v11, "Mms:transaction"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1506
    const-string v11, "TransactionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transaction already pending: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_1
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Process Transaction: already pending "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const/4 v11, 0x1

    monitor-exit v12

    .line 1714
    .end local v9           #t:Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v11

    .line 1514
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/transaction/Transaction;

    .line 1515
    .restart local v9       #t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1516
    const-string v11, "Mms:transaction"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1517
    const-string v11, "TransactionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicated transaction: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_4
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Process Transaction: Duplicated transaction"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_0

    .line 1691
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1526
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x7

    :try_start_1
    invoke-static {v11}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 1529
    .local v6, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/mediatek/mms/ext/IMmsTransaction;->isGminiMultiTransactionEnabled()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1532
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1533
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add to pending, Processing size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",is waiting conxn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const/4 v11, 0x1

    monitor-exit v12

    goto/16 :goto_0

    .line 1541
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1542
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processing size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", is waiting conxn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :cond_9
    const-string v11, "Mms:transaction"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1571
    const-string v11, "TransactionService"

    const-string v13, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_a
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    if-eqz v11, :cond_d

    .line 1576
    const-string v11, "Mms/Txn"

    const-string v13, "***Canceling download in processTransaction!"

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->cancelTransaction(Lcom/android/mms/transaction/Transaction;)V
    invoke-static {v11, v0}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V

    .line 1578
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 1544
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1545
    const-string v11, "Mms/Txn"

    const-string v13, "Wating PDP and add to pending"

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    const/4 v11, 0x1

    monitor-exit v12

    goto/16 :goto_0

    .line 1548
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 1549
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processing size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/transaction/Transaction;

    .line 1552
    .local v10, transactionInProcess:Lcom/android/mms/transaction/Transaction;
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pending(0).simId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", this simId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    iget v13, v10, Lcom/android/mms/transaction/Transaction;->mSimId:I

    if-eq v11, v13, :cond_9

    .line 1557
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    const/4 v11, 0x1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1583
    .end local v10           #transactionInProcess:Lcom/android/mms/transaction/Transaction;
    :cond_d
    const/4 v1, 0x0

    .line 1585
    .local v1, connectivityResult:I
    const/4 v5, 0x0

    .line 1587
    .local v5, isConnectivityVariable:Z
    :try_start_2
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v14, v14

    invoke-static {v13, v14, v15}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isDataConnectivityPossibleGemini(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 1599
    :goto_1
    :try_start_3
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isConnectivityVariable="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isDuringCall()Z
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v11, :cond_e

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/SendTransaction;

    if-nez v11, :cond_e

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v11, :cond_10

    .line 1604
    :cond_e
    const/4 v1, 0x2

    .line 1613
    :goto_2
    move v7, v1

    .line 1616
    const/4 v11, 0x1

    if-ne v1, v11, :cond_11

    .line 1622
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v11, v13}, Lcom/android/mms/transaction/TransactionService;->access$1802(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1630
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v11

    const/4 v13, 0x1

    invoke-interface {v11, v13}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setWaitingDataCnxn(Z)V

    .line 1631
    const-string v11, "Mms:transaction"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1632
    const-string v11, "TransactionService"

    const-string v13, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_f
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPending.size()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const/4 v11, 0x1

    monitor-exit v12

    goto/16 :goto_0

    .line 1590
    :catch_0
    move-exception v3

    .line 1591
    .local v3, ex:Landroid/os/RemoteException;
    const-string v11, "Mms/Txn"

    const-string v13, "isDataConnectivityPossibleGemini has exception"

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const/4 v5, 0x0

    .line 1597
    goto/16 :goto_1

    .line 1594
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1595
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v11, "Mms/Txn"

    const-string v13, "isDataConnectivityPossibleGemini has NullPointer exception"

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1606
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v11, v13}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivityGemini(I)I

    move-result v1

    goto :goto_2

    .line 1641
    :cond_11
    const/4 v11, 0x2

    if-eq v1, v11, :cond_12

    const/4 v11, 0x3

    if-ne v1, v11, :cond_19

    .line 1645
    :cond_12
    const/4 v11, 0x3

    if-ne v1, v11, :cond_13

    .line 1646
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 1647
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v11

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 1652
    :cond_13
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/ReadRecTransaction;

    if-eqz v11, :cond_14

    .line 1653
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    .line 1654
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 1657
    :cond_14
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/SendTransaction;

    if-nez v11, :cond_15

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v11, :cond_19

    .line 1660
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isDuringCall()Z
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1661
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIdleLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$1900(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1662
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z
    invoke-static {v11, v14}, Lcom/android/mms/transaction/TransactionService;->access$2002(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1663
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1665
    :try_start_5
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DuringCall, transation is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRetainRetryIndexWhenInCall()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1667
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x3

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    .line 1681
    :goto_3
    const/4 v11, 0x0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1663
    :catchall_1
    move-exception v11

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v11

    .line 1669
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_3

    .line 1674
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAllowRetryForPermanentFail()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 1675
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x2

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_3

    .line 1677
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_3

    .line 1686
    :cond_19
    const-string v11, "Mms/Txn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding Processing list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v11, "Mms:transaction"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1688
    const-string v11, "TransactionService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1695
    if-nez v7, :cond_1b

    .line 1696
    const-string v11, "Mms/Txn"

    const-string v12, "request ok, renew connection."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v8

    .line 1700
    .local v8, slotId:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v12, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(II)V
    invoke-static {v11, v12, v8}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;II)V

    .line 1707
    .end local v8           #slotId:I
    :cond_1b
    const-string v11, "Mms:transaction"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 1708
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processTransaction: starting transaction "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1713
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->process()V

    .line 1714
    const/4 v11, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 799
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 800
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling incoming message: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/16 v40, 0x0

    .line 807
    .local v40, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1413
    const-string v5, "Mms/Txn"

    const-string v7, "handleMessage : default"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "what="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v40

    .line 1417
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v4, transaction:Lcom/android/mms/transaction/Transaction;
    :cond_1
    :goto_0
    return-void

    .line 809
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v5, v10}, Lcom/android/mms/transaction/TransactionService;->onNewIntent(Landroid/content/Intent;I)V

    :cond_2
    move-object/from16 v4, v40

    .line 1417
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 813
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    move-object/from16 v4, v40

    .line 814
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 818
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_2
    const-string v5, "Mms/Txn"

    const-string v7, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 820
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 821
    monitor-exit v7

    move-object/from16 v4, v40

    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 823
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 826
    const-string v5, "TransactionService"

    const-string v7, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_4
    const/16 v32, 0x0

    .line 833
    .local v32, result:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v34

    .line 834
    .local v34, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v34, :cond_5

    .line 835
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TransactionService:SIMInfo is null for slot "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v4, v40

    .line 836
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 823
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v32           #result:I
    .end local v34           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 838
    .restart local v32       #result:I
    .restart local v34       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_5
    :try_start_3
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v35, v0

    .line 839
    .local v35, simId:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivityGemini(I)I

    move-result v32

    .line 845
    if-eqz v32, :cond_7

    .line 848
    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 850
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    const-string v5, "Mms/Txn"

    const-string v7, "remove an invalid timer."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    move-object/from16 v4, v40

    .line 856
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 858
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v34           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v35           #simId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catch_0
    move-exception v19

    .line 859
    .local v19, e:Ljava/io/IOException;
    const-string v5, "TransactionService"

    const-string v7, "Attempt to extend use of MMS connectivity failed"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v40

    .line 860
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 865
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v19           #e:Ljava/io/IOException;
    .restart local v34       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v35       #simId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity(II)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;II)V

    move-object/from16 v4, v40

    .line 867
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 871
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v32           #result:I
    .end local v34           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v35           #simId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_3
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_DATA_STATE_CHANGED! slot="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_8

    .line 876
    const-string v5, "Mms/Txn"

    const-string v7, "between time out over and a new connection request, ignore msg."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v40

    .line 877
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 884
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 886
    const/16 v42, 0x0

    .line 887
    .local v42, trxn:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 888
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_b

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v42, v0

    .line 893
    :goto_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 896
    if-nez v42, :cond_c

    .line 897
    const-string v5, "Mms/Txn"

    const-string v7, "remove a timer which may be created by EVENT_CONTINUE_MMS_CONNECTIVITY"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getWaitingDataCnxn()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 919
    const/16 v18, 0x0

    .line 920
    .local v18, cancelCount:I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/mms/transaction/Transaction;

    .line 921
    .local v39, t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, v39

    iget-boolean v5, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    if-eqz v5, :cond_a

    .line 922
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 923
    const-string v5, "Mms/Txn"

    const-string v10, "***Canceling download after EVENT_DATA_STATE_CHANGED!"

    invoke-static {v5, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v39

    #calls: Lcom/android/mms/transaction/TransactionService;->cancelTransaction(Lcom/android/mms/transaction/Transaction;)V
    invoke-static {v5, v0}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 925
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 891
    .end local v18           #cancelCount:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v39           #t:Lcom/android/mms/transaction/Transaction;
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_b
    :try_start_6
    const-string v5, "Mms/Txn"

    const-string v10, "a timer is created but pending is null!"

    invoke-static {v5, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 893
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 903
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v10, v7

    invoke-static {v5, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v37

    .line 904
    .local v37, slotId:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v37

    if-ne v0, v5, :cond_9

    .line 905
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    const-string v5, "Mms/Txn"

    const-string v7, "gemini normal get msg, remove timer."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 928
    .end local v37           #slotId:I
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #cancelCount:I
    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_d
    :try_start_7
    const-string v5, "Mms/Txn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Canceled transaction: cancelCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_e

    .line 930
    const-string v5, "Mms/Txn"

    const-string v10, "mPending.size() == 0, Cancel all!"

    invoke-static {v5, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    monitor-exit v7

    move-object/from16 v4, v40

    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 933
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_e
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 937
    .end local v18           #cancelCount:I
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object v5

    if-nez v5, :cond_10

    .line 938
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-string v10, "connectivity"

    invoke-virtual {v5, v10}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    #setter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v7, v5}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 940
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object v5

    if-nez v5, :cond_11

    .line 941
    const-string v5, "Mms/Txn"

    const-string v7, "mConnMgr == null "

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v40

    .line 942
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 933
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #cancelCount:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    .line 944
    .end local v18           #cancelCount:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    .line 945
    .local v25, info:Landroid/net/NetworkInfo;
    if-nez v25, :cond_12

    .line 946
    const-string v5, "Mms/Txn"

    const-string v7, "NetworkInfo == null."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v40

    .line 947
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 950
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_12
    new-instance v20, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;-><init>(Landroid/net/NetworkInfo;I)V

    .line 951
    .local v20, encapsulatedInfo:Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;->getSimId()I

    move-result v38

    .line 953
    .local v38, slotOfInfo:I
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newwork info,reason: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ",state:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ",extra info:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ",slot:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->getPendingSize()I
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)I

    move-result v30

    .line 961
    .local v30, pendingSize:I
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_21

    .line 963
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v5, v7, :cond_14

    .line 966
    :cond_13
    if-eqz v30, :cond_14

    .line 968
    const/16 v42, 0x0

    .line 969
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 970
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v42, v0

    .line 971
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v10, v7

    invoke-static {v5, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v37

    .line 973
    .restart local v37       #slotId:I
    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_14

    move-object/from16 v4, v40

    .line 974
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 971
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v37           #slotId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catchall_3
    move-exception v5

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v5

    .line 980
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_14
    const/4 v5, 0x2

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v5, v7, :cond_16

    const-string v5, "noSuchPdp"

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 982
    if-eqz v30, :cond_20

    .line 985
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAllowRetryForPermanentFail()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v7

    const/4 v10, 0x2

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    :goto_4
    move-object/from16 v4, v40

    .line 991
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 988
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v7

    const/4 v10, 0x1

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_4

    .line 993
    :cond_16
    const/4 v5, 0x2

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1c

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v5, v7, :cond_1c

    .line 996
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getWaitingDataCnxn()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 998
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 1001
    :cond_17
    if-eqz v30, :cond_20

    .line 1002
    const-string v5, "Mms/Txn"

    const-string v7, "setTransactionFail TEMPORARY because NetworkInfo.State.DISCONNECTED"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v5, v7}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v42

    .line 1007
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRetainRetryIndexWhenInCall()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1008
    move-object/from16 v0, v42

    instance-of v5, v0, Lcom/android/mms/transaction/SendTransaction;

    if-nez v5, :cond_18

    move-object/from16 v0, v42

    instance-of v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v5, :cond_1a

    .line 1010
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isDuringCall()Z
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v23

    .line 1011
    .local v23, incall:Z
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "incall? "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    if-eqz v23, :cond_19

    .line 1013
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x3

    move-object/from16 v0, v42

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v0, v7}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    .end local v23           #incall:Z
    :goto_5
    move-object/from16 v4, v40

    .line 1027
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1015
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v23       #incall:Z
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x2

    move-object/from16 v0, v42

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v0, v7}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_5

    .line 1019
    .end local v23           #incall:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x2

    move-object/from16 v0, v42

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v0, v7}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_5

    .line 1024
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x2

    move-object/from16 v0, v42

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v0, v7}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    goto :goto_5

    .line 1029
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_1c
    const/4 v5, 0x2

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1d

    const-string v5, "apnFailed"

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1d
    const-string v5, "radioTurnedOff"

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1032
    :cond_1e
    if-eqz v30, :cond_1f

    .line 1034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v7

    const/4 v10, 0x2

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    move-object/from16 v4, v40

    .line 1035
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1037
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_1f
    const-string v5, "Mms/Txn"

    const-string v7, "No pending message."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move-object/from16 v4, v40

    .line 1039
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1041
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_21
    if-eqz v30, :cond_22

    .line 1042
    const/16 v42, 0x0

    .line 1043
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1044
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v42, v0

    .line 1045
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1046
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v10, v7

    invoke-static {v5, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v37

    .line 1047
    .restart local v37       #slotId:I
    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_22

    .line 1048
    const-string v5, "Mms/Txn"

    const-string v7, "the connected slot not the one needed."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v40

    .line 1049
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1045
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v37           #slotId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catchall_4
    move-exception v5

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v5

    .line 1054
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_22
    const-string v5, "2GVoiceCallEnded"

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1055
    if-eqz v30, :cond_23

    .line 1056
    const/16 v42, 0x0

    .line 1057
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1058
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object/from16 v42, v0

    .line 1059
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1062
    invoke-virtual/range {v42 .. v42}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v5

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v5, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransactionGemini(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    .line 1069
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    :cond_23
    const/16 v33, 0x0

    .line 1071
    .local v33, settings:Lcom/android/mms/transaction/TransactionSettings;
    const/16 v35, 0x0

    .line 1073
    .restart local v35       #simId:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v26

    .line 1074
    .local v26, mListSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    if-eqz v26, :cond_24

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_25

    :cond_24
    move-object/from16 v4, v40

    .line 1075
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1059
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v26           #mListSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    .end local v33           #settings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v35           #simId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v42       #trxn:Lcom/android/mms/transaction/Transaction;
    :catchall_5
    move-exception v5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v5

    .line 1078
    .end local v42           #trxn:Lcom/android/mms/transaction/Transaction;
    .restart local v26       #mListSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    .restart local v33       #settings:Lcom/android/mms/transaction/TransactionSettings;
    .restart local v35       #simId:I
    :cond_25
    const/16 v35, 0x0

    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_26

    .line 1079
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v5

    move/from16 v0, v38

    if-ne v5, v0, :cond_27

    .line 1080
    new-instance v33, Lcom/android/mms/transaction/TransactionSettings;

    .end local v33           #settings:Lcom/android/mms/transaction/TransactionSettings;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v5, v7, v1}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1085
    .restart local v33       #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_26
    if-nez v33, :cond_28

    move-object/from16 v4, v40

    .line 1086
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1078
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_27
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 1092
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1094
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1095
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1096
    const-string v5, "TransactionService"

    const-string v7, "   empty MMSC url, bail"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_29
    const-string v5, "Mms/Txn"

    const-string v7, "empty MMSC url, bail"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    if-eqz v30, :cond_2a

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v7

    const/4 v10, 0x2

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    :cond_2a
    move-object/from16 v4, v40

    .line 1102
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1109
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v26

    .line 1110
    if-eqz v26, :cond_2c

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    move-object/from16 v4, v40

    .line 1111
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1113
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_2d
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v36

    .line 1114
    .local v36, simNumber:I
    const/16 v37, 0x0

    .restart local v37       #slotId:I
    :goto_7
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_2f

    .line 1115
    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v5

    move/from16 v0, v38

    if-ne v5, v0, :cond_30

    .line 1116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v38

    invoke-static {v5, v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v34

    .line 1118
    .restart local v34       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v34, :cond_2e

    .line 1119
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TransactionService:SIMInfo is null for slot "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v40

    .line 1122
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1124
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_2e
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v35, v0

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v33

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransactionGemini(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    .end local v34           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_2f
    move-object/from16 v4, v40

    .line 1135
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1114
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_30
    add-int/lit8 v37, v37, 0x1

    goto :goto_7

    .line 1140
    .end local v20           #encapsulatedInfo:Lcom/mediatek/encapsulation/android/net/EncapsulatedNetworkInfo;
    .end local v25           #info:Landroid/net/NetworkInfo;
    .end local v26           #mListSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    .end local v30           #pendingSize:I
    .end local v33           #settings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v35           #simId:I
    .end local v36           #simNumber:I
    .end local v37           #slotId:I
    .end local v38           #slotOfInfo:I
    :sswitch_4
    const-string v5, "Mms/Txn"

    const-string v7, "EVENT_TRANSACTION_REQUEST"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1144
    .local v6, serviceId:I
    :try_start_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/mms/transaction/TransactionBundle;

    .line 1147
    .local v16, args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1148
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_TRANSACTION_REQUEST MmscUrl="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " proxy port: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_31
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v27

    .line 1155
    .local v27, mmsc:Ljava/lang/String;
    if-eqz v27, :cond_35

    .line 1156
    new-instance v8, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v7

    move-object/from16 v0, v27

    invoke-direct {v8, v0, v5, v7}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1172
    .local v8, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_8
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v41

    .line 1174
    .local v41, transactionType:I
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1175
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeTransactionType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_32
    packed-switch v41, :pswitch_data_0

    .line 1277
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid transaction type: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 1278
    const/4 v4, 0x0

    .line 1328
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    if-nez v4, :cond_1

    .line 1329
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1330
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_33
    const-string v5, "Mms/Txn"

    const-string v7, "finally call endMmsConnectivity"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .local v17, canEnd:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_50

    const/16 v17, 0x1

    .line 1340
    :goto_9
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 1344
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_34

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .end local v8           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v16           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v27           #mmsc:Ljava/lang/String;
    .end local v41           #transactionType:I
    :goto_a
    #calls: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v5, v6}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 1162
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v17           #canEnd:Z
    .restart local v16       #args:Lcom/android/mms/transaction/TransactionBundle;
    .restart local v27       #mmsc:Ljava/lang/String;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_35
    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    int-to-long v10, v7

    invoke-static {v5, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v37

    .line 1163
    .restart local v37       #slotId:I
    new-instance v8, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x0

    move/from16 v0, v37

    invoke-direct {v8, v5, v7, v0}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .restart local v8       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_8

    .line 1182
    .end local v37           #slotId:I
    .restart local v41       #transactionType:I
    :pswitch_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v9

    .line 1184
    .local v9, uri:Ljava/lang/String;
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSACTION REQUEST: NOTIFICATION_TRANSACTION, uri="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    if-eqz v9, :cond_3a

    .line 1188
    new-instance v4, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 1282
    .end local v9           #uri:Ljava/lang/String;
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_36
    :goto_b
    :try_start_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 1284
    if-eqz v4, :cond_37

    .line 1288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v7, v4, Lcom/android/mms/transaction/Transaction;->mSimId:I

    #setter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v5, v7}, Lcom/android/mms/transaction/TransactionService;->access$1402(Lcom/android/mms/transaction/TransactionService;I)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 1292
    :cond_37
    const/4 v4, 0x0

    .line 1328
    if-nez v4, :cond_1

    .line 1329
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1330
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_38
    const-string v5, "Mms/Txn"

    const-string v7, "finally call endMmsConnectivity"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .restart local v17       #canEnd:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4d

    const/16 v17, 0x1

    .line 1340
    :goto_c
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1344
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_39

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    goto/16 :goto_a

    .line 1199
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v17           #canEnd:Z
    .restart local v9       #uri:Ljava/lang/String;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_3a
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v31

    .line 1200
    .local v31, pushData:[B
    new-instance v28, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 1201
    .local v28, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v24

    .line 1203
    .local v24, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v43, 0x82

    .line 1204
    .local v43, type:I
    if-eqz v24, :cond_3b

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v5

    move/from16 v0, v43

    if-ne v5, v0, :cond_3b

    .line 1207
    new-instance v4, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v24

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v15, v0

    move-object v10, v4

    move v12, v6

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_b

    .line 1218
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_3b
    const-string v5, "Mms/Txn"

    const-string v7, "Invalid PUSH data."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 1219
    const/4 v4, 0x0

    .line 1328
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    if-nez v4, :cond_1

    .line 1329
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1330
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_3c
    const-string v5, "Mms/Txn"

    const-string v7, "finally call endMmsConnectivity"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .restart local v17       #canEnd:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4f

    const/16 v17, 0x1

    .line 1340
    :goto_d
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 1344
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_3d

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    goto/16 :goto_a

    .line 1226
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v9           #uri:Ljava/lang/String;
    .end local v17           #canEnd:Z
    .end local v24           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v28           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v31           #pushData:[B
    .end local v43           #type:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :pswitch_1
    :try_start_16
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSACTION REQUEST: RETRIEVE_TRANSACTION uri="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    new-instance v4, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    move v12, v6

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    .line 1239
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    :try_start_17
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1240
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v7

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/RetrieveTransaction;->getRtrTrxnUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v10, 0x1

    invoke-interface {v7, v5, v10}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_b

    .line 1299
    :catch_1
    move-exception v21

    .line 1301
    .end local v8           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v16           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v27           #mmsc:Ljava/lang/String;
    .end local v41           #transactionType:I
    .local v21, ex:Ljava/lang/Exception;
    :goto_e
    :try_start_18
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred while handling message: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v5, v7, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1303
    if-eqz v4, :cond_3f

    .line 1307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v7, v4, Lcom/android/mms/transaction/Transaction;->mSimId:I

    #setter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v5, v7}, Lcom/android/mms/transaction/TransactionService;->access$1402(Lcom/android/mms/transaction/TransactionService;I)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 1311
    :try_start_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_2

    .line 1314
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1317
    :cond_3e
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 1324
    :goto_f
    const/4 v4, 0x0

    .line 1328
    :cond_3f
    if-nez v4, :cond_1

    .line 1329
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1330
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_40
    const-string v5, "Mms/Txn"

    const-string v7, "finally call endMmsConnectivity"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .restart local v17       #canEnd:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4c

    const/16 v17, 0x1

    .line 1340
    :goto_10
    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 1344
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_41

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    goto/16 :goto_a

    .line 1247
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v17           #canEnd:Z
    .end local v21           #ex:Ljava/lang/Exception;
    .restart local v8       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .restart local v16       #args:Lcom/android/mms/transaction/TransactionBundle;
    .restart local v27       #mmsc:Ljava/lang/String;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v41       #transactionType:I
    :pswitch_2
    :try_start_1c
    const-string v5, "Mms/Txn"

    const-string v7, "TRANSACTION REQUEST: SEND_TRANSACTION"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v4, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    move v12, v6

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .line 1259
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_b

    .line 1262
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :pswitch_3
    const-string v5, "Mms/Txn"

    const-string v7, "TRANSACTION REQUEST: READREC_TRANSACTION"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance v4, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    move v12, v6

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1274
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_b

    .line 1296
    :cond_42
    :try_start_1d
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1297
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Started processing of incoming message: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 1328
    :cond_43
    if-nez v4, :cond_1

    .line 1329
    const-string v5, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1330
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_44
    const-string v5, "Mms/Txn"

    const-string v7, "finally call endMmsConnectivity"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .restart local v17       #canEnd:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4e

    const/16 v17, 0x1

    .line 1340
    :goto_11
    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 1344
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_45

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    goto/16 :goto_a

    .line 1317
    .end local v8           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v16           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v17           #canEnd:Z
    .end local v27           #mmsc:Ljava/lang/String;
    .end local v41           #transactionType:I
    .restart local v21       #ex:Ljava/lang/Exception;
    :catchall_6
    move-exception v5

    :try_start_1f
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :try_start_20
    throw v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_2

    .line 1319
    :catch_2
    move-exception v39

    .line 1320
    .local v39, t:Ljava/lang/Throwable;
    :try_start_21
    const-string v5, "TransactionService"

    const-string v7, "Unexpected Throwable."

    move-object/from16 v0, v39

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto/16 :goto_f

    .line 1324
    .end local v39           #t:Ljava/lang/Throwable;
    :catchall_7
    move-exception v5

    const/4 v4, 0x0

    :try_start_22
    throw v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 1328
    .end local v21           #ex:Ljava/lang/Exception;
    :catchall_8
    move-exception v5

    :goto_12
    if-nez v4, :cond_48

    .line 1329
    const-string v7, "Mms:transaction"

    const/4 v10, 0x2

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1330
    const-string v7, "TransactionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction was null. Stopping self: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_46
    const-string v7, "Mms/Txn"

    const-string v10, "finally call endMmsConnectivity"

    invoke-static {v7, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/16 v17, 0x0

    .line 1338
    .restart local v17       #canEnd:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1339
    :try_start_23
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4b

    const/16 v17, 0x1

    .line 1340
    :goto_13
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 1344
    const/4 v7, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_47

    .line 1349
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSimIdForEnd:I
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1358
    :cond_47
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v7, v6}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1328
    .end local v17           #canEnd:Z
    :cond_48
    throw v5

    .line 1365
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v6           #serviceId:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_5
    const-string v5, "Mms/Txn"

    const-string v7, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v5, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransactionGemini(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V

    move-object/from16 v4, v40

    .line 1373
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1377
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->getPendingSize()I
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)I

    move-result v29

    .line 1378
    .local v29, pendSize:I
    if-eqz v29, :cond_49

    .line 1379
    const-string v5, "Mms/Txn"

    const-string v7, "a pending connection request time out, mark temporary failed."

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mIgnoreMsg:Z
    invoke-static {v5, v7}, Lcom/android/mms/transaction/TransactionService;->access$402(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v10, 0x0

    #calls: Lcom/android/mms/transaction/TransactionService;->removePending(I)Lcom/android/mms/transaction/Transaction;
    invoke-static {v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v7

    const/4 v10, 0x2

    #calls: Lcom/android/mms/transaction/TransactionService;->setTransactionFail(Lcom/android/mms/transaction/Transaction;I)V
    invoke-static {v5, v7, v10}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;I)V

    .line 1387
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1388
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$1200()Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    :cond_49
    move-object/from16 v4, v40

    .line 1391
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_0

    .line 1397
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v29           #pendSize:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :sswitch_7
    const-string v5, "Mms/Txn"

    const-string v7, "EVENT_SCAN_PENDING_MMS"

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/16 v37, 0x0

    .restart local v37       #slotId:I
    :goto_14
    sget v5, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    move/from16 v0, v37

    if-ge v0, v5, :cond_2

    .line 1400
    const-string v5, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan slot:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v37

    invoke-static {v5, v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v34

    .line 1402
    .restart local v34       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v34, :cond_4a

    .line 1403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    long-to-int v11, v11

    const/4 v12, 0x1

    #calls: Lcom/android/mms/transaction/TransactionService;->scanPendingMessages(IZIZ)V
    invoke-static {v5, v7, v10, v11, v12}, Lcom/android/mms/transaction/TransactionService;->access$1600(Lcom/android/mms/transaction/TransactionService;IZIZ)V

    .line 1399
    :cond_4a
    add-int/lit8 v37, v37, 0x1

    goto :goto_14

    .line 1340
    .end local v34           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v37           #slotId:I
    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v6       #serviceId:I
    .restart local v17       #canEnd:Z
    :catchall_9
    move-exception v5

    :try_start_24
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    throw v5

    .line 1339
    :cond_4b
    const/16 v17, 0x0

    goto/16 :goto_13

    .line 1340
    .restart local v21       #ex:Ljava/lang/Exception;
    :catchall_a
    move-exception v5

    :try_start_25
    monitor-exit v7
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    throw v5

    .line 1339
    :cond_4c
    const/16 v17, 0x0

    goto/16 :goto_10

    .line 1340
    .end local v21           #ex:Ljava/lang/Exception;
    .restart local v8       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .restart local v16       #args:Lcom/android/mms/transaction/TransactionBundle;
    .restart local v27       #mmsc:Ljava/lang/String;
    .restart local v41       #transactionType:I
    :catchall_b
    move-exception v5

    :try_start_26
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    throw v5

    .line 1339
    :cond_4d
    const/16 v17, 0x0

    goto/16 :goto_c

    .line 1340
    :catchall_c
    move-exception v5

    :try_start_27
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    throw v5

    .line 1339
    :cond_4e
    const/16 v17, 0x0

    goto/16 :goto_11

    .line 1340
    .restart local v9       #uri:Ljava/lang/String;
    .restart local v24       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v28       #parser:Lcom/google/android/mms/pdu/PduParser;
    .restart local v31       #pushData:[B
    .restart local v43       #type:I
    :catchall_d
    move-exception v5

    :try_start_28
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    throw v5

    .line 1339
    :cond_4f
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 1340
    .end local v9           #uri:Ljava/lang/String;
    .end local v24           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v28           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v31           #pushData:[B
    .end local v43           #type:I
    :catchall_e
    move-exception v5

    :try_start_29
    monitor-exit v7
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    throw v5

    .line 1339
    :cond_50
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 1328
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v8           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v16           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v17           #canEnd:Z
    .end local v27           #mmsc:Ljava/lang/String;
    .end local v41           #transactionType:I
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catchall_f
    move-exception v5

    move-object/from16 v4, v40

    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_12

    .line 1299
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v40       #transaction:Lcom/android/mms/transaction/Transaction;
    :catch_3
    move-exception v21

    move-object/from16 v4, v40

    .end local v40           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_e

    .line 807
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
    .end sparse-switch

    .line 1180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 10
    .parameter "transaction"
    .parameter "settings"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1422
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v4, "Mms:transaction"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1424
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    const/4 v2, 0x0

    .line 1428
    .local v2, numProcessTransaction:I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1429
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1431
    const-string v4, "Mms/Txn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPendingTransaction: mPending.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 1434
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v6, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z
    invoke-static {v4, v6}, Lcom/android/mms/transaction/TransactionService;->access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1437
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1438
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    if-eqz p1, :cond_6

    .line 1441
    if-eqz p2, :cond_2

    .line 1442
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1446
    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setWaitingDataCnxn(Z)V

    .line 1452
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 1454
    .local v3, serviceId:I
    const-string v4, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1455
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1459
    const-string v4, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1460
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1482
    .end local v3           #serviceId:I
    :cond_4
    :goto_0
    return-void

    .line 1438
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1464
    .restart local v3       #serviceId:I
    :cond_5
    const/4 p1, 0x0

    .line 1466
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v4, v3}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1469
    .end local v3           #serviceId:I
    :catch_0
    move-exception v1

    .line 1470
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TransactionService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1473
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    if-nez v2, :cond_4

    .line 1474
    const-string v4, "Mms:transaction"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1475
    const-string v4, "TransactionService"

    const-string v5, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_7
    const-string v4, "Mms/Txn"

    const-string v5, "processPendingTransaction:no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method

.method public processPendingTransactionGemini(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;I)V
    .locals 12
    .parameter "transaction"
    .parameter "settings"
    .parameter "simId"

    .prologue
    const/4 v11, 0x0

    .line 1722
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPendingTxn for Gemini: transaction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sim ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/4 v3, 0x0

    .line 1725
    .local v3, numProcessTransaction:I
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 1726
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1727
    const-string v7, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processPendingTxn for Gemini: Pending size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const/4 v6, 0x0

    .line 1729
    .local v6, transactiontemp:Lcom/android/mms/transaction/Transaction;
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1730
    .local v4, pendingSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1731
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #transactiontemp:Lcom/android/mms/transaction/Transaction;
    check-cast v6, Lcom/android/mms/transaction/Transaction;

    .line 1732
    .restart local v6       #transactiontemp:Lcom/android/mms/transaction/Transaction;
    iget v7, v6, Lcom/android/mms/transaction/Transaction;->mSimId:I

    if-ne p3, v7, :cond_4

    .line 1733
    move-object p1, v6

    .line 1734
    const-string v7, "Mms/Txn"

    const-string v9, "processPendingTxn for Gemini, get transaction with same simId"

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v9, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z
    invoke-static {v7, v9}, Lcom/android/mms/transaction/TransactionService;->access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1744
    :cond_0
    if-nez p1, :cond_1

    .line 1745
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 1747
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v9, 0x1

    #setter for: Lcom/android/mms/transaction/TransactionService;->mNeedWait:Z
    invoke-static {v7, v9}, Lcom/android/mms/transaction/TransactionService;->access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1749
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v7, p3}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    .line 1750
    const-string v7, "Mms/Txn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Another SIM:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    .end local v2           #i:I
    .end local v4           #pendingSize:I
    .end local v6           #transactiontemp:Lcom/android/mms/transaction/Transaction;
    :cond_1
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1754
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    if-eqz p1, :cond_6

    .line 1757
    if-eqz p2, :cond_2

    .line 1758
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1766
    :cond_2
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #setter for: Lcom/android/mms/transaction/TransactionService;->mIsWaitingConxn:Z
    invoke-static {v7, v11}, Lcom/android/mms/transaction/TransactionService;->access$1802(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1770
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$600()Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v7

    invoke-interface {v7, v11}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->setWaitingDataCnxn(Z)V

    .line 1773
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v5

    .line 1774
    .local v5, serviceId:I
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPendingTxnGemini: process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1777
    const-string v7, "Mms/Txn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Started deferred processing of transaction  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1792
    .end local v5           #serviceId:I
    :cond_3
    :goto_1
    return-void

    .line 1740
    .restart local v2       #i:I
    .restart local v4       #pendingSize:I
    .restart local v6       #transactiontemp:Lcom/android/mms/transaction/Transaction;
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    const-string v7, "Mms/Txn"

    const-string v9, "processPendingTxn for Gemini, diffrent simId, add to tail"

    invoke-static {v7, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1754
    .end local v2           #i:I
    .end local v4           #pendingSize:I
    .end local v6           #transactiontemp:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1779
    .restart local v5       #serviceId:I
    :cond_5
    const/4 p1, 0x0

    .line 1781
    :try_start_3
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v7, v5}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1783
    .end local v5           #serviceId:I
    :catch_0
    move-exception v1

    .line 1784
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Mms/Txn"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1787
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    if-nez v3, :cond_3

    .line 1788
    const-string v7, "Mms/Txn"

    const-string v8, "processPendingTxnGemini:no more transaction, endMmsConnectivity"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v7, p3}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivityGemini(I)V

    goto :goto_1
.end method
