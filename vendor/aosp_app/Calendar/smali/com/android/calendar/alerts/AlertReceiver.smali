.class public Lcom/android/calendar/alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field public static final ACTION_DISMISS_OLD_REMINDERS:Ljava/lang/String; = "removeOldReminders"

.field private static final ATTENDEES_INDEX_EMAIL:I = 0x0

.field private static final ATTENDEES_INDEX_STATUS:I = 0x1

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=?"

.field private static final DELETE_ALL_ACTION:Ljava/lang/String; = "com.android.calendar.DELETEALL"

.field private static final EVENT_INDEX_ACCOUNT_NAME:I = 0x1

.field private static final EVENT_INDEX_ORGANIZER:I = 0x3

.field private static final EVENT_INDEX_OWNER_ACCOUNT:I = 0x0

.field private static final EVENT_INDEX_TITLE:I = 0x2

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTRA_EVENT_ID:Ljava/lang/String; = "eventid"

.field private static final MAIL_ACTION:Ljava/lang/String; = "com.android.calendar.MAIL"

.field private static final NOTIFICATION_DIGEST_MAX_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlertReceiver"

.field private static final mBlankLinePattern:Ljava/util/regex/Pattern;

.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;

.field private static sAsyncHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    .line 74
    const-string v1, "^\\s*$[\n\r]"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertReceiver async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->sAsyncHandler:Landroid/os/Handler;

    .line 529
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "attendeeEmail"

    aput-object v2, v1, v3

    const-string v2, "attendeeStatus"

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 539
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ownerAccount"

    aput-object v2, v1, v3

    const-string v2, "account_name"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "organizer"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "email"
    .parameter "syncAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, emailList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_0
    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 135
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 139
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 141
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 143
    monitor-exit v2

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static buildBasicNotification(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZIZ)Landroid/app/Notification;
    .locals 20
    .parameter "notificationBuilder"
    .parameter "context"
    .parameter "title"
    .parameter "summaryText"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "eventId"
    .parameter "notificationId"
    .parameter "doPopup"
    .parameter "priority"
    .parameter "addActionButtons"

    .prologue
    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 271
    .local v18, resources:Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 272
    :cond_0
    const v4, 0x7f0c0049

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 278
    :cond_1
    const/4 v4, -0x2

    move/from16 v0, p12

    if-ne v0, v4, :cond_6

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v4, p1

    move-wide/from16 v5, p8

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p10

    invoke-static/range {v4 .. v12}, Lcom/android/calendar/alerts/AlertReceiver;->createClickEventIntent(Landroid/content/Context;JJJIZ)Landroid/app/PendingIntent;

    move-result-object v13

    .line 283
    .local v13, clickIntent:Landroid/app/PendingIntent;
    const/4 v4, -0x2

    move/from16 v0, p12

    if-ne v0, v4, :cond_7

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v4, p1

    move-wide/from16 v5, p8

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p10

    invoke-static/range {v4 .. v12}, Lcom/android/calendar/alerts/AlertReceiver;->createDeleteEventIntent(Landroid/content/Context;JJJIZ)Landroid/app/PendingIntent;

    move-result-object v15

    .line 287
    .local v15, deleteIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 289
    const v4, 0x7f02005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 291
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 292
    if-eqz p11, :cond_2

    .line 293
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/alerts/AlertReceiver;->createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 296
    :cond_2
    const/16 v19, 0x0

    .line 297
    .local v19, snoozeIntent:Landroid/app/PendingIntent;
    const/16 v16, 0x0

    .line 298
    .local v16, emailIntent:Landroid/app/PendingIntent;
    if-eqz p13, :cond_3

    move-object/from16 v4, p1

    move-wide/from16 v5, p8

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p10

    .line 300
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/alerts/AlertReceiver;->createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v19

    .line 304
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/alerts/AlertReceiver;->createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 307
    :cond_3
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 309
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 313
    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 316
    if-eqz v19, :cond_4

    .line 317
    const v4, 0x7f02002e

    const v5, 0x7f0c009c

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 320
    :cond_4
    if-eqz v16, :cond_5

    .line 321
    const v4, 0x7f02003d

    const v5, 0x7f0c0080

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 324
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 353
    :goto_2
    return-object v17

    .line 278
    .end local v13           #clickIntent:Landroid/app/PendingIntent;
    .end local v15           #deleteIntent:Landroid/app/PendingIntent;
    .end local v16           #emailIntent:Landroid/app/PendingIntent;
    .end local v19           #snoozeIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 283
    .restart local v13       #clickIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 329
    .restart local v15       #deleteIntent:Landroid/app/PendingIntent;
    .restart local v16       #emailIntent:Landroid/app/PendingIntent;
    .restart local v19       #snoozeIntent:Landroid/app/PendingIntent;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 332
    .local v17, n:Landroid/app/Notification;
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040032

    invoke-direct {v14, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 334
    .local v14, contentView:Landroid/widget/RemoteViews;
    const v4, 0x7f1000b2

    const v5, 0x7f02005a

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 335
    const v4, 0x7f100015

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    const v4, 0x7f1000b3

    move-object/from16 v0, p3

    invoke-virtual {v14, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    if-nez v19, :cond_9

    .line 338
    const v4, 0x7f1000b4

    const/16 v5, 0x8

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 344
    :goto_3
    if-nez v16, :cond_a

    .line 345
    const v4, 0x7f1000b4

    const/16 v5, 0x8

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 351
    :goto_4
    move-object/from16 v0, v17

    iput-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 340
    :cond_9
    const v4, 0x7f1000b5

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 341
    const v4, 0x7f1000b5

    move-object/from16 v0, v19

    invoke-virtual {v14, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 342
    const v4, 0x7f1000b6

    const/16 v5, 0x8

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 347
    :cond_a
    const v4, 0x7f1000b4

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 348
    const v4, 0x7f1000b4

    move-object/from16 v0, v16

    invoke-virtual {v14, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 349
    const v4, 0x7f1000b6

    const/16 v5, 0x8

    invoke-virtual {v14, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method private static createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "eventTitle"

    .prologue
    .line 569
    const/4 v4, 0x0

    .line 570
    .local v4, syncAccount:Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v3

    .line 572
    .local v3, eventCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 573
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 576
    :cond_0
    if-eqz v3, :cond_1

    .line 577
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 584
    .local v0, attendeesCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 586
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, email:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.calendar.MAIL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, broadcastIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 594
    const-string v5, "eventid"

    invoke-virtual {v1, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 595
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->hashCode()I

    move-result v5

    const/high16 v6, 0x1000

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 604
    if-eqz v0, :cond_3

    .line 605
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1           #broadcastIntent:Landroid/content/Intent;
    .end local v2           #email:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v5

    .line 576
    .end local v0           #attendeesCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    .line 577
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5

    .line 599
    .restart local v0       #attendeesCursor:Landroid/database/Cursor;
    .restart local v2       #email:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    .line 601
    .end local v2           #email:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 604
    if-eqz v0, :cond_3

    .line 605
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 604
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_7

    .line 605
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v5
.end method

.method private static createClickEventIntent(Landroid/content/Context;JJJIZ)Landroid/app/PendingIntent;
    .locals 11
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "notificationId"
    .parameter "isOverdue"

    .prologue
    .line 172
    const-string v8, "com.android.calendar.CLICK"

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;ZZ)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDeleteEventIntent(Landroid/content/Context;JJJIZ)Landroid/app/PendingIntent;
    .locals 11
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "notificationId"
    .parameter "isOverdue"

    .prologue
    .line 188
    const-string v8, "com.android.calendar.DELETE"

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;ZZ)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;ZZ)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "notificationId"
    .parameter "action"
    .parameter "showEvent"
    .parameter "isOverdue"

    .prologue
    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 209
    const-string v2, "eventid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v2, "eventstart"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    const-string v2, "eventend"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    const-string v2, "showevent"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v2, "notificationid"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 221
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 222
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v1, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method static createEmailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter "context"
    .parameter "eventId"
    .parameter "body"

    .prologue
    .line 619
    const/4 v5, 0x0

    .line 620
    .local v5, ownerAccount:Ljava/lang/String;
    const/4 v12, 0x0

    .line 621
    .local v12, syncAccount:Ljava/lang/String;
    const/4 v1, 0x0

    .line 622
    .local v1, eventTitle:Ljava/lang/String;
    const/4 v9, 0x0

    .line 623
    .local v9, eventOrganizer:Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v8

    .line 625
    .local v8, eventCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 627
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 628
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 632
    :cond_0
    if-eqz v8, :cond_1

    .line 633
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v3, toEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v4, ccEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    .local v6, attendeesCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 648
    .local v11, status:I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, email:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 654
    invoke-static {v3, v7, v12}, Lcom/android/calendar/alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 659
    .end local v7           #email:Ljava/lang/String;
    .end local v11           #status:I
    :cond_4
    if-eqz v6, :cond_5

    .line 660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz v9, :cond_6

    .line 667
    invoke-static {v3, v9, v12}, Lcom/android/calendar/alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_6
    const/4 v10, 0x0

    .line 671
    .local v10, intent:Landroid/content/Intent;
    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 672
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 676
    :cond_8
    if-nez v10, :cond_b

    .line 677
    const/4 v10, 0x0

    .line 681
    .end local v10           #intent:Landroid/content/Intent;
    :goto_1
    return-object v10

    .line 632
    .end local v3           #toEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #ccEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #attendeesCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    .line 633
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 651
    .restart local v3       #toEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #ccEmails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #attendeesCursor:Landroid/database/Cursor;
    .restart local v7       #email:Ljava/lang/String;
    .restart local v11       #status:I
    :pswitch_0
    :try_start_2
    invoke-static {v4, v7, v12}, Lcom/android/calendar/alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 659
    .end local v7           #email:Ljava/lang/String;
    .end local v11           #status:I
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_a

    .line 660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 680
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_b
    const v0, 0x10008000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 649
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "notificationId"

    .prologue
    .line 230
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/calendar/alerts/SnoozeAlarmsService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    const-string v2, "eventid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    const-string v2, "eventstart"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 234
    const-string v2, "eventend"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    const-string v2, "notificationid"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 238
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 239
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 240
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 241
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 151
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 157
    :cond_0
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "attendeeName ASC, attendeeEmail ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v3, 0x0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZI)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 14
    .parameter "context"
    .parameter "title"
    .parameter "summaryText"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "eventId"
    .parameter "notificationId"
    .parameter "doPopup"
    .parameter "priority"

    .prologue
    .line 260
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v13}, Lcom/android/calendar/alerts/AlertReceiver;->buildBasicNotification(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZIZ)Landroid/app/Notification;

    move-result-object v1

    .line 263
    .local v1, n:Landroid/app/Notification;
    new-instance v0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move/from16 v2, p9

    move-wide/from16 v3, p7

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    return-object v0
.end method

.method public static makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 36
    .parameter "context"
    .parameter
    .parameter "digestTitle"
    .parameter "expandable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/calendar/alerts/AlertService$NotificationWrapper;"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, notificationInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 402
    :cond_0
    const/16 v26, 0x0

    .line 526
    :cond_1
    return-object v26

    .line 405
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 406
    .local v31, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 407
    .local v25, numEvents:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v15, v3, [J

    .line 408
    .local v15, eventIds:[J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_3

    .line 409
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    iget-wide v3, v3, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    aput-wide v3, v15, v17

    .line 408
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 413
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertReceiver;->createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v27

    .line 417
    .local v27, pendingClickIntent:Landroid/app/PendingIntent;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v14, deleteIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/calendar/alerts/DismissAlarmsService;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    const-string v3, "com.android.calendar.DELETEALL"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v3, "eventids"

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 422
    const/4 v3, 0x0

    const/high16 v4, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 425
    .local v28, pendingDeleteIntent:Landroid/app/PendingIntent;
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 426
    :cond_4
    const v3, 0x7f0c0049

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 429
    :cond_5
    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v24, notificationBuilder:Landroid/app/Notification$Builder;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 431
    const v3, 0x7f02005b

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 432
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 433
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 434
    const v3, 0x7f0e0006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 435
    .local v21, nEventsStr:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 438
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 442
    const/4 v3, -0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 444
    if-eqz p3, :cond_9

    .line 446
    new-instance v16, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 448
    .local v16, expandedBuilder:Landroid/app/Notification$InboxStyle;
    const/16 v17, 0x0

    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 450
    .local v19, info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 451
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 452
    .local v23, name:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 455
    :cond_6
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 458
    .local v35, timeLocation:Ljava/lang/String;
    new-instance v29, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d0022

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 460
    .local v29, primaryTextSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v33, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d0023

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 464
    .local v33, secondaryTextSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v34, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v34 .. v34}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 465
    .local v34, stringBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 466
    const/4 v3, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 467
    const-string v3, "  "

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 470
    invoke-virtual/range {v34 .. v34}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    .line 471
    .local v32, secondaryIndex:I
    invoke-virtual/range {v34 .. v35}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 472
    invoke-virtual/range {v34 .. v34}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 474
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 475
    add-int/lit8 v17, v17, 0x1

    .line 476
    goto/16 :goto_1

    .line 482
    .end local v19           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v23           #name:Ljava/lang/String;
    .end local v29           #primaryTextSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v32           #secondaryIndex:I
    .end local v33           #secondaryTextSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v34           #stringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v35           #timeLocation:Ljava/lang/String;
    :cond_7
    sub-int v30, v25, v17

    .line 483
    .local v30, remaining:I
    if-lez v30, :cond_8

    .line 484
    const v3, 0x7f0e0007

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 487
    .local v22, nMoreEventsStr:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 491
    .end local v22           #nMoreEventsStr:Ljava/lang/String;
    :cond_8
    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 493
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v20

    .line 519
    .end local v16           #expandedBuilder:Landroid/app/Notification$InboxStyle;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v30           #remaining:I
    .local v20, n:Landroid/app/Notification;
    :goto_2
    new-instance v26, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;)V

    .line 521
    .local v26, nw:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 522
    .restart local v19       #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    new-instance v3, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->add(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    goto :goto_3

    .line 495
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v20           #n:Landroid/app/Notification;
    .end local v26           #nw:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .restart local v20       #n:Landroid/app/Notification;
    goto :goto_2

    .line 500
    .end local v20           #n:Landroid/app/Notification;
    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v20

    .line 503
    .restart local v20       #n:Landroid/app/Notification;
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040032

    invoke-direct {v13, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 505
    .local v13, contentView:Landroid/widget/RemoteViews;
    const v3, 0x7f1000b2

    const v4, 0x7f02005b

    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 506
    const v3, 0x7f100015

    move-object/from16 v0, v21

    invoke-virtual {v13, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    const v3, 0x7f1000b3

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 508
    const v3, 0x7f100031

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 509
    const v3, 0x7f1000b4

    const/16 v4, 0x8

    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 510
    const v3, 0x7f1000b5

    const/16 v4, 0x8

    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 511
    const v3, 0x7f1000b6

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 512
    move-object/from16 v0, v20

    iput-object v13, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 516
    const-wide/16 v3, 0x1

    move-object/from16 v0, v20

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    goto/16 :goto_2
.end method

.method public static makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZI)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 19
    .parameter "context"
    .parameter "title"
    .parameter "summaryText"
    .parameter "description"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "eventId"
    .parameter "notificationId"
    .parameter "doPopup"
    .parameter "priority"

    .prologue
    .line 364
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, basicBuilder:Landroid/app/Notification$Builder;
    const/4 v15, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v2 .. v15}, Lcom/android/calendar/alerts/AlertReceiver;->buildBasicNotification(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZIZ)Landroid/app/Notification;

    move-result-object v4

    .line 368
    .local v4, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    new-instance v16, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 372
    .local v16, expandedBuilder:Landroid/app/Notification$BigTextStyle;
    if-eqz p3, :cond_0

    .line 373
    sget-object v3, Lcom/android/calendar/alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 374
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 377
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    move-object/from16 v18, p2

    .line 388
    .local v18, text:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 389
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v4

    .line 391
    .end local v16           #expandedBuilder:Landroid/app/Notification$BigTextStyle;
    .end local v18           #text:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move/from16 v5, p10

    move-wide/from16 v6, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p11

    invoke-direct/range {v3 .. v12}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    return-object v3

    .line 380
    .restart local v16       #expandedBuilder:Landroid/app/Notification$BigTextStyle;
    :cond_2
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 381
    .local v17, stringBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    const-string v3, "\n\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3f00

    invoke-direct {v3, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 385
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 386
    move-object/from16 v18, v17

    .restart local v18       #text:Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, -0x1

    .line 90
    const-string v6, "AlertReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v6, "com.android.calendar.DELETEALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v4, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    .end local v4           #serviceIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v6, "com.android.calendar.MAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, closeNotificationShadeIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    const-string v6, "eventid"

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 107
    .local v1, eventId:J
    cmp-long v6, v1, v9

    if-eqz v6, :cond_0

    .line 108
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v3, i:Landroid/content/Intent;
    const-string v6, "eventId"

    invoke-virtual {v3, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v0           #closeNotificationShadeIntent:Landroid/content/Intent;
    .end local v1           #eventId:J
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 115
    .restart local v3       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 117
    const-string v6, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 121
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 122
    const-string v6, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_3
    invoke-static {p1, v3}, Lcom/android/calendar/alerts/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
