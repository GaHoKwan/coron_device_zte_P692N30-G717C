.class public Lcom/android/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertService$ServiceHandler;,
        Lcom/android/calendar/alerts/AlertService$NotificationPrefs;,
        Lcom/android/calendar/alerts/AlertService$NotificationInfo;,
        Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;,
        Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String; = "(state=? OR state=?) AND alarmTime<="

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final ACTIVE_ALERTS_SORT:Ljava/lang/String; = "begin DESC, end DESC"

.field private static final ALERT_INDEX_ALARM_TIME:I = 0x7

.field private static final ALERT_INDEX_ALL_DAY:I = 0x6

.field private static final ALERT_INDEX_BEGIN:I = 0x9

.field private static final ALERT_INDEX_DESCRIPTION:I = 0xb

.field private static final ALERT_INDEX_END:I = 0xa

.field private static final ALERT_INDEX_EVENT_ID:I = 0x1

.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x4

.field private static final ALERT_INDEX_ID:I = 0x0

.field private static final ALERT_INDEX_MINUTES:I = 0x8

.field private static final ALERT_INDEX_SELF_ATTENDEE_STATUS:I = 0x5

.field private static final ALERT_INDEX_STATE:I = 0x2

.field private static final ALERT_INDEX_TITLE:I = 0x3

.field static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field static final DEBUG:Z = true

.field private static final DISMISS_OLD_SELECTION:Ljava/lang/String; = "end<? AND state=?"

.field public static final MAX_NOTIFICATIONS:I = 0x12

.field private static final MINUTE_MS:I = 0xea60

.field private static final MIN_DEPRIORITIZE_GRACE_PERIOD_MS:I = 0xdbba0

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field private static final TAG:Ljava/lang/String; = "AlertService"

.field public static final UPDATE_EVENT_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.UPDATE_EVENT_REMINDERS"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

.field private static sEventIdToNotificationIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->sEventIdToNotificationIdMap:Ljava/util/HashMap;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 995
    return-void
.end method

.method private static addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "nw"
    .parameter "quietUpdate"
    .parameter "tickerText"
    .parameter "defaultVibrate"
    .parameter "reminderRingtone"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 847
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 850
    if-nez p1, :cond_2

    .line 852
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 860
    :cond_0
    if-eqz p3, :cond_1

    .line 861
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 866
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 869
    :cond_2
    return-void

    .line 866
    :cond_3
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method static dismissOldAlerts(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 205
    .local v1, currentTime:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v4, vals:Landroid/content/ContentValues;
    const-string v5, "state"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    sget-object v5, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "end<? AND state=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, updatedNo:I
    if-gtz v3, :cond_0

    .line 214
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 217
    :cond_0
    return-void
.end method

.method private doTimeChanged()V
    .locals 2

    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/calendar/alerts/AlertService;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;)V

    .line 925
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 926
    return-void
.end method

.method public static generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Lcom/android/calendar/alerts/AlarmManagerInterface;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z
    .locals 48
    .parameter "context"
    .parameter "nm"
    .parameter "alarmMgr"
    .parameter "prefs"
    .parameter "alertCursor"
    .parameter "currentTime"
    .parameter "maxNotifications"

    .prologue
    .line 266
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alertCursor count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v8, highPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v9, mediumPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, lowPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    move-object/from16 v4, p4

    move-object/from16 v5, p0

    move-wide/from16 v6, p5

    .line 273
    invoke-static/range {v4 .. v10}, Lcom/android/calendar/alerts/AlertService;->processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v45

    .line 277
    .local v45, numFired:I
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertUtils;->postUnreadNumber(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    .line 283
    const/4 v4, 0x1

    .line 421
    :goto_0
    return v4

    .line 287
    :cond_0
    sget-object v4, Lcom/android/calendar/alerts/AlertService;->sEventIdToNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 289
    const-wide v42, 0x7fffffffffffffffL

    .line 290
    .local v42, nextRefreshTime:J
    const/16 v17, 0x1

    .line 291
    .local v17, currentNotificationId:I
    new-instance v15, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    if-nez v45, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v15, v0, v1, v4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 296
    .local v15, notificationPrefs:Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    move/from16 v0, p7

    invoke-static {v8, v9, v10, v0}, Lcom/android/calendar/alerts/AlertService;->redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 300
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "highPriorityEvents.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mediumPriorityEvents.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",lowPriorityEvents.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",numFired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v38, 0x0

    .local v38, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_2

    .line 309
    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 310
    .local v11, info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v4, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v6, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v7, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, summaryText:Ljava/lang/String;
    const/4 v14, 0x1

    add-int/lit8 v24, v17, 0x1

    .end local v17           #currentNotificationId:I
    .local v24, currentNotificationId:I
    move-object/from16 v13, p0

    move-object/from16 v16, p1

    invoke-static/range {v11 .. v17}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 316
    sget-object v4, Lcom/android/calendar/alerts/AlertService;->sEventIdToNotificationIdMap:Ljava/util/HashMap;

    iget-wide v5, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v24, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-wide/from16 v0, p5

    invoke-static {v11, v0, v1}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J

    move-result-wide v4

    move-wide/from16 v0, v42

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v42

    .line 308
    add-int/lit8 v38, v38, 0x1

    move/from16 v17, v24

    .end local v24           #currentNotificationId:I
    .restart local v17       #currentNotificationId:I
    goto :goto_2

    .line 291
    .end local v11           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v12           #summaryText:Ljava/lang/String;
    .end local v15           #notificationPrefs:Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    .end local v38           #i:I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 324
    .restart local v15       #notificationPrefs:Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    .restart local v38       #i:I
    :cond_2
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediumPriorityEvents postNotification,size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v38, v4, -0x1

    move/from16 v24, v17

    .end local v17           #currentNotificationId:I
    .restart local v24       #currentNotificationId:I
    :goto_3
    if-ltz v38, :cond_3

    .line 333
    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 336
    .restart local v11       #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v4, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v6, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v7, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 338
    .restart local v12       #summaryText:Ljava/lang/String;
    const/16 v21, 0x0

    add-int/lit8 v17, v24, 0x1

    .end local v24           #currentNotificationId:I
    .restart local v17       #currentNotificationId:I
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, p0

    move-object/from16 v22, v15

    move-object/from16 v23, p1

    invoke-static/range {v18 .. v24}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 342
    sget-object v4, Lcom/android/calendar/alerts/AlertService;->sEventIdToNotificationIdMap:Ljava/util/HashMap;

    iget-wide v5, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v17, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-wide/from16 v0, p5

    invoke-static {v11, v0, v1}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J

    move-result-wide v4

    move-wide/from16 v0, v42

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v42

    .line 332
    add-int/lit8 v38, v38, -0x1

    move/from16 v24, v17

    .end local v17           #currentNotificationId:I
    .restart local v24       #currentNotificationId:I
    goto :goto_3

    .line 350
    .end local v11           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v12           #summaryText:Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v46

    .line 351
    .local v46, numLowPriority:I
    if-lez v46, :cond_7

    .line 352
    invoke-static {v10}, Lcom/android/calendar/alerts/AlertService;->getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v37

    .line 354
    .local v37, expiredDigestTitle:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_6

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 357
    .restart local v11       #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v4, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v6, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v7, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 359
    .restart local v12       #summaryText:Ljava/lang/String;
    iget-object v0, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-wide v0, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v28, v0

    iget-wide v0, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    move-wide/from16 v30, v0

    iget-wide v0, v11, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x2

    move-object/from16 v25, p0

    move-object/from16 v27, v12

    invoke-static/range {v25 .. v36}, Lcom/android/calendar/alerts/AlertReceiver;->makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZI)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v44

    .line 370
    .end local v11           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v12           #summaryText:Ljava/lang/String;
    .local v44, notification:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :goto_4
    const/4 v4, 0x1

    #calls: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z
    invoke-static {v15}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v5

    #calls: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;
    invoke-static {v15}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-static {v0, v4, v1, v5, v6}, Lcom/android/calendar/alerts/AlertService;->addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 375
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quietly posting digest alarm notification, numEvents:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notificationId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowPriorityEvents notify,notification:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    iget-object v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/android/calendar/alerts/NotificationMgr;->notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    .line 394
    .end local v37           #expiredDigestTitle:Ljava/lang/String;
    .end local v44           #notification:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :goto_5
    move/from16 v0, v24

    move/from16 v1, p7

    if-gt v0, v1, :cond_4

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAllBetween(II)V

    .line 397
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Canceling leftover notification IDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_4
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v42, v4

    if-gez v4, :cond_8

    cmp-long v4, v42, p5

    if-lez v4, :cond_8

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v42

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/alerts/AlertUtils;->scheduleNextNotificationRefresh(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    .line 407
    sub-long v4, v42, p5

    const-wide/32 v6, 0xea60

    div-long v39, v4, v6

    .line 408
    .local v39, minutesBeforeRefresh:J
    new-instance v47, Landroid/text/format/Time;

    invoke-direct/range {v47 .. v47}, Landroid/text/format/Time;-><init>()V

    .line 409
    .local v47, time:Landroid/text/format/Time;
    move-object/from16 v0, v47

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 410
    const-string v4, "Scheduling next notification refresh in %d min at: %d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v47

    iget v7, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v47

    iget v7, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 412
    .local v41, msg:Ljava/lang/String;
    const-string v4, "AlertService"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v39           #minutesBeforeRefresh:J
    .end local v41           #msg:Ljava/lang/String;
    .end local v47           #time:Landroid/text/format/Time;
    :cond_5
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertUtils;->flushOldAlertsFromInternalStorage(Landroid/content/Context;)V

    .line 421
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 365
    .restart local v37       #expiredDigestTitle:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v10, v1, v4}, Lcom/android/calendar/alerts/AlertReceiver;->makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v44

    .restart local v44       #notification:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    goto/16 :goto_4

    .line 385
    .end local v37           #expiredDigestTitle:Ljava/lang/String;
    .end local v44           #notification:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :cond_7
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowPriorityEvents cancel notify,numLowPriority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 389
    const-string v4, "AlertService"

    const-string v5, "No low priority events, canceling the digest notification."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 414
    :cond_8
    cmp-long v4, v42, p5

    if-gez v4, :cond_5

    .line 415
    const-string v4, "AlertService"

    const-string v5, "Illegal state: next notification refresh time found to be in the past."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v0, digestTitle:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 763
    .local v1, eventInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-object v3, v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 765
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_1
    iget-object v3, v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 770
    .end local v1           #eventInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getEventIdToNotificationIdMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1062
    sget-object v0, Lcom/android/calendar/alerts/AlertService;->sEventIdToNotificationIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getGracePeriodMs(JJZ)J
    .locals 6
    .parameter "beginTime"
    .parameter "endTime"
    .parameter "allDay"

    .prologue
    const-wide/32 v0, 0xdbba0

    .line 751
    if-eqz p4, :cond_0

    .line 756
    :goto_0
    return-wide v0

    :cond_0
    sub-long v2, p2, p0

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J
    .locals 12
    .parameter "info"
    .parameter "currentTime"

    .prologue
    .line 497
    iget-wide v6, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    .line 498
    .local v6, startAdjustedForAllDay:J
    iget-wide v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 499
    .local v0, endAdjustedForAllDay:J
    iget-boolean v9, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    if-eqz v9, :cond_0

    .line 500
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 501
    .local v8, t:Landroid/text/format/Time;
    iget-wide v9, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 503
    iget-wide v9, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v0

    .line 508
    .end local v8           #t:Landroid/text/format/Time;
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    .line 509
    .local v4, nextRefreshTime:J
    iget-boolean v9, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    invoke-static {v6, v7, v0, v1, v9}, Lcom/android/calendar/alerts/AlertService;->getGracePeriodMs(JJZ)J

    move-result-wide v9

    add-long v2, v6, v9

    .line 511
    .local v2, gracePeriodCutoff:J
    cmp-long v9, v2, p1

    if-lez v9, :cond_1

    .line 512
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 516
    :cond_1
    cmp-long v9, v0, p1

    if-lez v9, :cond_2

    cmp-long v9, v0, v2

    if-lez v9, :cond_2

    .line 517
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 519
    :cond_2
    return-wide v4
.end method

.method private static getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "eventName"
    .parameter "location"

    .prologue
    .line 814
    move-object v0, p0

    .line 815
    .local v0, tickerText:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    :cond_0
    return-object v0
.end method

.method private static logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, list1:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p1, list2:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v1, ids:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 476
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 477
    .local v2, info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 478
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 481
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_0
    if-eqz p1, :cond_1

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 483
    .restart local v2       #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 487
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 490
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 491
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached max postings, bumping event IDs {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} to digest."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    return-void
.end method

.method private static postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V
    .locals 21
    .parameter "info"
    .parameter "summaryText"
    .parameter "context"
    .parameter "highPriority"
    .parameter "prefs"
    .parameter "notificationMgr"
    .parameter "notificationId"

    .prologue
    .line 776
    const/16 v16, 0x0

    .line 777
    .local v16, priorityVal:I
    if-eqz p3, :cond_0

    .line 778
    const/16 v16, 0x1

    .line 781
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/calendar/alerts/AlertService;->getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 782
    .local v20, tickerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    #calls: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDoPopup()Z
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$200(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v15

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v14, p6

    invoke-static/range {v4 .. v16}, Lcom/android/calendar/alerts/AlertReceiver;->makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZI)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v17

    .line 786
    .local v17, notification:Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    const/16 v18, 0x1

    .line 787
    .local v18, quietUpdate:Z
    const-string v19, ""

    .line 788
    .local v19, ringtone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    if-eqz v4, :cond_1

    .line 789
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    move/from16 v18, v0

    .line 793
    #calls: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v19

    .line 795
    :cond_1
    #calls: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/calendar/alerts/AlertService;->addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 799
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/alerts/NotificationMgr;->notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    .line 801
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postNotification(), notify notification:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",quietUpdate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",newAlert:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ringtone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v5, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Posting individual alarm notification, eventId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", notificationId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ", quiet"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_3

    const-string v4, ", high-priority"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .line 806
    :cond_2
    const-string v4, ", LOUD"

    goto :goto_0

    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method static processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 52
    .parameter "alertCursor"
    .parameter "context"
    .parameter "currentTime"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 537
    .local p4, highPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p5, mediumPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p6, lowPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 538
    .local v28, cr:Landroid/content/ContentResolver;
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v32, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    const/16 v41, 0x0

    .line 543
    .local v41, numFired:I
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v47, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 546
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 547
    .local v22, alertId:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 548
    .local v4, eventId:J
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 549
    .local v35, minutes:I
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 550
    .local v11, eventName:Ljava/lang/String;
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 551
    .local v13, description:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 552
    .local v12, location:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 553
    .local v49, status:I
    const/4 v3, 0x2

    move/from16 v0, v49

    if-ne v0, v3, :cond_c

    const/16 v29, 0x1

    .line 554
    .local v29, declined:Z
    :goto_1
    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 555
    .local v6, beginTime:J
    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 556
    .local v16, endTime:J
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 558
    .local v24, alertUri:Landroid/net/Uri;
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 559
    .local v8, alarmTime:J
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 560
    .local v48, state:I
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v20, 0x1

    .line 564
    .local v20, allDay:Z
    :goto_2
    const/16 v37, 0x0

    .line 565
    .local v37, newAlertOverride:Z
    sget-boolean v3, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v3, :cond_1

    sub-long v14, p2, v8

    const-wide/32 v18, 0xea60

    div-long v14, v14, v18

    const-wide/16 v18, 0x1

    cmp-long v3, v14, v18

    if-gez v3, :cond_1

    move-object/from16 v3, p1

    .line 570
    invoke-static/range {v3 .. v9}, Lcom/android/calendar/alerts/AlertUtils;->hasAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)Z

    move-result v25

    .line 572
    .local v25, alreadyFired:Z
    if-nez v25, :cond_1

    .line 573
    const/16 v37, 0x1

    .line 578
    .end local v25           #alreadyFired:Z
    :cond_1
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v36, msgBuilder:Ljava/lang/StringBuilder;
    const-string v3, "alertCursor result: alarmTime:"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " alertId:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " eventId:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " state: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " minutes:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " declined:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " beginTime:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " endTime:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " allDay:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    sget-boolean v3, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v3, :cond_2

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " newAlertOverride: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_2
    const-string v3, "AlertService"

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v51, Landroid/content/ContentValues;

    invoke-direct/range {v51 .. v51}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v51, values:Landroid/content/ContentValues;
    const/16 v40, -0x1

    .line 596
    .local v40, newState:I
    const/16 v21, 0x0

    .line 606
    .local v21, newAlert:Z
    if-nez v29, :cond_e

    .line 607
    if-eqz v48, :cond_3

    if-eqz v37, :cond_4

    .line 608
    :cond_3
    const/16 v40, 0x1

    .line 609
    add-int/lit8 v41, v41, 0x1

    .line 610
    const/16 v21, 0x1

    .line 615
    const-string v3, "receivedTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    :cond_4
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v40

    if-eq v0, v3, :cond_5

    .line 623
    const-string v3, "state"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    move/from16 v48, v40

    .line 626
    sget-boolean v3, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v3, :cond_5

    move-object/from16 v3, p1

    .line 627
    invoke-static/range {v3 .. v9}, Lcom/android/calendar/alerts/AlertUtils;->setAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)V

    .line 636
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_6

    .line 639
    const-string v3, "notifyTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    :cond_6
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 649
    invoke-static/range {v24 .. v24}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v48

    if-ne v0, v3, :cond_0

    .line 657
    new-instance v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    move-wide v14, v6

    move-wide/from16 v18, v4

    invoke-direct/range {v10 .. v21}, Lcom/android/calendar/alerts/AlertService$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 662
    .local v10, newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    move-wide/from16 v26, v6

    .line 663
    .local v26, beginTimeAdjustedForAllDay:J
    const/16 v50, 0x0

    .line 664
    .local v50, tz:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 665
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v50

    .line 666
    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-static {v3, v6, v7, v0}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v26

    .line 671
    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 672
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 673
    .local v44, oldInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v42, v0

    .line 674
    .local v42, oldBeginTimeAdjustedForAllDay:J
    if-eqz v20, :cond_9

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, v44

    iget-wide v14, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v50

    invoke-static {v3, v14, v15, v0}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v42

    .line 681
    :cond_9
    sub-long v45, v42, p2

    .line 682
    .local v45, oldStartInterval:J
    sub-long v38, v26, p2

    .line 684
    .local v38, newStartInterval:J
    const-wide/16 v14, 0x0

    cmp-long v3, v38, v14

    if-gez v3, :cond_10

    const-wide/16 v14, 0x0

    cmp-long v3, v45, v14

    if-lez v3, :cond_10

    .line 686
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v18, 0xdbba0

    cmp-long v3, v14, v18

    if-gez v3, :cond_f

    const/16 v30, 0x1

    .line 692
    .local v30, dropOld:Z
    :goto_4
    if-eqz v30, :cond_0

    .line 701
    move-object/from16 v0, p4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 702
    move-object/from16 v0, p5

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    const-string v3, "AlertService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping alert for recurring event ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", startTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in favor of startTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v30           #dropOld:Z
    .end local v38           #newStartInterval:J
    .end local v42           #oldBeginTimeAdjustedForAllDay:J
    .end local v44           #oldInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v45           #oldStartInterval:J
    :cond_a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    move-wide/from16 v0, v16

    move/from16 v2, v20

    invoke-static {v6, v7, v0, v1, v2}, Lcom/android/calendar/alerts/AlertService;->getGracePeriodMs(JJZ)J

    move-result-wide v14

    sub-long v33, p2, v14

    .line 719
    .local v33, highPriorityCutoff:J
    cmp-long v3, v26, v33

    if-lez v3, :cond_12

    .line 721
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 735
    .end local v4           #eventId:J
    .end local v6           #beginTime:J
    .end local v8           #alarmTime:J
    .end local v10           #newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11           #eventName:Ljava/lang/String;
    .end local v12           #location:Ljava/lang/String;
    .end local v13           #description:Ljava/lang/String;
    .end local v16           #endTime:J
    .end local v20           #allDay:Z
    .end local v21           #newAlert:Z
    .end local v22           #alertId:J
    .end local v24           #alertUri:Landroid/net/Uri;
    .end local v26           #beginTimeAdjustedForAllDay:J
    .end local v29           #declined:Z
    .end local v33           #highPriorityCutoff:J
    .end local v35           #minutes:I
    .end local v36           #msgBuilder:Ljava/lang/StringBuilder;
    .end local v37           #newAlertOverride:Z
    .end local v40           #newState:I
    .end local v48           #state:I
    .end local v49           #status:I
    .end local v50           #tz:Ljava/lang/String;
    .end local v51           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v31

    .line 736
    .local v31, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "AlertService"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    if-eqz p0, :cond_b

    .line 741
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 744
    .end local v31           #e:Landroid/os/RemoteException;
    :cond_b
    :goto_5
    return v41

    .line 553
    .restart local v4       #eventId:J
    .restart local v11       #eventName:Ljava/lang/String;
    .restart local v12       #location:Ljava/lang/String;
    .restart local v13       #description:Ljava/lang/String;
    .restart local v22       #alertId:J
    .restart local v35       #minutes:I
    .restart local v49       #status:I
    :cond_c
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 560
    .restart local v6       #beginTime:J
    .restart local v8       #alarmTime:J
    .restart local v16       #endTime:J
    .restart local v24       #alertUri:Landroid/net/Uri;
    .restart local v29       #declined:Z
    .restart local v48       #state:I
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 618
    .restart local v20       #allDay:Z
    .restart local v21       #newAlert:Z
    .restart local v36       #msgBuilder:Ljava/lang/StringBuilder;
    .restart local v37       #newAlertOverride:Z
    .restart local v40       #newState:I
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_e
    const/16 v40, 0x2

    goto/16 :goto_3

    .line 686
    .restart local v10       #newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .restart local v26       #beginTimeAdjustedForAllDay:J
    .restart local v38       #newStartInterval:J
    .restart local v42       #oldBeginTimeAdjustedForAllDay:J
    .restart local v44       #oldInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .restart local v45       #oldStartInterval:J
    .restart local v50       #tz:Ljava/lang/String;
    :cond_f
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 689
    :cond_10
    :try_start_2
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    cmp-long v3, v14, v18

    if-gez v3, :cond_11

    const/16 v30, 0x1

    .restart local v30       #dropOld:Z
    :goto_6
    goto/16 :goto_4

    .end local v30           #dropOld:Z
    :cond_11
    const/16 v30, 0x0

    goto :goto_6

    .line 722
    .end local v38           #newStartInterval:J
    .end local v42           #oldBeginTimeAdjustedForAllDay:J
    .end local v44           #oldInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v45           #oldStartInterval:J
    .restart local v33       #highPriorityCutoff:J
    :cond_12
    if-eqz v20, :cond_13

    if-eqz v50, :cond_13

    invoke-static/range {v26 .. v27}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 724
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 737
    .end local v4           #eventId:J
    .end local v6           #beginTime:J
    .end local v8           #alarmTime:J
    .end local v10           #newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11           #eventName:Ljava/lang/String;
    .end local v12           #location:Ljava/lang/String;
    .end local v13           #description:Ljava/lang/String;
    .end local v16           #endTime:J
    .end local v20           #allDay:Z
    .end local v21           #newAlert:Z
    .end local v22           #alertId:J
    .end local v24           #alertUri:Landroid/net/Uri;
    .end local v26           #beginTimeAdjustedForAllDay:J
    .end local v29           #declined:Z
    .end local v33           #highPriorityCutoff:J
    .end local v35           #minutes:I
    .end local v36           #msgBuilder:Ljava/lang/StringBuilder;
    .end local v37           #newAlertOverride:Z
    .end local v40           #newState:I
    .end local v48           #state:I
    .end local v49           #status:I
    .end local v50           #tz:Ljava/lang/String;
    .end local v51           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v31

    .line 738
    .local v31, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v3, "AlertService"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    if-eqz p0, :cond_b

    .line 741
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 726
    .end local v31           #e:Landroid/content/OperationApplicationException;
    .restart local v4       #eventId:J
    .restart local v6       #beginTime:J
    .restart local v8       #alarmTime:J
    .restart local v10       #newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .restart local v11       #eventName:Ljava/lang/String;
    .restart local v12       #location:Ljava/lang/String;
    .restart local v13       #description:Ljava/lang/String;
    .restart local v16       #endTime:J
    .restart local v20       #allDay:Z
    .restart local v21       #newAlert:Z
    .restart local v22       #alertId:J
    .restart local v24       #alertUri:Landroid/net/Uri;
    .restart local v26       #beginTimeAdjustedForAllDay:J
    .restart local v29       #declined:Z
    .restart local v33       #highPriorityCutoff:J
    .restart local v35       #minutes:I
    .restart local v36       #msgBuilder:Ljava/lang/StringBuilder;
    .restart local v37       #newAlertOverride:Z
    .restart local v40       #newState:I
    .restart local v48       #state:I
    .restart local v49       #status:I
    .restart local v50       #tz:Ljava/lang/String;
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_13
    :try_start_4
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 740
    .end local v4           #eventId:J
    .end local v6           #beginTime:J
    .end local v8           #alarmTime:J
    .end local v10           #newInfo:Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11           #eventName:Ljava/lang/String;
    .end local v12           #location:Ljava/lang/String;
    .end local v13           #description:Ljava/lang/String;
    .end local v16           #endTime:J
    .end local v20           #allDay:Z
    .end local v21           #newAlert:Z
    .end local v22           #alertId:J
    .end local v24           #alertUri:Landroid/net/Uri;
    .end local v26           #beginTimeAdjustedForAllDay:J
    .end local v29           #declined:Z
    .end local v33           #highPriorityCutoff:J
    .end local v35           #minutes:I
    .end local v36           #msgBuilder:Ljava/lang/StringBuilder;
    .end local v37           #newAlertOverride:Z
    .end local v40           #newState:I
    .end local v48           #state:I
    .end local v49           #status:I
    .end local v50           #tz:Ljava/lang/String;
    .end local v51           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_14

    .line 741
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    .line 732
    :cond_15
    :try_start_5
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 733
    const-string v3, "com.android.calendar"

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 740
    :cond_16
    if-eqz p0, :cond_b

    .line 741
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method static redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter "maxNotifications"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, highPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p1, mediumPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p2, lowPriorityEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    const/4 v4, 0x0

    .line 436
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    .line 438
    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 441
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p0, v4, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 444
    .local v0, itemsToMoveSublist:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 446
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 450
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 454
    .end local v0           #itemsToMoveSublist:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    .line 455
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, p3, v2

    .line 460
    .local v1, spaceRemaining:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 462
    .restart local v0       #itemsToMoveSublist:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 464
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 468
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 470
    .end local v0           #itemsToMoveSublist:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .end local v1           #spaceRemaining:I
    :cond_1
    return-void
.end method

.method private static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;)V
    .locals 17
    .parameter "cr"
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 958
    .local v15, now:J
    const-wide/32 v2, 0x5265c00

    sub-long v10, v15, v2

    .line 959
    .local v10, ancient:J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alarmTime"

    aput-object v3, v4, v2

    .line 965
    .local v4, projection:[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "alarmTime ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 969
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 993
    :goto_0
    return-void

    .line 974
    :cond_0
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed alarms found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-wide/16 v8, -0x1

    .line 980
    .local v8, alarmTime:J
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 982
    .local v13, newAlarmTime:J
    cmp-long v2, v8, v13

    if-eqz v2, :cond_1

    .line 984
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rescheduling missed alarm. alarmTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    move-wide v8, v13

    goto :goto_1

    .line 991
    .end local v13           #newAlarmTime:J
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v9, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-direct {v9, v1}, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;-><init>(Landroid/app/NotificationManager;)V

    .line 223
    .local v9, nm:Lcom/android/calendar/alerts/NotificationMgr;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 224
    .local v6, currentTime:J
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 227
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v1, "AlertService"

    const-string v3, "Beginning updateAlertNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "preferences_alerts"

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "AlertService"

    const-string v3, "alert preference is OFF"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v9}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    move v1, v2

    .line 258
    :goto_0
    return v1

    .line 241
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(state=? OR state=?) AND alarmTime<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "begin DESC, end DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 245
    .local v5, alertCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 246
    :cond_1
    if-eqz v5, :cond_2

    .line 247
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_2
    const-string v1, "AlertService"

    const-string v2, "No fired or scheduled alerts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v9}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    .line 253
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->postUnreadNumber(Landroid/content/Context;)V

    .line 255
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v3

    const/16 v8, 0x12

    move-object v1, p0

    move-object v2, v9

    move-object v4, v10

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/alerts/AlertService;->generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Lcom/android/calendar/alerts/AlarmManagerInterface;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1049
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 1012
    const-string v1, "AlertService"

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1016
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 1019
    new-instance v1, Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    .line 1022
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/alerts/AlertUtils;->flushOldAlertsFromInternalStorage(Landroid/content/Context;)V

    .line 1023
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1042
    const-string v0, "AlertService"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1045
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1028
    const-string v1, "AlertService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand()...intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    if-eqz p1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1032
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1033
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1034
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 178
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 182
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarmTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService;->doTimeChanged()V

    goto :goto_0

    .line 195
    :cond_3
    const-string v2, "removeOldReminders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->dismissOldAlerts(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_4
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
