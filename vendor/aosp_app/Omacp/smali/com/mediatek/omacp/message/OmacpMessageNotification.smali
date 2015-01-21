.class public Lcom/mediatek/omacp/message/OmacpMessageNotification;
.super Ljava/lang/Object;
.source "OmacpMessageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;,
        Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    }
.end annotation


# static fields
.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_SUMMARY:I = 0x3

.field private static final COLUMN_TITLE:I = 0x2

.field private static final DEBUG:Z = true

.field private static final INFO_COMPARATOR:Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator; = null

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(seen = 0)"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field private static final NOTIFICATION_ID:I = 0x7e

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field private static final OMACP_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageNotification"

.field private static final URL_MESSAGES:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageNotification;->URL_MESSAGES:Landroid/net/Uri;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "summary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageNotification;->OMACP_STATUS_PROJECTION:[Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;-><init>(Lcom/mediatek/omacp/message/OmacpMessageNotification$1;)V

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageNotification;->INFO_COMPARATOR:Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
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

    .prologue
    .line 68
    invoke-static/range {p0 .. p10}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;)I
    .locals 1
    .parameter "set"
    .parameter "info"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 156
    iget v0, p1, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->mCount:I

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isNew"

    .prologue
    .line 136
    new-instance v0, Ljava/util/TreeSet;

    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageNotification;->INFO_COMPARATOR:Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfoComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 138
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 139
    .local v2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, count:I
    invoke-static {p0}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->getOmacpNewMessageNotificationInfo(Landroid/content/Context;)Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 143
    const/16 v3, 0x7e

    invoke-static {p0, v3}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 144
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, p0, p1, v1, v4}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 147
    :cond_0
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "messageType"
    .parameter "summary"

    .prologue
    const/16 v6, 0x20

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 360
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    const-string v1, ""

    .line 362
    .local v1, messageSummary:Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .end local v1           #messageSummary:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 367
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 370
    return-object v3
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 255
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 258
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 259
    return-void
.end method

.method private static getNewMessageNotificationInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    .locals 10
    .parameter "context"
    .parameter "messageId"
    .parameter "title"
    .parameter "summary"
    .parameter "messageType"
    .parameter "iconResourceId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 242
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v1, clickIntent:Landroid/content/Intent;
    const/high16 v0, 0x3400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, p5, v0}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, senderInfo:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, senderInfoName:Ljava/lang/String;
    invoke-static {p0, p5, p4}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 250
    .local v4, ticker:Ljava/lang/CharSequence;
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;

    move-object v2, p4

    move/from16 v3, p6

    move-wide/from16 v5, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v0
.end method

.method public static final getOmacpNewMessageNotificationInfo(Landroid/content/Context;)Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    .locals 19
    .parameter "context"

    .prologue
    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 208
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageNotification;->URL_MESSAGES:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/omacp/message/OmacpMessageNotification;->OMACP_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(seen = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 212
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 213
    const/4 v14, 0x0

    .line 232
    :goto_0
    return-object v14

    .line 217
    :cond_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 218
    const/4 v14, 0x0

    .line 232
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 222
    .local v4, messageId:J
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v10, v15, v17

    .line 223
    .local v10, timeMillis:J
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, title:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, summary:Ljava/lang/String;
    const v1, 0x7f050001

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, messageType:Ljava/lang/String;
    const v9, 0x7f020002

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v12}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->getNewMessageNotificationInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 232
    .local v14, info:Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v4           #messageId:J
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #summary:Ljava/lang/String;
    .end local v8           #messageType:Ljava/lang/String;
    .end local v10           #timeMillis:J
    .end local v14           #info:Lcom/mediatek/omacp/message/OmacpMessageNotification$OmacpNotificationInfo;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isNew"

    .prologue
    .line 117
    const-string v0, "Omacp/OmacpMessageNotification"

    const-string v1, " OmacpMessageNotification nonBlockingUpdateNewMessageIndicator"

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageNotification$1;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public static updateAllNotifications(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 151
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 20
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

    .prologue
    .line 265
    const/4 v11, 0x0

    .line 267
    .local v11, otherAppContext:Landroid/content/Context;
    :try_start_0
    const-string v16, "com.android.mms"

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 273
    if-nez v11, :cond_1

    .line 274
    const-string v16, "Omacp/OmacpMessageNotification"

    const-string v17, "OmacpMessageNotification otherAppContext is null."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v5

    .line 270
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "Omacp/OmacpMessageNotification"

    const-string v17, "OmacpMessageNotification NameNotFoundException."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v16, "com.android.mms_preferences"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 280
    .local v14, sp:Landroid/content/SharedPreferences;
    if-nez v14, :cond_2

    .line 281
    const-string v16, "Omacp/OmacpMessageNotification"

    const-string v17, "OmacpMessageNotification sp is null......"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    const-string v16, "pref_key_enable_notifications"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 289
    new-instance v10, Landroid/app/Notification;

    move/from16 v0, p3

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 295
    .local v10, notification:Landroid/app/Notification;
    const/4 v6, 0x0

    .line 297
    .local v6, intent:Landroid/content/Intent;
    const/16 v16, 0x1

    move/from16 v0, p10

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    .line 298
    const v16, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, messageTitle:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v6       #intent:Landroid/content/Intent;
    const/high16 v16, 0x3400

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    const-string v16, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :goto_1
    const/16 v16, 0x1

    move/from16 v0, p9

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 314
    const v16, 0x7f050002

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, messageDescription:Ljava/lang/String;
    :goto_2
    const/16 v16, 0x0

    const/high16 v17, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 325
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v8, v7, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 327
    if-eqz p4, :cond_4

    .line 328
    const-string v16, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 331
    .local v4, audioManager:Landroid/media/AudioManager;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v15, 0x1

    .line 333
    .local v15, vibrate:Z
    :goto_3
    if-eqz v15, :cond_3

    .line 334
    iget v0, v10, Landroid/app/Notification;->defaults:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->defaults:I

    .line 337
    :cond_3
    const-string v16, "pref_key_ringtone"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 338
    .local v13, ringtoneStr:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 341
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v13           #ringtoneStr:Ljava/lang/String;
    .end local v15           #vibrate:Z
    :cond_4
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 342
    const v16, -0xff0100

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->ledARGB:I

    .line 343
    const/16 v16, 0x1f4

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->ledOnMS:I

    .line 344
    const/16 v16, 0x7d0

    move/from16 v0, v16

    iput v0, v10, Landroid/app/Notification;->ledOffMS:I

    .line 346
    const-string v16, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 349
    .local v9, nm:Landroid/app/NotificationManager;
    const/16 v16, 0x7e

    move/from16 v0, v16

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 305
    .end local v7           #messageDescription:Ljava/lang/String;
    .end local v8           #messageTitle:Ljava/lang/String;
    .end local v9           #nm:Landroid/app/NotificationManager;
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v8, p8

    .line 306
    .restart local v8       #messageTitle:Ljava/lang/String;
    move-object/from16 v6, p1

    goto/16 :goto_1

    .line 317
    :cond_6
    move-object/from16 v7, p2

    .restart local v7       #messageDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 331
    .restart local v4       #audioManager:Landroid/media/AudioManager;
    .restart local v12       #pendingIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 338
    .restart local v13       #ringtoneStr:Ljava/lang/String;
    .restart local v15       #vibrate:Z
    :cond_8
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_4
.end method
