.class public Lcom/android/mms/transaction/WapPushMessagingNotification;
.super Ljava/lang/Object;
.source "WapPushMessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator;,
        Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    }
.end annotation


# static fields
.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final COLUMN_WAPPUSH_ADDRESS:I = 0x5

.field private static final COLUMN_WAPPUSH_ID:I = 0x2

.field private static final COLUMN_WAPPUSH_TEXT:I = 0x4

.field private static final COLUMN_WAPPUSH_URL:I = 0x3

.field private static final CURRENTLY_DISPLAYED_THREAD_LOCK:Ljava/lang/Object; = null

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator; = null

.field private static final IN_CONVERSATION_NOTIFICATION_VOLUME:F = 0.25f

.field private static final MAX_MESSAGES_TO_SHOW:I = 0x8

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(seen = 0)"

.field private static final NOTIFICATION_ID:I = 0x7f

.field public static final SL_AUTOLAUNCH_NOTIFICATION_ID:I = 0x15c9

.field private static final TAG:Ljava/lang/String; = "Mms/WapPush"

.field public static final THREAD_ALL:J = -0x1L

.field public static final THREAD_NONE:J = -0x2L

.field private static final URL_MESSAGES:Landroid/net/Uri;

.field private static final WAPPUSH_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final WAPPUSH_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field public static mSlotId:I

.field private static sCurrentlyDisplayedThreadId:J

.field private static sNotificationSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    .line 127
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->WAPPUSH_STATUS_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->WAPPUSH_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/WapPushMessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->CURRENTLY_DISPLAYED_THREAD_LOCK:Ljava/lang/Object;

    .line 152
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->mSlotId:I

    .line 158
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/mms/transaction/WapPushMessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method private static addWapPushNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 378
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/mms/transaction/WapPushMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/WapPushMessagingNotification;->WAPPUSH_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(seen = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 382
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 383
    const-string v1, "Mms/WapPush"

    const-string v3, "addWapPushNotificationInfos cursor == null"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 388
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 391
    .local v15, messageId:J
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 392
    .local v18, url:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 393
    .local v17, text:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, address:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    .line 395
    .local v10, contact:Lcom/android/mms/data/Contact;
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 396
    .local v6, threadId:J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 399
    .local v8, timeMillis:J
    const-string v5, ""

    .line 400
    .local v5, body:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    :cond_1
    if-eqz v18, :cond_2

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/WapPushMessagingNotification;->URL_MESSAGES:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v11}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/android/mms/data/Contact;Landroid/net/Uri;)Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    move-result-object v13

    .line 416
    .local v13, info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    if-eqz v17, :cond_3

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 418
    .local v14, messageCount:I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_4

    .line 419
    iget-object v1, v13, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mClickIntent:Landroid/content/Intent;

    const-string v3, "URL"

    move-object/from16 v0, v18

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    .end local v14           #messageCount:I
    :cond_4
    const-string v1, "Mms/WapPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addWapPushNotificationInfos info = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v1, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v1, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 428
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #threadId:J
    .end local v8           #timeMillis:J
    .end local v10           #contact:Lcom/android/mms/data/Contact;
    .end local v13           #info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    .end local v15           #messageId:J
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "newMsgThreadId"

    .prologue
    .line 211
    const-string v2, "Mms/WapPush"

    const-string v3, "blockingUpdateNewMessageIndicator"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v3, Lcom/android/mms/transaction/WapPushMessagingNotification;->CURRENTLY_DISPLAYED_THREAD_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 213
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    :try_start_0
    sget-wide v4, Lcom/android/mms/transaction/WapPushMessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 214
    invoke-static {p0}, Lcom/android/mms/transaction/WapPushMessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;)V

    .line 215
    monitor-exit v3

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-object v2, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    .line 220
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 222
    .local v1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 223
    .local v0, count:I
    invoke-static {p0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->addWapPushNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 225
    const/16 v2, 0x7f

    invoke-static {p0, v2}, Lcom/android/mms/transaction/WapPushMessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 226
    sget-object v2, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const-string v2, "Mms/WapPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newMsgThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/transaction/WapPushMessagingNotification;->updateNotification(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 217
    .end local v0           #count:I
    .end local v1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 229
    .restart local v0       #count:I
    .restart local v1       #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 715
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, displayAddress:Ljava/lang/String;
    invoke-static {p2, p3, v0}, Lcom/android/mms/ui/MessageUtils;->formatMsgContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 459
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 461
    .local v0, nm:Landroid/app/NotificationManager;
    const-string v1, "Mms/WapPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification notificationId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 463
    return-void
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, senders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;>;"
    const/4 v6, 0x0

    .line 343
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0d0007

    invoke-direct {v2, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 346
    .local v2, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    const v5, 0x7f0b034d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, separator:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 348
    .local v4, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 349
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 350
    if-lez v0, :cond_0

    .line 351
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 353
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    iget-object v5, v5, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 357
    const-string v5, "Mms/WapPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "formatSenders spannableStringBuilder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-object v4
.end method

.method public static getCurrentCardNotify(IZ)Ljava/lang/String;
    .locals 5
    .parameter "slotId"
    .parameter "getSlot"

    .prologue
    .line 815
    const-string v0, "pref_key_ringtone"

    .line 816
    .local v0, NotifyType:Ljava/lang/String;
    const/4 v1, -0x1

    .line 817
    .local v1, mCurSlotId:I
    if-eqz p1, :cond_1

    .line 818
    invoke-static {}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getSlotId()I

    move-result v1

    .line 822
    :goto_0
    const-string v2, "Mms/WapPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "whichCardNotify  mCurSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    if-nez v1, :cond_2

    .line 825
    const-string v0, "pref_key_ringtone"

    .line 829
    :cond_0
    :goto_1
    const-string v2, "Mms/WapPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------NotifyType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-object v0

    .line 820
    :cond_1
    move v1, p0

    goto :goto_0

    .line 826
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 827
    const-string v0, "pref_key_ringtone_card_second"

    goto :goto_1
.end method

.method private static getNewMessageNotificationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/android/mms/data/Contact;Landroid/net/Uri;)Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter "address"
    .parameter "body"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "contact"
    .parameter "uri"

    .prologue
    .line 440
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/WPMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 441
    .local v3, clickIntent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4}, Lcom/android/mms/transaction/WapPushMessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 447
    .local v13, senderInfo:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, senderInfoName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, p1, v2, v0}, Lcom/android/mms/transaction/WapPushMessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 451
    .local v5, ticker:Ljava/lang/CharSequence;
    const-string v2, "Mms/WapPush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNewMessageNotificationInfo clickIntent = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "threadId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "uri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v2, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    move-object/from16 v4, p2

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    move-wide/from16 v10, p3

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Lcom/android/mms/data/Contact;JLandroid/net/Uri;)V

    return-object v2
.end method

.method private static getNotificationProfile(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    .locals 2
    .parameter "context"

    .prologue
    .line 780
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationProfileByThreadId(Landroid/content/Context;J)Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotId()I
    .locals 1

    .prologue
    .line 788
    sget v0, Lcom/android/mms/transaction/WapPushMessagingNotification;->mSlotId:I

    return v0
.end method

.method public static getTongString(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "ringtone"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 791
    const-string v5, "Mms/WapPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new mSlotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v3, 0x0

    .line 793
    .local v3, vipMode:Z
    move-object v1, p1

    .line 795
    .local v1, mRingtone:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vipmode_settings"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    .line 797
    :goto_0
    const-string v5, "Mms/WapPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vipMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    if-eqz v3, :cond_1

    .line 804
    if-nez p2, :cond_3

    .line 805
    const/16 v4, 0x40

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 809
    :cond_0
    :goto_1
    const-string v4, "Mms/WapPush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---2---ringtone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    .line 812
    .end local v1           #mRingtone:Landroid/net/Uri;
    .local v2, mRingtone:Landroid/net/Uri;
    :goto_2
    return-object v2

    .line 795
    .end local v2           #mRingtone:Landroid/net/Uri;
    .restart local v1       #mRingtone:Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "Mms/WapPush"

    const-string v5, "getTongString---SettingNotFoundException"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 800
    .end local v1           #mRingtone:Landroid/net/Uri;
    .restart local v2       #mRingtone:Landroid/net/Uri;
    goto :goto_2

    .line 806
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v2           #mRingtone:Landroid/net/Uri;
    .restart local v1       #mRingtone:Landroid/net/Uri;
    :cond_3
    if-ne p2, v4, :cond_0

    .line 807
    const/16 v4, 0x80

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method public static getWapPushThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 729
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/WapPushMessagingNotification;->WAPPUSH_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 738
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 739
    const-string v0, "Mms/WapPush"

    const-string v1, "getWapPushThreadId cursor == null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_0
    return-wide v8

    .line 744
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 746
    .local v8, wappushThreadId:J
    const-string v0, "Mms/WapPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWapPushThreadId wappushThreadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .end local v8           #wappushThreadId:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "newMsgThreadId"

    .prologue
    .line 191
    const-string v0, "Mms/WapPush"

    const-string v1, "nonBlockingUpdateNewMessageIndicator"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/WapPushMessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/WapPushMessagingNotification$1;-><init>(Landroid/content/Context;J)V

    const-string v2, "WapPushMessagingNotification.nonBlockingUpdateNewMessageIndicator"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    return-void
.end method

.method public static notifySlAutoLanuchMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 757
    const-string v7, "Mms/WapPush"

    const-string v8, "notifySlAutoLanuchMessage"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 759
    .local v5, sp:Landroid/content/SharedPreferences;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 760
    .local v2, notification:Landroid/app/Notification;
    const-string v7, "pref_key_enable_notifications"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 761
    .local v0, enabled:Z
    const-string v7, "Mms/WapPush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifySlAutoLanuchMessage, enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    if-nez v0, :cond_0

    .line 763
    const/4 v6, 0x0

    .line 776
    :goto_0
    return v6

    .line 765
    :cond_0
    const/4 v7, -0x1

    invoke-static {v7, v6}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 767
    .local v3, ringtone:Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getSlotId()I

    move-result v7

    invoke-static {p0, v3, v7}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getTongString(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 768
    invoke-static {p0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->processNotificationSound(Landroid/content/Context;Landroid/app/Notification;Landroid/net/Uri;)V

    .line 769
    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 770
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 771
    const v7, -0xff0100

    iput v7, v2, Landroid/app/Notification;->ledARGB:I

    .line 772
    const/16 v7, 0x1f4

    iput v7, v2, Landroid/app/Notification;->ledOnMS:I

    .line 773
    const/16 v7, 0x7d0

    iput v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 774
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 775
    .local v1, nm:Landroid/app/NotificationManager;
    const/16 v7, 0x15c9

    invoke-virtual {v1, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 766
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v3           #ringtone:Landroid/net/Uri;
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 239
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_ringtone"

    const/4 v3, 0x0

    invoke-interface {v7, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, ringtoneStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "Mms/WapPush"

    const-string v3, "playInConversationNotificationSound ringtoneStr is empty"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 247
    .local v2, ringtoneUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string v1, "Mms/WapPush"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, player:Lcom/android/mms/transaction/NotificationPlayer;
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/high16 v5, 0x3e80

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    goto :goto_0
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 177
    sget-object v1, Lcom/android/mms/transaction/WapPushMessagingNotification;->CURRENTLY_DISPLAYED_THREAD_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/WapPushMessagingNotification;->sCurrentlyDisplayedThreadId:J

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setSlotId(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 784
    const-string v0, "Mms/WapPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotId slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    sput p0, Lcom/android/mms/transaction/WapPushMessagingNotification;->mSlotId:I

    .line 786
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;ZI)V
    .locals 39
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"

    .prologue
    .line 478
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_1

    .line 479
    const-string v35, "Mms/WapPush"

    const-string v36, "updateNotification NotificationPreferenceActivity.getNotificationEnabled is false"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    sget-object v35, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v35 .. v35}, Ljava/util/SortedSet;->size()I

    move-result v19

    .line 487
    .local v19, messageCount:I
    if-nez v19, :cond_2

    .line 488
    const-string v35, "Mms/WapPush"

    const-string v36, "updateNotification.messageCount is 0."

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    sget-object v35, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v35 .. v35}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    .line 494
    .local v21, mostRecentNotification:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    new-instance v35, Landroid/app/Notification$Builder;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTimeMillis:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    .line 497
    .local v23, noti:Landroid/app/Notification$Builder;
    if-eqz p1, :cond_3

    .line 498
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 500
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v31

    .line 512
    .local v31, taskStackBuilder:Landroid/app/TaskStackBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 513
    .local v28, res:Landroid/content/res/Resources;
    const/16 v32, 0x0

    .line 514
    .local v32, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 515
    .local v6, avatar:Landroid/graphics/Bitmap;
    const-string v35, "Mms/WapPush"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateNotification uniqueThreadCount = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/16 v35, 0x1

    move/from16 v0, p2

    move/from16 v1, v35

    if-le v0, v1, :cond_6

    .line 517
    const-string v35, "Mms/WapPush"

    const-string v36, "updateNotification messages from multiple threads"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v17, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v17, mainActivityIntent:Landroid/content/Intent;
    const/high16 v35, 0x3400

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    const-string v35, "vnd.android-dir/wappush"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 526
    const v35, 0x7f0b0346

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 556
    .end local v17           #mainActivityIntent:Landroid/content/Intent;
    :goto_1
    const v35, 0x7f02016a

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 558
    const-string v35, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager;

    .line 562
    .local v22, nm:Landroid/app/NotificationManager;
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v35

    const/16 v36, 0x0

    const/high16 v37, 0x800

    move-object/from16 v0, v31

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v35

    const-string v36, "android.message"

    invoke-virtual/range {v35 .. v36}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 569
    const/4 v9, 0x0

    .line 571
    .local v9, defaults:I
    if-eqz p1, :cond_5

    .line 572
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 590
    .local v30, sp:Landroid/content/SharedPreferences;
    const-string v35, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 598
    .local v5, audioManager:Landroid/media/AudioManager;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getNotificationProfile(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;

    move-result-object v24

    .line 599
    .local v24, notiProf:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->needVibrate()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 601
    const-string v35, "Mms/WapPush"

    const-string v36, "updateNotification audioManager.getVibrateSetting == AudioManager.VIBRATE_SETTING_ON"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    or-int/lit8 v9, v9, 0x2

    .line 605
    :cond_4
    const/16 v35, -0x1

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lcom/android/mms/transaction/WapPushMessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 607
    .local v29, ringtoneStr:Ljava/lang/String;
    const-string v35, "Mms/WapPush"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateNotification ringtoneStr = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_9

    const/16 v35, 0x0

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 621
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v24           #notiProf:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    .end local v29           #ringtoneStr:Ljava/lang/String;
    .end local v30           #sp:Landroid/content/SharedPreferences;
    :cond_5
    or-int/lit8 v9, v9, 0x4

    .line 623
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 627
    const-string v35, "Mms/WapPush"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateNotification messageCount = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/16 v35, 0x1

    move/from16 v0, v19

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 632
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 635
    new-instance v35, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .line 704
    .local v25, notification:Landroid/app/Notification;
    :goto_3
    const-string v35, "Mms/WapPush"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateNotification notify notification = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/16 v35, 0x7f

    move-object/from16 v0, v22

    move/from16 v1, v35

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 707
    if-eqz p1, :cond_0

    .line 708
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->handleNewNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 528
    .end local v9           #defaults:I
    .end local v22           #nm:Landroid/app/NotificationManager;
    .end local v25           #notification:Landroid/app/Notification;
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 529
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-wide/16 v37, -0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-wide/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 531
    .local v8, contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v8, :cond_8

    .line 534
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 535
    if-eqz v6, :cond_8

    .line 536
    const v35, 0x1050006

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 538
    .local v11, idealIconHeight:I
    const v35, 0x1050005

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 540
    .local v12, idealIconWidth:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    if-ge v0, v11, :cond_7

    .line 542
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-static {v6, v12, v11, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 545
    :cond_7
    if-eqz v6, :cond_8

    .line 546
    const-string v35, "Mms/WapPush"

    const-string v36, "updateNotification createScaledBitmap avatar success!"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 552
    .end local v11           #idealIconHeight:I
    .end local v12           #idealIconWidth:I
    :cond_8
    const-class v35, Lcom/android/mms/ui/WPMessageActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 553
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    goto/16 :goto_1

    .line 616
    .end local v8           #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    .restart local v9       #defaults:I
    .restart local v22       #nm:Landroid/app/NotificationManager;
    .restart local v24       #notiProf:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    .restart local v29       #ringtoneStr:Ljava/lang/String;
    .restart local v30       #sp:Landroid/content/SharedPreferences;
    :cond_9
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    goto/16 :goto_2

    .line 640
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v24           #notiProf:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    .end local v29           #ringtoneStr:Ljava/lang/String;
    .end local v30           #sp:Landroid/content/SharedPreferences;
    :cond_a
    const-string v35, "Mms/WapPush"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateNotification uniqueThreadCount = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/16 v35, 0x1

    move/from16 v0, p2

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 645
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 646
    .local v7, buf:Landroid/text/SpannableStringBuilder;
    sget-object v35, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    sget-object v36, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v36 .. v36}, Ljava/util/SortedSet;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    .line 648
    .local v15, infos:[Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    array-length v0, v15

    move/from16 v16, v0

    .line 649
    .local v16, len:I
    add-int/lit8 v10, v16, -0x1

    .local v10, i:I
    :goto_4
    if-ltz v10, :cond_c

    .line 650
    aget-object v14, v15, v10

    .line 652
    .local v14, info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 654
    if-eqz v10, :cond_b

    .line 655
    const/16 v35, 0xa

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 649
    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 659
    .end local v14           #info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    :cond_c
    const v35, 0x7f0b0346

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 663
    new-instance v35, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v36

    if-nez v6, :cond_d

    const/16 v35, 0x0

    :goto_5
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .line 669
    .restart local v25       #notification:Landroid/app/Notification;
    goto/16 :goto_3

    .line 663
    .end local v25           #notification:Landroid/app/Notification;
    :cond_d
    const-string v35, " "

    goto :goto_5

    .line 671
    .end local v7           #buf:Landroid/text/SpannableStringBuilder;
    .end local v10           #i:I
    .end local v15           #infos:[Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    .end local v16           #len:I
    :cond_e
    new-instance v34, Ljava/util/HashSet;

    sget-object v35, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v35 .. v35}, Ljava/util/SortedSet;->size()I

    move-result v35

    invoke-direct/range {v34 .. v35}, Ljava/util/HashSet;-><init>(I)V

    .line 672
    .local v34, uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v20, mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;>;"
    sget-object v35, Lcom/android/mms/transaction/WapPushMessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v35 .. v35}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 675
    .local v27, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;>;"
    :cond_f
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_10

    .line 676
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    .line 677
    .local v26, notificationInfo:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mThreadId:J

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_f

    .line 678
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->mThreadId:J

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 679
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 684
    .end local v26           #notificationInfo:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 685
    new-instance v13, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 689
    .local v13, inboxStyle:Landroid/app/Notification$InboxStyle;
    const-string v35, " "

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 694
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 695
    .local v33, uniqueThreadMessageCount:I
    const/16 v35, 0x8

    move/from16 v0, v35

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 697
    .local v18, maxMessages:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_7
    move/from16 v0, v18

    if-ge v10, v0, :cond_11

    .line 698
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;

    .line 699
    .restart local v14       #info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 697
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 701
    .end local v14           #info:Lcom/android/mms/transaction/WapPushMessagingNotification$WapPushNotificationInfo;
    :cond_11
    invoke-virtual {v13}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .restart local v25       #notification:Landroid/app/Notification;
    goto/16 :goto_3
.end method
