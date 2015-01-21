.class final Lcom/android/email/NotificationController$3;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->notifyOnBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 1354
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1355
    .local v14, accountId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1200(Lcom/android/email/NotificationController;)J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1200(Lcom/android/email/NotificationController;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1422
    .end local v14           #accountId:J
    :cond_1
    :goto_1
    return-void

    .line 1360
    .restart local v14       #accountId:J
    :cond_2
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/ContentObserver;

    .line 1361
    .local v24, observer:Landroid/database/ContentObserver;
    if-nez v24, :cond_3

    .line 1364
    const-string v2, "NotificationController"

    const-string v3, "Received notification when observer data was null"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1367
    :cond_3
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    .line 1368
    .local v13, account:Lcom/android/emailcommon/provider/Account;
    if-nez v13, :cond_4

    .line 1369
    const-string v2, "NotificationController"

    const-string v3, "Couldn\'t find account for changed message notification"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1372
    :cond_4
    iget-wide v0, v13, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    move-wide/from16 v22, v0

    .line 1373
    .local v22, messageId:J
    iget v10, v13, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    .line 1374
    .local v10, messageCount:I
    if-lez v10, :cond_0

    .line 1375
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v14, v15, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v19

    .line 1377
    .local v19, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v19, :cond_5

    .line 1378
    const-string v2, "NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load INBOX for account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1381
    :cond_5
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    .line 1383
    .local v20, mailboxId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 1384
    .local v25, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lastSeenMessageKey"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v18

    .line 1388
    .local v18, lastSeenMessageId:Ljava/lang/Long;
    if-nez v18, :cond_6

    .line 1390
    const-string v2, "NotificationController"

    const-string v3, "Couldn\'t find mailbox for changed message notification"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1394
    :cond_6
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=? AND _id>? AND flagRead=0 AND flagLoaded IN (2,1,4)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_id DESC"

    move-object/from16 v2, v25

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1399
    .local v16, c:Landroid/database/Cursor;
    if-nez v16, :cond_7

    .line 1401
    const-string v2, "NotificationController"

    const-string v3, "#notifyOnBootCompleted(); NULL response for message id query"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1405
    :cond_7
    :try_start_0
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "unreadCount"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v26

    .line 1409
    .local v26, unreadCount:Ljava/lang/Integer;
    if-nez v26, :cond_8

    .line 1410
    const-string v2, "NotificationController"

    const-string v3, "Couldn\'t find unread count for mailbox"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1413
    :cond_8
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1414
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    move-wide v3, v14

    move-wide/from16 v5, v20

    move-object/from16 v7, v16

    move-wide/from16 v8, v22

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/NotificationController;->postNotificationForNewMessage(JJLandroid/database/Cursor;JIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v26           #unreadCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2
.end method
