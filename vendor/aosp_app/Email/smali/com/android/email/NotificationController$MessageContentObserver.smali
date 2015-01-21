.class Lcom/android/email/NotificationController$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageContentObserver"
.end annotation


# static fields
.field private static final MESSAGE_ID_AND_FROM_PROJECTION:[Ljava/lang/String; = null

.field private static final MESSAGE_SELECTION:Ljava/lang/String; = "mailboxKey=? AND _id>? AND flagRead=0 AND flagLoaded IN (2,1,4)"


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 992
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fromList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/NotificationController$MessageContentObserver;->MESSAGE_ID_AND_FROM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;JJ)V
    .locals 0
    .parameter "handler"
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1007
    iput-object p2, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    .line 1008
    iput-wide p3, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    .line 1009
    iput-wide p5, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    .line 1010
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 29
    .parameter "selfChange"

    .prologue
    .line 1014
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v4

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v4}, Lcom/android/email/NotificationController;->access$1200(Lcom/android/email/NotificationController;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mSuspendAccountId:J
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1200(Lcom/android/email/NotificationController;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1018
    :cond_0
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/NotificationController;->postVipMailNotification(ZJ)V

    .line 1117
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/ContentObserver;

    .line 1024
    .local v23, observer:Landroid/database/ContentObserver;
    if-nez v23, :cond_2

    .line 1027
    const-string v2, "Email"

    const-string v3, "Received notification when observer data was null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1030
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    .line 1031
    .local v13, account:Lcom/android/emailcommon/provider/Account;
    if-nez v13, :cond_3

    .line 1032
    const-string v2, "Email"

    const-string v3, "Couldn\'t find account for changed message notification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    :cond_3
    iget-wide v0, v13, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageId:J

    move-wide/from16 v25, v0

    .line 1036
    .local v25, oldMessageId:J
    iget v0, v13, Lcom/android/emailcommon/provider/Account;->mNotifiedMessageCount:I

    move/from16 v24, v0

    .line 1038
    .local v24, oldMessageCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1039
    .local v27, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

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

    move-result-object v16

    .line 1043
    .local v16, lastSeenMessageId:Ljava/lang/Long;
    if-nez v16, :cond_4

    .line 1045
    const-string v2, "Email"

    const-string v3, "Couldn\'t find mailbox for changed message notification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1049
    :cond_4
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/NotificationController$MessageContentObserver;->MESSAGE_ID_AND_FROM_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=? AND _id>? AND flagRead=0 AND flagLoaded IN (2,1,4)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_id DESC"

    move-object/from16 v2, v27

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1054
    .local v14, c:Landroid/database/Cursor;
    if-nez v14, :cond_5

    .line 1056
    const-string v2, "Email"

    const-string v3, "#onChange(); NULL response for message id query"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1060
    :cond_5
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 1065
    .local v17, newMessageCount:I
    move-object/from16 v20, v14

    .line 1066
    .local v20, nonVipCurosr:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getVipNotification()Z

    move-result v22

    .line 1067
    .local v22, notifyVip:Z
    if-eqz v22, :cond_8

    .line 1068
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #calls: Lcom/android/email/NotificationController;->filterVipMessages(Landroid/database/Cursor;J)Landroid/database/Cursor;
    invoke-static {v2, v14, v3, v4}, Lcom/android/email/NotificationController;->access$1300(Lcom/android/email/NotificationController;Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v20

    .line 1073
    :goto_1
    const-wide/16 v18, 0x0

    .line 1074
    .local v18, newMessageId:J
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1075
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1077
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1078
    .local v10, newNonVipMessageCount:I
    if-nez v10, :cond_9

    .line 1080
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v2, v3, v4}, Lcom/android/email/NotificationController;->access$900(Lcom/android/email/NotificationController;J)I

    move-result v21

    .line 1081
    .local v21, notificationId:I
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1000(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1107
    .end local v21           #notificationId:I
    :cond_7
    :goto_2
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    .local v15, cv:Landroid/content/ContentValues;
    const-string v2, "notifiedMessageId"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    const-string v2, "notifiedMessageCount"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/high16 v4, 0x1000

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/NotificationController;->postVipMailNotification(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1070
    .end local v10           #newNonVipMessageCount:I
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v18           #newMessageId:J
    :cond_8
    :try_start_1
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    #getter for: Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$1400(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1115
    .end local v17           #newMessageCount:I
    .end local v20           #nonVipCurosr:Landroid/database/Cursor;
    .end local v22           #notifyVip:Z
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1082
    .restart local v10       #newNonVipMessageCount:I
    .restart local v17       #newMessageCount:I
    .restart local v18       #newMessageId:J
    .restart local v20       #nonVipCurosr:Landroid/database/Cursor;
    .restart local v22       #notifyVip:Z
    :cond_9
    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_7

    cmp-long v2, v18, v25

    if-eqz v2, :cond_7

    .line 1085
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

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

    move-result-object v28

    .line 1089
    .local v28, unreadCount:Ljava/lang/Integer;
    if-nez v28, :cond_b

    .line 1090
    const-string v2, "Email"

    const-string v3, "Couldn\'t find unread count for mailbox"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1115
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1098
    :cond_b
    const/4 v12, 0x0

    .line 1099
    .local v12, quietUpdate:Z
    cmp-long v2, v18, v25

    if-gtz v2, :cond_c

    .line 1100
    const/4 v12, 0x1

    .line 1102
    :cond_c
    :try_start_3
    invoke-static {}, Lcom/android/email/NotificationController;->access$1100()Lcom/android/email/NotificationController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mMailboxId:J

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v7, v20

    move-wide/from16 v8, v18

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/NotificationController;->postNotificationForNewMessage(JJLandroid/database/Cursor;JIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
