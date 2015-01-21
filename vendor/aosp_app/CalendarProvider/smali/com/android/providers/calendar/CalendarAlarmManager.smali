.class public Lcom/android/providers/calendar/CalendarAlarmManager;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# static fields
.field protected static final ACTION_CHECK_NEXT_ALARM:Ljava/lang/String; = "com.android.providers.calendar.intent.CalendarProvider2"

.field static final ALARM_CHECK_DELAY_MILLIS:I = 0x1388

.field private static final CLEAR_OLD_ALARM_THRESHOLD:J = 0x247a6100L

.field static final INVALID_CALENDARALERTS_SELECTOR:Ljava/lang/String; = "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

.field private static final REMOVE_ALARM_VALUE:Ljava/lang/String; = "removeAlarms"

.field static final SCHEDULE_ALARM_PATH:Ljava/lang/String; = "schedule_alarms"

.field static final SCHEDULE_ALARM_REMOVE_PATH:Ljava/lang/String; = "schedule_alarms_remove"

.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri; = null

.field private static final SCHEDULE_ALARM_SLACK:J = 0x6ddd00L

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri; = null

.field private static final SCHEDULE_NEXT_ALARM_WAKE_LOCK:Ljava/lang/String; = "ScheduleNextAlarmWakeLock"

.field protected static final TAG:Ljava/lang/String; = "CalendarAlarmManager"


# instance fields
.field protected mAlarmLock:Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mContext:Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 63
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarAlarmManager;->initializeWithContext(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private static removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 490
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "CalendarProvider2"

    const-string v1, "removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 56
    .parameter "db"
    .parameter "cp2"

    .prologue
    .line 268
    new-instance v50, Landroid/text/format/Time;

    invoke-direct/range {v50 .. v50}, Landroid/text/format/Time;-><init>()V

    .line 270
    .local v50, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 271
    .local v27, currentMillis:J
    const-wide/32 v13, 0x6ddd00

    sub-long v45, v27, v13

    .line 272
    .local v45, start:J
    const-wide/32 v13, 0x5265c00

    add-long v30, v45, v13

    .line 273
    .local v30, end:J
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    move-object/from16 v0, v50

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 275
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 276
    .local v47, startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "runScheduleNextAlarm() start search: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v47           #startTimeStr:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    const-wide/32 v13, 0x247a6100

    sub-long v13, v27, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    .line 288
    .local v44, selectArg:[Ljava/lang/String;
    const-string v3, "CalendarAlerts"

    const-string v13, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v42

    .line 291
    .local v42, rowsDeleted:I
    move-wide/from16 v37, v30

    .line 292
    .local v37, nextAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 293
    .local v12, resolver:Landroid/content/ContentResolver;
    move-wide/from16 v0, v27

    invoke-static {v12, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v53

    .line 294
    .local v53, tmpAlarmTime:J
    const-wide/16 v13, -0x1

    cmp-long v3, v53, v13

    if-eqz v3, :cond_1

    cmp-long v3, v53, v37

    if-gez v3, :cond_1

    .line 295
    move-wide/from16 v37, v53

    .line 320
    :cond_1
    invoke-virtual/range {v50 .. v50}, Landroid/text/format/Time;->setToNow()V

    .line 321
    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 322
    move-object/from16 v0, v50

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v15, 0x3e8

    mul-long v34, v13, v15

    .line 324
    .local v34, localOffset:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " -("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ") "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 325
    .local v24, allDayOffset:Ljava/lang/String;
    const-string v48, "SELECT begin"

    .line 326
    .local v48, subQueryPrefix:Ljava/lang/String;
    const-string v49, " -(minutes*60000) AS myAlarmTime,Instances.event_id AS eventId,begin,end,title,allDay,method,minutes FROM Instances INNER JOIN view_events ON (view_events._id=Instances.event_id) INNER JOIN Reminders ON (Instances.event_id=Reminders.event_id) WHERE visible=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND method=1"

    .line 342
    .local v49, subQuerySuffix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=1"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 344
    .local v25, allDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=0"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 349
    .local v39, nonAllDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " UNION ALL "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE 0=(SELECT count(*) FROM "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "CalendarAlerts"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " CA"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "event_id"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=eventId"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "alarmTime"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=myAlarmTime)"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " ORDER BY myAlarmTime,"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "title"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 356
    .local v40, query:Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/4 v3, 0x0

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x1

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x2

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x3

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x4

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x5

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    .line 360
    .local v41, queryParams:[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    const-string v13, "home"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 365
    .local v11, isHomeTimezone:Z
    const-wide/32 v13, 0x5265c00

    sub-long v4, v45, v13

    const-wide/32 v13, 0x5265c00

    add-long v6, v30, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 375
    const/16 v29, 0x0

    .line 377
    .local v29, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 379
    const-string v3, "begin"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 380
    .local v26, beginIndex:I
    const-string v3, "end"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 381
    .local v32, endIndex:I
    const-string v3, "eventId"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 382
    .local v33, eventIdIndex:I
    const-string v3, "myAlarmTime"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 383
    .local v22, alarmTimeIndex:I
    const-string v3, "minutes"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 385
    .local v36, minutesIndex:I
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    move-object/from16 v0, v50

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 387
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 388
    .local v23, alarmTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cursor results: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nextAlarmTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v23           #alarmTimeStr:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 400
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 401
    .local v8, alarmTime:J
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 402
    .local v4, eventId:J
    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 403
    .local v21, minutes:I
    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 404
    .local v6, startTime:J
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 406
    .local v17, endTime:J
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    move-object/from16 v0, v50

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 408
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 409
    .local v43, schedTime:Ljava/lang/String;
    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 410
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 412
    .restart local v47       #startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  looking at id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " alarm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v43           #schedTime:Ljava/lang/String;
    .end local v47           #startTimeStr:Ljava/lang/String;
    :cond_3
    cmp-long v3, v8, v37

    if-gez v3, :cond_6

    .line 418
    move-wide/from16 v37, v8

    :cond_4
    move-object v3, v12

    .line 431
    invoke-static/range {v3 .. v9}, Landroid/provider/CalendarContract$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 432
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    const-string v3, "title"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 434
    .local v52, titleIndex:I
    move-object/from16 v0, v29

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 435
    .local v51, title:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  alarm exists for id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 455
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v22           #alarmTimeIndex:I
    .end local v26           #beginIndex:I
    .end local v32           #endIndex:I
    .end local v33           #eventIdIndex:I
    .end local v36           #minutesIndex:I
    .end local v51           #title:Ljava/lang/String;
    .end local v52           #titleIndex:I
    :catchall_0
    move-exception v3

    if-eqz v29, :cond_5

    .line 456
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 419
    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    .restart local v22       #alarmTimeIndex:I
    .restart local v26       #beginIndex:I
    .restart local v32       #endIndex:I
    .restart local v33       #eventIdIndex:I
    .restart local v36       #minutesIndex:I
    :cond_6
    const-wide/32 v13, 0xea60

    add-long v13, v13, v37

    cmp-long v3, v8, v13

    if-lez v3, :cond_4

    .line 422
    :try_start_1
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 423
    const-string v3, "CalendarProvider2"

    const-string v13, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    :cond_7
    if-eqz v29, :cond_8

    .line 456
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_8
    if-lez v42, :cond_9

    .line 462
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V

    .line 470
    :cond_9
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v3, v37, v13

    if-eqz v3, :cond_c

    .line 471
    const-wide/32 v13, 0xea60

    add-long v13, v13, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    .line 475
    :goto_1
    return-void

    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    :cond_a
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v19, v8

    .line 442
    :try_start_2
    invoke-static/range {v12 .. v21}, Landroid/provider/CalendarContract$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v55

    .line 444
    .local v55, uri:Landroid/net/Uri;
    if-nez v55, :cond_b

    .line 445
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x6

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    const-string v3, "CalendarProvider2"

    const-string v13, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 473
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v55           #uri:Landroid/net/Uri;
    :cond_c
    const-wide/32 v13, 0x5265c00

    add-long v13, v13, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    goto :goto_1
.end method


# virtual methods
.method acquireScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    return-void
.end method

.method getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 173
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "ScheduleNextAlarmWakeLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 180
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v1
.end method

.method protected initializeWithContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    .line 134
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmLock:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method releaseScheduleNextAlarmWakeLock()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    return-void
.end method

.method rescheduleMissedAlarms()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms(Landroid/content/ContentResolver;)V

    .line 193
    return-void
.end method

.method public rescheduleMissedAlarms(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "cr"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 511
    return-void
.end method

.method runScheduleNextAlarm(ZLcom/android/providers/calendar/CalendarProvider2;)V
    .locals 3
    .parameter "removeAlarms"
    .parameter "cp2"

    .prologue
    .line 202
    iget-object v0, p2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 203
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 211
    if-eqz p1, :cond_1

    .line 212
    :try_start_0
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 214
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public scheduleAlarm(J)V
    .locals 2
    .parameter "alarmTime"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v0, v1, p1, p2}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 507
    return-void
.end method

.method scheduleNextAlarm(Z)V
    .locals 8
    .parameter "removeAlarms"

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_3

    .line 147
    :cond_0
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    const-string v4, "CalendarProvider2"

    const-string v5, "Scheduling check of next Alarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "removeAlarms"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 154
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 163
    .local v2, triggerAtTime:J
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 165
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pending:Landroid/app/PendingIntent;
    .end local v2           #triggerAtTime:J
    :cond_3
    return-void
.end method

.method scheduleNextAlarmCheck(J)V
    .locals 8
    .parameter "triggerTime"

    .prologue
    const/4 v7, 0x0

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 226
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 230
    :cond_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 233
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 235
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 236
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, timeStr:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleNextAlarmCheck at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v2           #time:Landroid/text/format/Time;
    .end local v3           #timeStr:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7, p1, p2, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 241
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 499
    return-void
.end method
