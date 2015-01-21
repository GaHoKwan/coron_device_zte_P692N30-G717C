.class final Lcom/android/exchange/ExchangeService$1;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V
    .locals 6
    .parameter "wrapper"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 301
    .local v0, callbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;,"Lcom/android/emailcommon/utility/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 305
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 307
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/emailcommon/utility/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v4}, Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    .end local v0           #callbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;,"Lcom/android/emailcommon/utility/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    :try_start_2
    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Lcom/android/emailcommon/utility/RemoteCallbackList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 310
    .restart local v0       #callbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;,"Lcom/android/emailcommon/utility/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .restart local v1       #count:I
    .restart local v3       #i:I
    :catch_0
    move-exception v2

    .line 313
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v4, "ExchangeService"

    const-string v5, "Caught RuntimeException in broadcast"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 318
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    .end local v0           #callbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;,"Lcom/android/emailcommon/utility/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 318
    .restart local v0       #callbackList:Lcom/android/emailcommon/utility/RemoteCallbackList;,"Lcom/android/emailcommon/utility/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/RemoteCallbackList;->finishBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_2
    monitor-exit p0

    return-void

    .line 308
    .restart local v1       #count:I
    .restart local v3       #i:I
    :catch_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public fetchMessageCallBack(JII)V
    .locals 6
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 382
    new-instance v0, Lcom/android/exchange/ExchangeService$1$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService$1$5;-><init>(Lcom/android/exchange/ExchangeService$1;JII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 388
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 8
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 326
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadAttachmentStatus messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachmentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/android/exchange/ExchangeService$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/ExchangeService$1$1;-><init>(Lcom/android/exchange/ExchangeService$1;JJII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 334
    return-void
.end method

.method public loadMessageStatus(JII)V
    .locals 0
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 7
    .parameter "messageId"
    .parameter "subject"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 339
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageStatus messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/android/exchange/ExchangeService$1$2;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/ExchangeService$1$2;-><init>(Lcom/android/exchange/ExchangeService$1;JLjava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 347
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 6
    .parameter "accountId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 352
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncMailboxListStatus accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/android/exchange/ExchangeService$1$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService$1$3;-><init>(Lcom/android/exchange/ExchangeService$1;JII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 360
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .locals 6
    .parameter "mailboxId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 365
    const-string v0, "ExchangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncMailboxStatus mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcom/android/exchange/ExchangeService$1$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService$1$4;-><init>(Lcom/android/exchange/ExchangeService$1;JII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 373
    return-void
.end method
