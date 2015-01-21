.class Lcom/android/exchange/ExchangeService$2;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-direct {v0}, Lcom/android/exchange/EasSyncService;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public cancelLoadAttachment(J)V
    .locals 8
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExchangeService cancelLoadAttachment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 539
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 540
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 544
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    .line 547
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 548
    .local v4, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v4, :cond_0

    .line 552
    iget-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 553
    .local v2, mailboxId:J
    #getter for: Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$400(Lcom/android/exchange/ExchangeService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 554
    .local v5, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v5, :cond_0

    .line 555
    check-cast v5, Lcom/android/exchange/EasSyncService;

    .end local v5           #service:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v5, p1, p2}, Lcom/android/exchange/EasSyncService;->cancelPartRequest(J)V

    goto :goto_0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 9
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 644
    .local v2, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v2, :cond_0

    .line 663
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 648
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 649
    const/16 v3, 0x44

    invoke-static {v2, p1, p2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 651
    .local v0, accountMailboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    .line 653
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$600()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 654
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v3, v3, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 662
    invoke-static {p1, p2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->removeCache(J)V

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public fetchMessage(J)V
    .locals 7
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    .line 504
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 505
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_0
    const/4 v2, 0x0

    .line 510
    .local v2, res:I
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/android/exchange/utility/FetchMessageUtil;->fetchMessage(Landroid/content/Context;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 515
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v3

    :goto_1
    invoke-interface {v3, p1, p2, v2, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->fetchMessageCallBack(JII)V

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, ex:Ljava/io/IOException;
    const/16 v2, 0x20

    .line 513
    :try_start_1
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetch message exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v3

    goto :goto_1

    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->fetchMessageCallBack(JII)V

    throw v3
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x2

    return v0
.end method

.method public hostChanged(J)V
    .locals 11
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 567
    const-string v7, "ExchangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Host changed due to password changed in account: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 569
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v6, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 574
    .local v6, syncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/exchange/ExchangeService$SyncError;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 575
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 577
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 580
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 581
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 582
    :cond_2
    if-eqz v0, :cond_1

    iget-wide v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_1

    .line 583
    iput-boolean v10, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 584
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    goto :goto_1

    .line 588
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    const/4 v7, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZZ)V
    invoke-static {v1, p1, p2, v7, v10}, Lcom/android/exchange/ExchangeService;->access$500(Lcom/android/exchange/ExchangeService;JZZ)V

    .line 590
    const-string v7, "host changed"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAttachment(JZ)V
    .locals 10
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeService loadAttachment #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    .line 523
    .local v7, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v7, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAttachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found, may be deleted form DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 526
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/16 v5, 0x11

    const/4 v6, 0x0

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAttachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/android/exchange/PartRequest;

    invoke-direct {v0, v7, v9, v9}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 534
    return-void

    .line 528
    :catch_0
    move-exception v8

    .line 529
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAttachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    return-void
.end method

.method public removeCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 633
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 667
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 668
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 669
    :goto_0
    return v1

    :cond_0
    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v1

    goto :goto_0
.end method

.method public sendMail(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 675
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 3
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 600
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMeetingResponse for messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 603
    return-void
.end method

.method public sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "uri"
    .parameter "callback"
    .parameter "saveToSent"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/ExchangeService;->sendMessages(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V

    .line 681
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Lcom/android/emailcommon/utility/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 629
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 596
    return-void
.end method

.method public startSync(JZ)V
    .locals 16
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v5, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 415
    .local v5, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v5, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 417
    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 418
    .local v8, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v8, :cond_0

    .line 419
    iget-wide v10, v8, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v5, v10, v11}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 420
    .local v2, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v2, :cond_0

    .line 423
    if-eqz p3, :cond_4

    .line 424
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v10, v2}, Lcom/android/exchange/ExchangeService;->access$100(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v11, 0x5

    invoke-virtual {v10, v5, v11, v2}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 426
    const-string v10, "User requested sync of account in sync disabled hold; releasing"

    invoke-static {v10}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 432
    :cond_2
    :goto_1
    sget-boolean v10, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-eqz v10, :cond_4

    .line 435
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 437
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v10

    goto :goto_0

    .line 427
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v10, v2}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v11, 0x4

    invoke-virtual {v10, v5, v11, v2}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 430
    const-string v10, "User requested sync of account in security hold; releasing"

    invoke-static {v10}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_4
    iget v10, v8, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    .line 445
    const-string v10, "ExchangeService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get ready to sync outbox for sending mails, mailboxId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v4, cv:Landroid/content/ContentValues;
    const-string v10, "syncServerId"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "mailboxKey=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v4, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    iget-object v10, v5, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 459
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 460
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_5

    .line 461
    iget-wide v10, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v10, v11}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v9

    .line 462
    .local v9, sendableCount:I
    new-instance v10, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v10, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v11, v8, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v10, v11, v12, v9}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingStarted(JI)V

    .line 465
    .end local v9           #sendableCount:I
    :cond_5
    const-string v10, "start outbox"

    invoke-static {v10}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 469
    :try_start_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 470
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 471
    :catch_1
    move-exception v6

    .line 473
    .local v6, ignore:Landroid/os/RemoteException;
    const-string v10, "ExchangeService"

    const-string v11, "RemoteException occured while sending Outbox callback status in startSync method"

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v3           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v6           #ignore:Landroid/os/RemoteException;
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_6
    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 478
    const-string v10, "ExchangeService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Maybe drafts or trash folder, mailboxId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , we don not sync them in EAS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :try_start_2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 483
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 484
    :catch_2
    move-exception v6

    .line 486
    .restart local v6       #ignore:Landroid/os/RemoteException;
    const-string v10, "ExchangeService"

    const-string v11, "RemoteException occured while sending unsyncable Mailbox callback status in startSync method"

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v6           #ignore:Landroid/os/RemoteException;
    :cond_7
    if-eqz p3, :cond_8

    const/16 v10, 0x8

    :goto_2
    const/4 v11, 0x0

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x7

    goto :goto_2
.end method

.method public startSyncForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V
    .locals 1
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->startSyncMailBoxForBT(JLcom/android/emailcommon/service/EmailExternalCalls;)V

    .line 685
    return-void
.end method

.method public stopOof(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 708
    invoke-static {p1, p2}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->stopOof(J)V

    .line 709
    return-void
.end method

.method public stopSync(J)V
    .locals 3
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Sync in mailbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 499
    return-void
.end method

.method public syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;
    .locals 2
    .parameter "accountId"
    .parameter "oofParams"
    .parameter "isGet"

    .prologue
    .line 694
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 695
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 696
    const/4 v1, 0x0

    .line 698
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->syncOof(Landroid/content/Context;JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;

    move-result-object v1

    goto :goto_0
.end method

.method public updateFolderList(J)V
    .locals 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 561
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update folder list of account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 563
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 2
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v0, p1, v1}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
