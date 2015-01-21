.class public Lcom/mediatek/schpwronoff/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.alarmclock.ALARM_ALERT"

.field public static final ALARM_ALERT_SILENT:Ljava/lang/String; = "silent"

.field public static final ALARM_ID:Ljava/lang/String; = "alarm_id"

.field public static final ALARM_INTENT_EXTRA:Ljava/lang/String; = "intent.extra.alarm"

.field public static final ALARM_KILLED:Ljava/lang/String; = "alarm_killed"

.field public static final ALARM_KILLED_TIMEOUT:Ljava/lang/String; = "alarm_killed_timeout"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "intent.extra.alarm_raw"

.field public static final CANCEL_SNOOZE:Ljava/lang/String; = "cancel_snooze"

.field public static final CLEAR_NOTIFICATION:Ljava/lang/String; = "clear_notification"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E k:mm"

.field private static final M12:Ljava/lang/String; = "h:mm aa"

.field static final M24:Ljava/lang/String; = "kk:mm"

.field static final PREF_SNOOZE_ID:Ljava/lang/String; = "snooze_id"

.field static final PREF_SNOOZE_TIME:Ljava/lang/String; = "snooze_time"

.field private static final TAG:Ljava/lang/String; = "Settings/Alarms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter "contentResolver"

    .prologue
    .line 112
    const/16 v0, 0x8

    .line 113
    .local v0, defaultHour:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "hour"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method static calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 605
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 606
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 608
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 609
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 612
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 613
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 615
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 616
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 617
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 618
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 620
    invoke-virtual {p2, v1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 625
    .local v0, addDays:I
    if-lez v0, :cond_2

    .line 626
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 628
    :cond_2
    return-object v1
.end method

.method public static calculateNextAlert(Landroid/content/Context;I)Lcom/mediatek/schpwronoff/Alarm;
    .locals 11
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, alarm:Lcom/mediatek/schpwronoff/Alarm;
    const/4 v2, 0x0

    .line 279
    .local v2, cursor:Landroid/database/Cursor;
    const-wide v3, 0x7fffffffffffffffL

    .line 280
    .local v3, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 281
    .local v5, now:J
    const-string v7, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_now = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/mediatek/schpwronoff/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    :cond_0
    new-instance v0, Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {v0, v2}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 288
    .local v0, a:Lcom/mediatek/schpwronoff/Alarm;
    const-string v7, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_atime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v7, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_min_time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-wide v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 293
    iget v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    iget v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    iget-object v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v7, v8, v9}, Lcom/mediatek/schpwronoff/Alarms;->calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    .line 294
    const-string v7, "Settings/Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarms.calculateNextAlert()_calculateAlarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    :goto_0
    iget-wide v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 304
    iget-wide v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    .line 305
    move-object v1, v0

    .line 307
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 311
    .end local v0           #a:Lcom/mediatek/schpwronoff/Alarm;
    :cond_3
    if-eqz v2, :cond_4

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_4
    return-object v1

    .line 295
    .restart local v0       #a:Lcom/mediatek/schpwronoff/Alarm;
    :cond_5
    :try_start_1
    iget-wide v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_7

    .line 296
    const-string v7, "Settings/Alarms"

    const-string v8, "Alarms.calculateNextAlert()_atime < now"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v7, 0x0

    invoke-static {p0, v0, v7}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 311
    .end local v0           #a:Lcom/mediatek/schpwronoff/Alarm;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_6

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v7

    .line 300
    .restart local v0       #a:Lcom/mediatek/schpwronoff/Alarm;
    :cond_7
    :try_start_2
    iget-boolean v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    if-eqz v7, :cond_1

    .line 301
    const/4 v7, 0x1

    invoke-static {p0, v0, v7}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static clearSnoozePreference(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter "ed"

    .prologue
    .line 552
    const-string v0, "snooze_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    const-string v0, "snooze_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 555
    return-void
.end method

.method public static deleteAlarm(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/mediatek/schpwronoff/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 129
    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, uri:Landroid/net/Uri;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 434
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/schpwronoff/SchPwrOffReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 436
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 437
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "Settings/Alarms"

    const-string v4, "Alarms.disableAlertPowerOff(): disableForPowerOff"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 441
    return-void
.end method

.method static disableAlertPowerOn(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 508
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/schpwronoff/SchPwrOnReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 510
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 511
    .local v2, sender:Landroid/app/PendingIntent;
    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancelPoweroffAlarm(Ljava/lang/String;)V

    .line 513
    const-string v3, "Settings/Alarms"

    const-string v4, "Alarms.disableAlertPowerOn(): disableForPowerOn"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/schpwronoff/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 327
    .local v2, now:J
    if-eqz v1, :cond_2

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    :cond_0
    new-instance v0, Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {v0, v1}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 333
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    iget-wide v4, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 334
    const-string v4, "Settings/Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** DISABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;Z)V

    .line 337
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 341
    .end local v0           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    :cond_2
    if-eqz v1, :cond_3

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_3
    return-void

    .line 341
    .end local v2           #now:J
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, -0x1

    .line 538
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 539
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 540
    .local v1, snoozeId:I
    if-ne v1, v4, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    if-ne v1, p1, :cond_0

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/schpwronoff/Alarms;->clearSnoozePreference(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 236
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 237
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 239
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlertPowerOff(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 245
    .local v0, al:Lcom/mediatek/schpwronoff/Alarm;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0, v0, p2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;Z)V

    .line 248
    :cond_0
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;Z)V
    .locals 8
    .parameter "context"
    .parameter "alarm"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 254
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "enabled"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    if-eqz p2, :cond_1

    .line 259
    const-wide/16 v1, 0x0

    .line 260
    .local v1, time:J
    iget-object v4, p1, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    iget v4, p1, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    iget v5, p1, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    iget-object v6, p1, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-static {v4, v5, v6}, Lcom/mediatek/schpwronoff/Alarms;->calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 263
    :cond_0
    iput-wide v1, p1, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    .line 264
    const-string v4, "alarmtime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    .end local v1           #time:J
    :cond_1
    sget-object v4, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    return-void

    .line 254
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v8, 0x0

    .line 391
    if-nez p1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 396
    .local v0, am:Landroid/app/AlarmManager;
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/schpwronoff/SchPwrOffReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 412
    .local v3, out:Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/mediatek/schpwronoff/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 414
    const-string v5, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 416
    const/high16 v5, 0x1000

    invoke-static {p0, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 418
    .local v4, sender:Landroid/app/PendingIntent;
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alarms.enableAlertPowerOff(): setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v0, v8, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 422
    .local v1, c:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private static enableAlertPowerOn(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v8, 0x0

    .line 466
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 468
    .local v0, am:Landroid/app/AlarmManager;
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/schpwronoff/SchPwrOnReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 484
    .local v3, out:Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/mediatek/schpwronoff/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 486
    const-string v5, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 488
    const/high16 v5, 0x1000

    invoke-static {p0, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 490
    .local v4, sender:Landroid/app/PendingIntent;
    const/4 v5, 0x7

    invoke-virtual {v0, v5, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 491
    const-string v5, "Settings/Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alarms.enableAlertPowerOn(): setAlert id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " atTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 496
    .local v1, c:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 499
    return-void
.end method

.method private static enableSnoozeAlert(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 563
    const-string v6, "AlarmClock"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 565
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "snooze_id"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 566
    .local v1, id:I
    if-ne v1, v7, :cond_0

    .line 580
    :goto_0
    return v5

    .line 569
    :cond_0
    const-string v5, "snooze_time"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 572
    .local v3, time:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mediatek/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 576
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    if-eqz v0, :cond_1

    .line 577
    iput-wide v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    .line 579
    :cond_1
    invoke-static {p0, v0, v3, v4}, Lcom/mediatek/schpwronoff/Alarms;->enableAlert(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V

    .line 580
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 646
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "E k:mm"

    .line 647
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 646
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .line 647
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static formatTime(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 632
    invoke-static {p1, p2, p3}, Lcom/mediatek/schpwronoff/Alarms;->calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 633
    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/mediatek/schpwronoff/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 638
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 639
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 638
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 639
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 661
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/mediatek/schpwronoff/Alarm;
    .locals 8
    .parameter "contentResolver"
    .parameter "alarmId"

    .prologue
    .line 164
    const/4 v7, 0x0

    .line 165
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 167
    .local v6, alarm:Lcom/mediatek/schpwronoff/Alarm;
    :try_start_0
    sget-object v0, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_0

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v6, Lcom/mediatek/schpwronoff/Alarm;

    .end local v6           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    invoke-direct {v6, v7}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .restart local v6       #alarm:Lcom/mediatek/schpwronoff/Alarm;
    :cond_0
    if-eqz v7, :cond_1

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    return-object v6

    .line 175
    .end local v6           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v3, 0x0

    .line 141
    sget-object v1, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 147
    sget-object v1, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;I)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"
    .parameter "alarmId"

    .prologue
    const/4 v4, 0x0

    .line 152
    sget-object v0, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/mediatek/schpwronoff/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "timeString"

    .prologue
    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 655
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "time"

    .prologue
    .line 520
    const-string v2, "Settings/Alarms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarms.saveSnoozeAlert(): id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 524
    invoke-static {v0}, Lcom/mediatek/schpwronoff/Alarms;->clearSnoozePreference(Landroid/content/SharedPreferences$Editor;)V

    .line 531
    :goto_0
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 532
    return-void

    .line 526
    :cond_0
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;IZIILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"

    .prologue
    .line 196
    const/16 v1, 0x8

    .line 197
    .local v1, initSize:I
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 198
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 201
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/16 v3, 0x0

    .line 202
    .local v3, time:J
    invoke-virtual {p5}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    invoke-static {p3, p4, p5}, Lcom/mediatek/schpwronoff/Alarms;->calculateAlarm(IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 206
    :cond_0
    const-string v6, "Settings/Alarms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**  setAlarm * idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hour "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minutes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "enabled"

    if-eqz p2, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v6, "hour"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v6, "minutes"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v6, "alarmtime"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v6, "daysofweek"

    invoke-virtual {p5}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v6, "vibrate"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    const-string v6, "message"

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v6, "alert"

    move-object/from16 v0, p8

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v6, Lcom/mediatek/schpwronoff/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 221
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlertPowerOn(Landroid/content/Context;)V

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 222
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 224
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlertPowerOff(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 354
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 355
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    if-nez v0, :cond_0

    .line 356
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->disableAlertPowerOn(Landroid/content/Context;)V

    .line 361
    :goto_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/mediatek/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 367
    :goto_1
    return-void

    .line 358
    :cond_0
    iget-wide v1, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlertPowerOn(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V

    goto :goto_0

    .line 365
    :cond_1
    iget-wide v1, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlert(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V

    goto :goto_1
.end method

.method public static setNextAlertPowerOff(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 374
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/mediatek/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 375
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    if-nez v0, :cond_0

    .line 376
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-wide v1, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlert(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V

    goto :goto_0
.end method

.method public static setNextAlertPowerOn(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 449
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/schpwronoff/Alarms;->calculateNextAlert(Landroid/content/Context;I)Lcom/mediatek/schpwronoff/Alarm;

    move-result-object v0

    .line 450
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    if-nez v0, :cond_0

    .line 451
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->disableAlertPowerOn(Landroid/content/Context;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-wide v1, v0, Lcom/mediatek/schpwronoff/Alarm;->mTime:J

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/schpwronoff/Alarms;->enableAlertPowerOn(Landroid/content/Context;Lcom/mediatek/schpwronoff/Alarm;J)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    return-void
.end method
