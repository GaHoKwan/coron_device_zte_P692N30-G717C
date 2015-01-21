.class public Lcom/android/calendar/alerts/AlertUtils;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# static fields
.field private static final ALERTS_SHARED_PREFS_NAME:Ljava/lang/String; = "calendar_alerts"

.field public static final ALERT_EXT_STATE_IGNORED:I = 0x64

.field static BYPASS_DB:Z = false

.field static final DEBUG:Z = true

.field public static final DISMISS_ALERT_ACTION:Ljava/lang/String; = "com.android.calendar.DELETE"

.field public static final EVENT_END_KEY:Ljava/lang/String; = "eventend"

.field public static final EVENT_IDS_KEY:Ljava/lang/String; = "eventids"

.field public static final EVENT_ID_KEY:Ljava/lang/String; = "eventid"

.field public static final EVENT_SHOWED:Ljava/lang/String; = "eventshowed"

.field public static final EVENT_START_KEY:Ljava/lang/String; = "eventstart"

.field public static final EXPIRED_GROUP_NOTIFICATION_ID:I = 0x0

.field private static final FLUSH_INTERVAL_DAYS:I = 0x1

.field private static final FLUSH_INTERVAL_MS:I = 0x5265c00

.field private static final KEY_FIRED_ALERT_PREFIX:Ljava/lang/String; = "preference_alert_"

.field private static final KEY_LAST_FLUSH_TIME_MS:Ljava/lang/String; = "preference_flushTimeMs"

.field public static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notificationid"

.field public static final SHOW_EVENT_KEY:Ljava/lang/String; = "showevent"

.field public static final SNOOZE_DELAY:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "AlertUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 4
    .parameter "c"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, i:Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 244
    .local v0, builder:Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "events/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    const-class v2, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 247
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 248
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 249
    return-object v1
.end method

.method public static createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    .local v0, mgr:Landroid/app/AlarmManager;
    new-instance v1, Lcom/android/calendar/alerts/AlertUtils$1;

    invoke-direct {v1, v0}, Lcom/android/calendar/alerts/AlertUtils$1;-><init>(Landroid/app/AlarmManager;)V

    return-object v1
.end method

.method static flushOldAlertsFromInternalStorage(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 294
    sget-boolean v17, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v17, :cond_4

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 298
    .local v14, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 299
    .local v12, nowTime:J
    const-string v17, "preference_flushTimeMs"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 300
    .local v10, lastFlushTimeMs:J
    sub-long v17, v12, v10

    const-wide/32 v19, 0x5265c00

    cmp-long v17, v17, v19

    if-lez v17, :cond_4

    .line 302
    const-string v17, "AlertUtils"

    const-string v18, "Flushing old alerts from shared prefs table"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 307
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 308
    .local v15, timeObj:Landroid/text/format/Time;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 309
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 310
    .local v9, key:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 311
    .local v16, value:Ljava/lang/Object;
    const-string v17, "preference_alert_"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 313
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 314
    check-cast v16, Ljava/lang/Long;

    .end local v16           #value:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 322
    .local v4, alertTime:J
    sub-long v17, v12, v4

    const-wide/32 v19, 0x5265c00

    cmp-long v17, v17, v19

    if-ltz v17, :cond_2

    .line 323
    invoke-interface {v6, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-static {v4, v5, v12, v13, v15}, Lcom/android/calendar/alerts/AlertUtils;->getIntervalInDays(JJLandroid/text/format/Time;)I

    move-result v3

    .line 326
    .local v3, ageInDays:I
    const-string v17, "AlertUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SharedPrefs key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": removed ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " days old)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v3           #ageInDays:I
    .end local v4           #alertTime:J
    .restart local v16       #value:Ljava/lang/Object;
    :cond_1
    const-string v17, "AlertUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SharedPrefs key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " did not have Long value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    .end local v16           #value:Ljava/lang/Object;
    .restart local v4       #alertTime:J
    :cond_2
    invoke-static {v4, v5, v12, v13, v15}, Lcom/android/calendar/alerts/AlertUtils;->getIntervalInDays(JJLandroid/text/format/Time;)I

    move-result v3

    .line 332
    .restart local v3       #ageInDays:I
    const-string v17, "AlertUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SharedPrefs key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": keep ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " days old)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .end local v3           #ageInDays:I
    .end local v4           #alertTime:J
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #key:Ljava/lang/String;
    :cond_3
    const-string v17, "preference_flushTimeMs"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #lastFlushTimeMs:J
    .end local v12           #nowTime:J
    .end local v14           #prefs:Landroid/content/SharedPreferences;
    .end local v15           #timeObj:Landroid/text/format/Time;
    :cond_4
    return-void
.end method

.method static formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "startMillis"
    .parameter "allDay"
    .parameter "location"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, tz:Ljava/lang/String;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 178
    .local v10, time:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 180
    .local v11, today:I
    invoke-virtual {v10, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    .line 185
    .local v6, eventDay:I
    const v5, 0x18000

    .line 187
    .local v5, flags:I
    if-nez p3, :cond_6

    .line 188
    or-int/lit8 v5, v5, 0x1

    .line 189
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    or-int/lit16 v5, v5, 0x80

    .line 196
    :cond_0
    :goto_0
    if-lt v6, v11, :cond_1

    add-int/lit8 v0, v11, 0x1

    if-le v6, v0, :cond_2

    .line 197
    :cond_1
    or-int/lit8 v5, v5, 0x10

    .line 200
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v9, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    if-eq v12, v0, :cond_3

    .line 205
    invoke-virtual {v10, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 206
    iget v0, v10, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    .line 207
    .local v7, isDST:Z
    :goto_1
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v7, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .end local v7           #isDST:Z
    :cond_3
    add-int/lit8 v0, v11, 0x1

    if-ne v6, v0, :cond_4

    .line 213
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .local v8, loc:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 219
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v8           #loc:Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_6
    or-int/lit16 v5, v5, 0x2000

    goto :goto_0

    .line 206
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getFiredAlertsKey(JJJ)Ljava/lang/String;
    .locals 2
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "alarmTime"

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preference_alert_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 253
    const-string v0, "calendar_alerts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalInDays(JJLandroid/text/format/Time;)I
    .locals 3
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "timeObj"

    .prologue
    .line 345
    invoke-virtual {p4, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 346
    iget-wide v1, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 347
    .local v0, startDay:I
    invoke-virtual {p4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 348
    iget-wide v1, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method static hasAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)Z
    .locals 2
    .parameter "context"
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "alarmTime"

    .prologue
    .line 272
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static/range {p1 .. p6}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsKey(JJJ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 227
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    return-object v2
.end method

.method public static postUnreadNumber(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "state=1 OR state=100"

    .line 402
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 404
    .local v7, unReadMsgNumber:I
    if-eqz v6, :cond_0

    .line 406
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 408
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_0
    const-string v1, "AlertUtils"

    const-string v2, "WriteUnreadReminders(unReadMsgNumber)."

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {p0, v7}, Lcom/mediatek/calendar/MTKUtils;->writeUnreadReminders(Landroid/content/Context;I)V

    .line 413
    return-void

    .line 408
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static removeEventNotification(Landroid/content/Context;JJJ)V
    .locals 5
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 365
    invoke-static {}, Lcom/android/calendar/alerts/AlertService;->getEventIdToNotificationIdMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 366
    .local v2, notiId:Ljava/lang/Integer;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v1, deleteIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v3, "eventid"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 369
    const-string v3, "eventstart"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    const-string v3, "eventend"

    invoke-virtual {v1, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 371
    const-string v3, "showevent"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    const-string v3, "eventshowed"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    if-eqz v2, :cond_0

    .line 376
    const-string v3, "notificationid"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    :goto_0
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 387
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 388
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 390
    const-string v3, "com.android.calendar.DELETE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    return-void

    .line 378
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_0
    const-string v3, "notificationid"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static scheduleAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    .locals 1
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V

    .line 126
    return-void
.end method

.method private static scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V
    .locals 6
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"
    .parameter "quietUpdate"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object p1

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, alarmType:I
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    if-eqz p4, :cond_1

    .line 151
    const/4 v0, 0x1

    .line 160
    :goto_0
    const-string v4, "alarmTime"

    invoke-virtual {v2, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 163
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-interface {p1, v0, p2, p3, v3}, Lcom/android/calendar/alerts/AlarmManagerInterface;->set(IJLandroid/app/PendingIntent;)V

    .line 164
    return-void

    .line 155
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_1
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 156
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static scheduleNextNotificationRefresh(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    .locals 1
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V

    .line 135
    return-void
.end method

.method static setAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)V
    .locals 3
    .parameter "context"
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "alarmTime"

    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p1 .. p6}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsKey(JJJ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method
