.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;,
        Lcom/android/exchange/EasOutboxService$SendMailParser;,
        Lcom/android/exchange/EasOutboxService$SendMailEntity;
    }
.end annotation


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SMART_FORWARD:I = 0x2

.field public static final MODE_SMART_REPLY:I = 0x1

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL_TIMEOUT:I = 0xdbba0

.field public static final WHERE_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"


# instance fields
.field private mSendFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0
    .parameter "context"
    .parameter "mailbox"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 14
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, itemId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, collectionId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 288
    .local v5, longId:Ljava/lang/String;
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v10, "messageKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {p0, v8, v9, v10, v11}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, cols:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 292
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 294
    .local v6, refId:J
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "syncServerId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mailboxKey"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "protocolSearchInfo"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v6, v7, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 297
    if-eqz v3, :cond_0

    .line 298
    const/4 v8, 0x0

    aget-object v4, v3, v8

    .line 299
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 301
    .local v0, boxId:J
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "serverId"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v0, v1, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_0

    .line 304
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 310
    .end local v0           #boxId:J
    .end local v6           #refId:J
    :cond_0
    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 311
    :cond_1
    new-instance v8, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    invoke-direct {v8, v4, v2, v5}, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .locals 6
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 250
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendFailed(JI)V
    .locals 3
    .parameter "msgId"
    .parameter "result"

    .prologue
    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 320
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 321
    return-void
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 601
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 602
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 603
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 604
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 605
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    .locals 3
    .parameter "reply"
    .parameter "info"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v1, "SmartReply"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const-string v1, "&LongId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    const-string v1, "SmartForward"

    goto :goto_0

    .line 263
    :cond_1
    const-string v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public run()V
    .locals 15

    .prologue
    .line 519
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange start ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    .line 524
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 525
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 527
    .local v7, cacheDir:Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v13, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 534
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 535
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 536
    .local v9, msgId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 544
    .local v11, result:I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_2

    .line 545
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_11

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .local v12, sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_1

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_1
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_1
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #msgId:J
    .end local v11           #result:I
    :goto_2
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 592
    return-void

    .line 547
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_2
    const/16 v0, 0x17

    if-ne v11, v0, :cond_4

    .line 548
    const/4 v0, 0x4

    :try_start_3
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 563
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_12

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_3

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_3
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_3
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto :goto_2

    .line 550
    :cond_4
    const/16 v0, 0x15

    if-ne v11, v0, :cond_6

    .line 551
    const/4 v0, 0x3

    :try_start_5
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 563
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_13

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_5

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_5
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_4
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto/16 :goto_2

    .line 553
    :cond_6
    const/16 v0, 0x19

    if-ne v11, v0, :cond_8

    .line 554
    const/4 v0, 0x5

    :try_start_7
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 563
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_14

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_7

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_7
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_5
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto/16 :goto_2

    .line 559
    :cond_8
    :try_start_9
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingSucceeded(JI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 563
    .end local v9           #msgId:J
    .end local v11           #result:I
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 566
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 567
    .local v8, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_b
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_f

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_9

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_9
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_6
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto/16 :goto_2

    .line 563
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_a
    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_15

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_b

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_b
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_7
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto/16 :goto_2

    .line 568
    .end local v6           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 569
    .local v8, e:Ljava/lang/Exception;
    :try_start_d
    const-string v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 570
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v0, :cond_10

    .line 575
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v3, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v3, :cond_c

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_c
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_8
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v0, "sync finished"

    goto/16 :goto_2

    .line 572
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ": sync finished"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 573
    const-string v1, "Outbox exited with status "

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 574
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eqz v1, :cond_e

    .line 575
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Performance test][Email] Send Message Exchange end Failed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->getSendableCount(Landroid/content/Context;J)I

    move-result v12

    .line 580
    .restart local v12       #sendableCount:I
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-boolean v4, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    if-eqz v4, :cond_d

    add-int/lit8 v12, v12, 0x1

    .end local v12           #sendableCount:I
    :cond_d
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendingFailed(JI)V

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z

    .line 589
    :goto_9
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 590
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 572
    throw v0

    .line 584
    :cond_e
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .local v8, e:Ljava/io/IOException;
    :cond_f
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .local v8, e:Ljava/lang/Exception;
    :cond_10
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_11
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v9           #msgId:J
    .end local v11           #result:I
    :cond_15
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Email] Send Message Exchange end Success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 35
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 336
    const/16 v30, 0x0

    .line 338
    .local v30, result:I
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 340
    const-string v4, "eas_"

    const-string v5, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v32

    .line 343
    .local v32, tmpFile:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v15

    .line 344
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v15, :cond_1

    const/16 v4, 0x10

    .line 510
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 514
    :cond_0
    :goto_0
    return v4

    .line 347
    :cond_1
    :try_start_1
    iget v0, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    .line 348
    .local v19, flags:I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_9

    const/16 v28, 0x1

    .line 349
    .local v28, reply:Z
    :goto_1
    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_a

    const/16 v20, 0x1

    .line 350
    .local v20, forward:Z
    :goto_2
    const/high16 v4, 0x2

    and-int v4, v4, v19

    if-nez v4, :cond_b

    const/16 v21, 0x1

    .line 353
    .local v21, includeQuotedText:Z
    :goto_3
    const/16 v27, 0x0

    .line 355
    .local v27, referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v21, :cond_3

    if-nez v28, :cond_2

    if-eqz v20, :cond_3

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v27

    .line 359
    :cond_3
    if-eqz v27, :cond_c

    const/4 v8, 0x1

    .line 363
    .local v8, smartSend:Z
    :goto_4
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v4, v4, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    .line 364
    const/4 v8, 0x0

    .line 368
    :cond_4
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    move-wide/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 370
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v33, 0x402c

    cmpl-double v4, v4, v33

    if-ltz v4, :cond_d

    const/16 v22, 0x1

    .line 378
    .local v22, isEas14:Z
    :goto_5
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 379
    .local v11, fileStream:Ljava/io/FileInputStream;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 384
    .local v12, fileLength:J
    const/4 v14, 0x0

    .line 385
    .local v14, modeTag:I
    if-eqz v22, :cond_10

    .line 386
    if-nez v8, :cond_e

    const/16 v25, 0x0

    .line 388
    .local v25, mode:I
    :goto_6
    invoke-static {}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->access$100()[I

    move-result-object v4

    aget v14, v4, v25

    .line 389
    new-instance v9, Lcom/android/exchange/EasOutboxService$SendMailEntity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct/range {v9 .. v15}, Lcom/android/exchange/EasOutboxService$SendMailEntity;-><init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 395
    .end local v25           #mode:I
    .local v9, inputEntity:Lorg/apache/http/HttpEntity;
    :goto_7
    const-string v16, "SendMail"

    .line 396
    .local v16, cmd:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 398
    if-eqz v22, :cond_12

    .line 399
    if-eqz v28, :cond_11

    const-string v16, "SmartReply"

    .line 406
    :cond_5
    :goto_8
    if-nez v22, :cond_6

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&SaveInSent=T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 409
    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send cmd: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 412
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v29

    .line 414
    .local v29, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 415
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    .line 416
    .local v17, code:I
    const/16 v4, 0xc8

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    .line 419
    if-eqz v22, :cond_15

    .line 422
    :try_start_3
    new-instance v26, Lcom/android/exchange/EasOutboxService$SendMailParser;

    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v14}, Lcom/android/exchange/EasOutboxService$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 425
    .local v26, p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/EasOutboxService$SendMailParser;->parse()Z

    .line 427
    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/EasOutboxService$SendMailParser;->getStatus()I

    move-result v31

    .line 428
    .local v31, status:I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendMail error, status: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 429
    invoke-static/range {v31 .. v31}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 430
    const/16 v30, 0x17

    .line 438
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V

    .line 439
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_3 .. :try_end_3} :catch_1

    .line 496
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 510
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 511
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    :cond_8
    move/from16 v4, v30

    .line 440
    goto/16 :goto_0

    .line 348
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v26           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v27           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v28           #reply:Z
    .end local v29           #resp:Lcom/android/exchange/EasResponse;
    .end local v31           #status:I
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 349
    .restart local v28       #reply:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 350
    .restart local v20       #forward:Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 359
    .restart local v21       #includeQuotedText:Z
    .restart local v27       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 373
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 386
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v22       #isEas14:Z
    :cond_e
    if-eqz v28, :cond_f

    const/16 v25, 0x1

    goto/16 :goto_6

    :cond_f
    const/16 v25, 0x2

    goto/16 :goto_6

    .line 392
    :cond_10
    :try_start_5
    new-instance v9, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    goto/16 :goto_7

    .line 399
    .restart local v16       #cmd:Ljava/lang/String;
    :cond_11
    const-string v16, "SmartForward"

    goto/16 :goto_8

    .line 401
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v16

    goto/16 :goto_8

    .line 431
    .restart local v17       #code:I
    .restart local v26       #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .restart local v29       #resp:Lcom/android/exchange/EasResponse;
    .restart local v31       #status:I
    :cond_13
    const/16 v4, 0x96

    move/from16 v0, v31

    if-ne v0, v4, :cond_7

    if-eqz v8, :cond_7

    .line 434
    :try_start_6
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_6 .. :try_end_6} :catch_1

    .line 435
    const/4 v8, 0x0

    .line 496
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 499
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v15           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v19           #flags:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v26           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v27           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v28           #reply:Z
    .end local v29           #resp:Lcom/android/exchange/EasResponse;
    .end local v31           #status:I
    :catch_0
    move-exception v18

    .line 501
    .local v18, e:Ljava/io/IOException;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_8
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 502
    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 510
    .end local v18           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 511
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 510
    :cond_14
    throw v4

    .line 441
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v15       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v16       #cmd:Ljava/lang/String;
    .restart local v17       #code:I
    .restart local v19       #flags:I
    .restart local v20       #forward:Z
    .restart local v21       #includeQuotedText:Z
    .restart local v22       #isEas14:Z
    .restart local v27       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .restart local v28       #reply:Z
    .restart local v29       #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    move-exception v18

    .line 443
    .local v18, e:Lcom/android/exchange/adapter/Parser$EmptyStreamException;
    :try_start_9
    const-string v4, "MSG_Send"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmptyStreamException catched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .end local v18           #e:Lcom/android/exchange/adapter/Parser$EmptyStreamException;
    :cond_15
    sget-boolean v4, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v4, :cond_16

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v23

    .line 449
    .local v23, mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v23, :cond_18

    .line 450
    const-string v4, "MSG_Send"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Message sending successful. messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", From: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", To: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Bcc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v23           #mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_16
    :goto_9
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Deleting message..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    const-wide/16 v4, -0x1

    iget-object v6, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v10}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 496
    :try_start_a
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_2

    .line 510
    :goto_a
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 511
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    :cond_17
    move/from16 v4, v30

    .line 514
    goto/16 :goto_0

    .line 458
    .restart local v23       #mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_18
    :try_start_b
    const-string v4, "MSG_Send"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Message sending successful. But message is not in database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    .line 496
    .end local v17           #code:I
    .end local v23           #mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_1
    move-exception v4

    :try_start_c
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_2

    .line 503
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v15           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v16           #cmd:Ljava/lang/String;
    .end local v19           #flags:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v27           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v28           #reply:Z
    .end local v29           #resp:Lcom/android/exchange/EasResponse;
    :catch_2
    move-exception v24

    .line 504
    .local v24, me:Lcom/android/emailcommon/mail/MessagingException;
    const/16 v4, 0xf

    :try_start_d
    invoke-virtual/range {v24 .. v24}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v5

    if-ne v4, v5, :cond_19

    .line 505
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 507
    :cond_19
    throw v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 471
    .end local v24           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v15       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v16       #cmd:Ljava/lang/String;
    .restart local v17       #code:I
    .restart local v19       #flags:I
    .restart local v20       #forward:Z
    .restart local v21       #includeQuotedText:Z
    .restart local v22       #isEas14:Z
    .restart local v27       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .restart local v28       #reply:Z
    .restart local v29       #resp:Lcom/android/exchange/EasResponse;
    :cond_1a
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    if-eqz v8, :cond_1b

    .line 474
    :try_start_e
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 475
    const/4 v8, 0x0

    .line 496
    :try_start_f
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_5

    .line 477
    :cond_1b
    :try_start_10
    sget-boolean v4, Lcom/android/emailcommon/Logging;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 478
    const-string v4, "MSG_Send"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Message sending failed, MessagId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1c
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message sending failed, code: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 484
    const/16 v4, 0x193

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 485
    const/16 v30, 0x19

    .line 491
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V

    .line 492
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasOutboxService;->mSendFailed:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 496
    :try_start_11
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_a

    .line 486
    :cond_1e
    :try_start_12
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 487
    const/16 v30, 0x16

    goto :goto_b

    .line 488
    :cond_1f
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result v4

    if-eqz v4, :cond_1d

    .line 489
    const/16 v30, 0x17

    goto :goto_b
.end method
