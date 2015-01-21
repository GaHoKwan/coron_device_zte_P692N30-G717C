.class public Lcom/android/deskclock/HandleSetAlarm;
.super Landroid/app/Activity;
.source "HandleSetAlarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleCursorResult(Landroid/database/Cursor;JZZ)Z
    .locals 4
    .parameter "c"
    .parameter "timeInMillis"
    .parameter "enable"
    .parameter "skipUi"

    .prologue
    const/4 v2, 0x1

    .line 110
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 112
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-eqz p4, :cond_0

    .line 113
    iget v3, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v3, v2}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 114
    iput-boolean v2, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 116
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 117
    if-eqz p5, :cond_1

    .line 118
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    .line 126
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :goto_0
    return v2

    .line 120
    .restart local v0       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v1, i:Landroid/content/Intent;
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 41
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_0

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/deskclock/AlarmClock;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 51
    .local v12, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    const-string v1, "android.intent.extra.alarm.HOUR"

    const/16 v5, 0xb

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 54
    .local v13, hour:I
    const-string v1, "android.intent.extra.alarm.MINUTES"

    const/16 v5, 0xc

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 56
    .local v16, minutes:I
    const-string v1, "android.intent.extra.alarm.SKIP_UI"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 57
    .local v10, skipUi:Z
    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 58
    .local v15, message:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 59
    const-string v15, ""

    .line 62
    :cond_3
    const/4 v11, 0x0

    .line 63
    .local v11, c:Landroid/database/Cursor;
    new-instance v1, Lcom/android/deskclock/Alarm$DaysOfWeek;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    move/from16 v0, v16

    invoke-static {v13, v0, v1}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 66
    .local v17, timeInMillis:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "daysofweek"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 74
    .end local v11           #c:Landroid/database/Cursor;
    .local v2, c:Landroid/database/Cursor;
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move v6, v10

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/HandleSetAlarm;->handleCursorResult(Landroid/database/Cursor;JZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 79
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_6
    const/4 v2, 0x0

    .line 84
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v19, values:Landroid/content/ContentValues;
    const-string v1, "hour"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "minutes"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "message"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "vibrate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "daysofweek"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v1, "alarmtime"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 94
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 95
    .local v4, result:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 97
    :try_start_2
    sget-object v5, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 99
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object v6, v2

    move-wide/from16 v7, v17

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/HandleSetAlarm;->handleCursorResult(Landroid/database/Cursor;JZZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 79
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #result:Landroid/net/Uri;
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v11       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    move-object v2, v11

    .end local v11           #c:Landroid/database/Cursor;
    .restart local v2       #c:Landroid/database/Cursor;
    :goto_1
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_8
    const/4 v2, 0x0

    throw v1

    .line 101
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v4       #result:Landroid/net/Uri;
    .restart local v19       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 79
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #result:Landroid/net/Uri;
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v1

    goto :goto_1
.end method
