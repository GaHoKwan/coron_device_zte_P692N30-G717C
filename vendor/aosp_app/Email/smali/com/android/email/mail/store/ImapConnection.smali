.class Lcom/android/email/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# static fields
.field public static final CAPABILITY_ID:I = 0x1

.field public static final CAPABILITY_NAMESPACE:I = 0x2

.field public static final CAPABILITY_STARTTLS:I = 0x4

.field public static final CAPABILITY_UIDPLUS:I = 0x8

.field public static final CAPABILITY_XLIST:I = 0x10

.field private static final DEBUG_FORCE_SEND_ID:Z = false

.field private static final DISCOURSE_LOGGER_SIZE:I = 0x40

.field private static final IMAP_REDACTED_LOG:Ljava/lang/String; = "[IMAP command redacted]"


# instance fields
.field private mCapabilities:I

.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mIdPhrase:Ljava/lang/String;

.field private mImapStore:Lcom/android/email/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapConnection;->setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private createParser()V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 223
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 224
    return-void
.end method

.method private doGetNamespace(Z)V
    .locals 11
    .parameter "hasNamespaceCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 431
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v7

    if-nez v7, :cond_2

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 435
    .local v6, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string v7, "NAMESPACE"

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 445
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 446
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v7, "NAMESPACE"

    invoke-virtual {v5, v9, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 447
    invoke-virtual {v5, v10}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 448
    .local v3, namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3, v9}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 449
    .local v2, namespace:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v2, v9}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, namespaceString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 451
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathPrefix(Ljava/lang/String;)V

    .line 452
    iget-object v7, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #namespace:Lcom/android/email/mail/store/imap/ImapList;
    .end local v3           #namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #namespaceString:Ljava/lang/String;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 438
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 439
    const-string v7, "Email"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v6           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 441
    .restart local v6       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private doGetPathSeparator()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 490
    .local v3, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 500
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 501
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v4, 0x0

    const-string v5, "LIST"

    invoke-virtual {v2, v4, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 491
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 493
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 494
    const-string v4, "Email"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v3           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 496
    .restart local v3       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private doLogin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 477
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 470
    const-string v2, "Email"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 474
    .end local v0           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 475
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doSendId(ZLjava/lang/String;)V
    .locals 5
    .parameter "hasIdCapability"
    .parameter "capabilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".secureserver.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4, v0, p2}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, mUserAgent:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 408
    :cond_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 413
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 414
    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 2
    .parameter "hasStartTlsCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    if-eqz p1, :cond_0

    .line 518
    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 520
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 521
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 522
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 524
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 526
    :cond_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 527
    const-string v0, "Email"

    const-string v1, "TLS not supported but required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 532
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v3, "CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 370
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string v4, "CAPABILITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    move-object v0, v2

    .line 375
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    if-nez v0, :cond_2

    .line 376
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :cond_2
    return-object v0
.end method

.method private setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 197
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 200
    :cond_0
    const-string v0, "NAMESPACE"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 203
    :cond_1
    const-string v0, "UIDPLUS"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 206
    :cond_2
    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 209
    :cond_3
    const-string v0, "XLIST"

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    .line 212
    :cond_4
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 177
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 180
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 181
    iput-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 182
    return-void
.end method

.method destroyResponses()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 230
    :cond_0
    return-void
.end method

.method executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 360
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCommandResponses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 321
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, toString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    .line 327
    new-instance v4, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v4, v3, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 329
    .end local v0           #alert:Ljava/lang/String;
    .end local v3           #toString:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public isCapable(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/email/mail/store/ImapConnection;->mCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransportOpenForTest()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logLastDiscourse()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 538
    return-void
.end method

.method open()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v6, :cond_1

    .line 110
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->cloneTransport()Lcom/android/email/mail/Transport;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 114
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v7, 0xea60

    invoke-interface {v6, v7}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 116
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->createParser()V

    .line 119
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    .line 122
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 124
    .local v0, capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v6, "STARTTLS"

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 128
    .local v3, hasStartTlsCapability:Z
    invoke-direct {p0, v3}, Lcom/android/email/mail/store/ImapConnection;->doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v5

    .line 129
    .local v5, newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    if-eqz v5, :cond_2

    .line 130
    move-object v0, v5

    .line 136
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapConnection;->setCapabilities(Lcom/android/email/mail/store/imap/ImapResponse;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, capabilityString:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doLogin()V

    .line 146
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapConnection;->doGetNamespace(Z)V

    .line 149
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapConnection;->doGetPathSeparator()V

    .line 151
    iget-object v6, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_0

    .line 152
    .end local v0           #capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v1           #capabilityString:Ljava/lang/String;
    .end local v3           #hasStartTlsCapability:Z
    .end local v5           #newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljavax/net/ssl/SSLException;
    :try_start_1
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 154
    const-string v6, "Email"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    new-instance v6, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->destroyResponses()V

    throw v6

    .line 157
    :catch_1
    move-exception v4

    .line 161
    .local v4, ioe:Ljava/io/IOException;
    :try_start_2
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 162
    const-string v6, "Email"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->setUpdateUICallback(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, readResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->removeUpdateUICallback()V

    .line 249
    return-object v0

    .line 247
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->removeUpdateUICallback()V

    throw v1
.end method

.method sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 263
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_1

    const-string v2, "[IMAP command redacted]"

    :goto_0
    invoke-interface {v3, v0, v2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 267
    return-object v1

    .line 265
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->open()V

    .line 282
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, tag:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 284
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 285
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, commandToSend:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v5, p0, Lcom/android/email/mail/store/ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_1

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v3

    .line 293
    .local v3, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "Expected continuation request"

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    .end local v0           #commandToSend:Ljava/lang/String;
    .end local v3           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_3
    return-object v4
.end method

.method setStore(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "store"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 92
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 93
    iput-object p2, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/email/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/email/mail/store/ImapConnection;->mImapStore:Lcom/android/email/mail/store/ImapStore;

    .line 101
    return-void
.end method
