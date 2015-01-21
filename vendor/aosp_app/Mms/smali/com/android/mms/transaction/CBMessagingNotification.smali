.class public Lcom/android/mms/transaction/CBMessagingNotification;
.super Ljava/lang/Object;
.source "CBMessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;,
        Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    }
.end annotation


# static fields
.field private static final CB_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_CB_BODY:I = 0x3

.field private static final COLUMN_CB_CHANNEL:I = 0x2

.field private static final COLUMN_CB_ID:I = 0x4

.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator; = null

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(seen = 0)"

.field public static final NOTIFICATION_ID:I = 0x7d

.field private static final TAG:Ljava/lang/String; = "Mms:app"

.field private static final URL_MESSAGES:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/transaction/CBMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/CBMessagingNotification;->CB_STATUS_PROJECTION:[Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/CBMessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/CBMessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 96
    invoke-static/range {p0 .. p11}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/net/Uri;)V

    return-void
.end method

.method private static accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;)I
    .locals 1
    .parameter "set"
    .parameter "info"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 196
    iget v0, p1, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->mCount:I

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 430
    invoke-static {p2, p3, p1}, Lcom/android/mms/ui/MessageUtils;->formatMsgContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 329
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 331
    .local v0, nm:Landroid/app/NotificationManager;
    const-string v1, "Mms:app"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel notification notificationId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 333
    return-void
.end method

.method public static final getCBNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;"
        }
    .end annotation

    .prologue
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 247
    invoke-static {p0, p1, v0, v0}, Lcom/android/mms/transaction/CBMessagingNotification;->getCBNewMessageNotificationInfoBase(Landroid/content/Context;Ljava/util/Set;ZI)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final getCBNewMessageNotificationInfoBase(Landroid/content/Context;Ljava/util/Set;ZI)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    .locals 19
    .parameter "context"
    .parameter
    .parameter "isForGemini"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)",
            "Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 258
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/mms/transaction/CBMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/CBMessagingNotification;->CB_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(seen = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 262
    .local v15, cursor:Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 263
    const/16 v18, 0x0

    .line 297
    :goto_0
    return-object v18

    .line 267
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const/16 v18, 0x0

    .line 297
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 272
    .local v14, channelId:I
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, body:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 274
    .local v8, threadId:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 276
    .local v10, timeMillis:J
    const/4 v1, 0x4

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 279
    .local v16, id:J
    if-nez p2, :cond_2

    .line 280
    invoke-static {v14}, Lcom/android/mms/data/CBMessage;->getCBChannelName(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, address:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    const v6, 0x7f020168

    const/4 v7, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v12

    sget-object v1, Lcom/android/mms/transaction/CBMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v5, p0

    invoke-static/range {v3 .. v13}, Lcom/android/mms/transaction/CBMessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJILandroid/net/Uri;)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-result-object v18

    .line 290
    .local v18, info:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 297
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v8           #threadId:J
    .end local v10           #timeMillis:J
    .end local v14           #channelId:I
    .end local v16           #id:J
    .end local v18           #info:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    :catchall_0
    move-exception v1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1

    .line 282
    .restart local v4       #body:Ljava/lang/String;
    .restart local v8       #threadId:J
    .restart local v10       #timeMillis:J
    .restart local v14       #channelId:I
    .restart local v16       #id:J
    :cond_2
    :try_start_2
    move/from16 v0, p3

    invoke-static {v14, v0}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .restart local v3       #address:Ljava/lang/String;
    goto :goto_1

    .line 297
    .restart local v18       #info:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static final getCBNewMessageNotificationInfoGemini(Landroid/content/Context;Ljava/util/Set;I)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)",
            "Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/mms/transaction/CBMessagingNotification;->getCBNewMessageNotificationInfoBase(Landroid/content/Context;Ljava/util/Set;ZI)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJILandroid/net/Uri;)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;
    .locals 13
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"
    .parameter "uri"

    .prologue
    .line 311
    move-wide/from16 v0, p5

    invoke-static {p2, v0, v1}, Lcom/android/mms/ui/CBMessageListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 312
    .local v3, clickIntent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p0, v2, v4}, Lcom/android/mms/transaction/CBMessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 318
    .local v12, senderInfo:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, senderInfoName:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {p2, p0, v0, p1}, Lcom/android/mms/transaction/CBMessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 323
    .local v6, ticker:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-object v4, p1

    move/from16 v5, p3

    move-wide/from16 v7, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;ILandroid/net/Uri;)V

    return-object v2
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 11
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/CBMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 440
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 463
    :goto_0
    return v7

    .line 443
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 445
    .local v7, count:I
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 447
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 449
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 450
    .local v8, firstId:J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 452
    const-wide/16 v8, 0x0

    .line 456
    :cond_2
    const/4 v0, 0x1

    aput-wide v8, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .end local v8           #firstId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 462
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UndeliveredMessageCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 467
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 471
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static updateAllNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/CBMessagingNotification$1;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/CBMessagingNotification$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 132
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isNew"

    .prologue
    .line 142
    new-instance v0, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/mms/transaction/CBMessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 144
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 145
    .local v2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, count:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/CBMessagingNotification;->getCBNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/CBMessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 149
    const/16 v3, 0x7d

    invoke-static {p0, v3}, Lcom/android/mms/transaction/CBMessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 150
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    const-string v3, "Mms:app"

    const-string v4, "CB message notification is to be delivered!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, p0, p1, v1, v4}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 154
    :cond_0
    return-void
.end method

.method public static updateNewMessageIndicatorGemini(Landroid/content/Context;ZI)V
    .locals 5
    .parameter "context"
    .parameter "isNew"
    .parameter "simId"

    .prologue
    .line 165
    new-instance v0, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/mms/transaction/CBMessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfoComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 167
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 168
    .local v2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, count:I
    invoke-static {p0, v2, p2}, Lcom/android/mms/transaction/CBMessagingNotification;->getCBNewMessageNotificationInfoGemini(Landroid/content/Context;Ljava/util/Set;I)Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/CBMessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 172
    const/16 v3, 0x7d

    invoke-static {p0, v3}, Lcom/android/mms/transaction/CBMessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 173
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    const-string v3, "Mms:app"

    const-string v4, "Gemini CB message notification is to be delivered!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, p0, p1, v1, v4}, Lcom/android/mms/transaction/CBMessagingNotification$CBNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 177
    :cond_0
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/net/Uri;)V
    .locals 15
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"
    .parameter "uri"

    .prologue
    .line 347
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 348
    .local v10, sp:Landroid/content/SharedPreferences;
    const/4 v4, 0x1

    .line 349
    .local v4, appNotificationEnabled:Z
    const-string v11, "pref_key_enable_notifications"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 350
    if-nez v4, :cond_0

    .line 351
    const-string v11, "Mms:app"

    const-string v12, "app notification set disabled!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v6, Landroid/app/Notification;

    move/from16 v0, p3

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 361
    .local v6, notification:Landroid/app/Notification;
    const/4 v11, 0x1

    move/from16 v0, p10

    if-le v0, v11, :cond_1

    .line 362
    const-string v11, "Mms:app"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversationList will be resumed because uniqueThreadCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const v11, 0x7f0b0055

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    .line 364
    new-instance p1, Landroid/content/Intent;

    .end local p1
    const-string v11, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local p1
    const/high16 v11, 0x2400

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const-string v11, "com.android.mms"

    const-string v12, "com.android.mms.ui.ConversationList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 373
    const-string v11, "Mms:app"

    const-string v12, "FolderViewList will be resumed."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance p1, Landroid/content/Intent;

    .end local p1
    const-string v11, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local p1
    const/high16 v11, 0x2400

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    const-string v11, "floderview_key"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v11, "com.android.mms"

    const-string v12, "com.android.mms.ui.FolderViewList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :cond_2
    const/4 v11, 0x1

    move/from16 v0, p9

    if-le v0, v11, :cond_6

    .line 386
    const v11, 0x7f0b0054

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 401
    :cond_3
    :goto_1
    const/4 v11, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p1

    invoke-static {p0, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 405
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p8

    move-object/from16 v1, p2

    invoke-virtual {v6, p0, v0, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 407
    if-eqz p4, :cond_5

    .line 408
    const-string v11, "Mms:app"

    const-string v12, "The received CB message is new."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v11, "pref_key_ringtone"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, ringtoneStr:Ljava/lang/String;
    const-string v11, "mute_start"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    .line 411
    const/4 v9, 0x0

    .line 413
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v8, 0x0

    .line 414
    .local v8, ringtone:Landroid/net/Uri;
    :goto_2
    invoke-static {p0, v6, v8}, Lcom/android/mms/transaction/MessagingNotification;->processNotificationSound(Landroid/content/Context;Landroid/app/Notification;Landroid/net/Uri;)V

    .line 417
    .end local v8           #ringtone:Landroid/net/Uri;
    .end local v9           #ringtoneStr:Ljava/lang/String;
    :cond_5
    iget v11, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v6, Landroid/app/Notification;->flags:I

    .line 418
    const v11, -0xff0100

    iput v11, v6, Landroid/app/Notification;->ledARGB:I

    .line 419
    const/16 v11, 0x1f4

    iput v11, v6, Landroid/app/Notification;->ledOnMS:I

    .line 420
    const/16 v11, 0x7d0

    iput v11, v6, Landroid/app/Notification;->ledOffMS:I

    .line 422
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 425
    .local v5, nm:Landroid/app/NotificationManager;
    const/16 v11, 0x7d

    invoke-virtual {v5, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 390
    .end local v5           #nm:Landroid/app/NotificationManager;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 392
    const-string v11, "Mms:app"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FolderModeSmsViewer will be resumed and messageCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v11, "msg_type"

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 396
    const-string v11, "com.android.mms"

    const-string v12, "com.android.mms.ui.FolderModeSmsViewer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 413
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v9       #ringtoneStr:Ljava/lang/String;
    :cond_7
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_2
.end method
