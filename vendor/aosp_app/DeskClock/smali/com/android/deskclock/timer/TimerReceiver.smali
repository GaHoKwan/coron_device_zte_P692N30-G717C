.class public Lcom/android/deskclock/timer/TimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerReceiver.java"


# static fields
.field private static final IN_USE_NOTIFICATION_ID:I = 0x7ffffffd

.field private static final TAG:Ljava/lang/String; = "TimerReceiver"


# instance fields
.field mTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "timeLeft"

    .prologue
    .line 297
    const-wide/16 v13, 0x0

    cmp-long v13, p2, v13

    if-gez v13, :cond_0

    .line 299
    const-string v13, "TimerReceiver"

    const-string v14, "Will not show notification for timer already expired."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v13, 0x0

    .line 324
    :goto_0
    return-object v13

    .line 304
    :cond_0
    const-wide/16 v13, 0x3e8

    div-long v11, p2, v13

    .line 305
    .local v11, seconds:J
    const-wide/16 v13, 0x3c

    div-long v9, v11, v13

    .line 306
    .local v9, minutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v9

    sub-long/2addr v11, v13

    .line 307
    const-wide/16 v13, 0x3c

    div-long v5, v9, v13

    .line 308
    .local v5, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v5

    sub-long/2addr v9, v13

    .line 309
    const-wide/16 v13, 0x63

    cmp-long v13, v5, v13

    if-lez v13, :cond_1

    .line 310
    const-wide/16 v5, 0x0

    .line 313
    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-nez v13, :cond_2

    const-string v4, ""

    .line 316
    .local v4, hourSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_4

    const-string v8, ""

    .line 320
    .local v8, minSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_6

    const/4 v1, 0x1

    .line 321
    .local v1, dispHour:Z
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-lez v13, :cond_7

    const/4 v2, 0x1

    .line 322
    .local v2, dispMinute:Z
    :goto_4
    if-eqz v1, :cond_8

    const/4 v13, 0x1

    move v14, v13

    :goto_5
    if-eqz v2, :cond_9

    const/4 v13, 0x2

    :goto_6
    or-int v7, v14, v13

    .line 323
    .local v7, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, formats:[Ljava/lang/String;
    aget-object v13, v3, v7

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 313
    .end local v1           #dispHour:Z
    .end local v2           #dispMinute:Z
    .end local v3           #formats:[Ljava/lang/String;
    .end local v4           #hourSeq:Ljava/lang/String;
    .end local v7           #index:I
    .end local v8           #minSeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v13, 0x1

    cmp-long v13, v5, v13

    if-nez v13, :cond_3

    const v13, 0x7f0d0027

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const v13, 0x7f0d0028

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 316
    .restart local v4       #hourSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v13, 0x1

    cmp-long v13, v9, v13

    if-nez v13, :cond_5

    const v13, 0x7f0d0029

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    const v13, 0x7f0d002a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 320
    .restart local v8       #minSeq:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 321
    .restart local v1       #dispHour:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 322
    .restart local v2       #dispMinute:Z
    :cond_8
    const/4 v13, 0x0

    move v14, v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private cancelInUseNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 353
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 355
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 356
    return-void
.end method

.method private getBroadcastTime(JJ)J
    .locals 8
    .parameter "now"
    .parameter "timeUntilBroadcast"

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 232
    div-long v0, p3, v6

    .line 233
    .local v0, seconds:J
    div-long v2, v0, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 234
    mul-long v2, v0, v6

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;
    .locals 12
    .parameter
    .parameter "requireNextUpdate"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;ZJ)",
            "Lcom/android/deskclock/timer/TimerObj;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 330
    .local v2, nextTimesup:J
    const/4 v1, 0x0

    .line 331
    .local v1, nextTimerFound:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    const/4 v4, 0x0

    .line 333
    .local v4, t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/deskclock/timer/TimerObj;

    .line 335
    .local v9, tmp:Lcom/android/deskclock/timer/TimerObj;
    iget v10, v9, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 336
    invoke-virtual {v9}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v7

    .line 337
    .local v7, timesupTime:J
    sub-long v5, v7, p3

    .line 338
    .local v5, timeLeft:J
    cmp-long v10, v7, v2

    if-gez v10, :cond_0

    if-eqz p2, :cond_1

    const-wide/16 v10, 0x3c

    cmp-long v10, v5, v10

    if-lez v10, :cond_0

    .line 339
    :cond_1
    move-wide v2, v7

    .line 340
    const/4 v1, 0x1

    .line 341
    move-object v4, v9

    goto :goto_0

    .line 345
    .end local v5           #timeLeft:J
    .end local v7           #timesupTime:J
    .end local v9           #tmp:Lcom/android/deskclock/timer/TimerObj;
    :cond_2
    if-eqz v1, :cond_3

    .line 348
    .end local v4           #t:Lcom/android/deskclock/timer/TimerObj;
    :goto_1
    return-object v4

    .restart local v4       #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static showCollapsedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;IZ)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "priority"
    .parameter "pendingIntent"
    .parameter "notificationId"
    .parameter "showTicker"

    .prologue
    const/4 v5, 0x0

    .line 276
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 285
    .local v0, builder:Landroid/app/Notification$Builder;
    if-eqz p6, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 290
    .local v1, notification:Landroid/app/Notification;
    iput-object p4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 291
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 293
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, p5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 294
    return-void
.end method

.method private showCollapsedNotificationWithNext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "nextBroadcastTime"

    .prologue
    const/4 v6, 0x0

    .line 254
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/deskclock/DeskClock;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v7, activityIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    const-string v0, "deskclock.select.tab"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const/high16 v0, 0x4800

    invoke-static {p1, v6, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 259
    .local v4, pendingActivityIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x1

    const v5, 0x7ffffffd

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/deskclock/timer/TimerReceiver;->showCollapsedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;IZ)V

    .line 262
    if-nez p4, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v9, nextBroadcast:Landroid/content/Intent;
    const-string v0, "notif_in_use_show"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-static {p1, v6, v9, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 269
    .local v10, pendingNextBroadcast:Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 271
    .local v8, alarmManager:Landroid/app/AlarmManager;
    const/4 v0, 0x3

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static showExpiredAlarmNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 8
    .parameter "context"
    .parameter "t"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v7, broadcastIntent:Landroid/content/Intent;
    const-string v0, "timer.intent.extra"

    iget v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v0, "timer_stop"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v0, "update_notification"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    invoke-static {p0, v5, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 245
    .local v4, pendingBroadcastIntent:Landroid/app/PendingIntent;
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, label:Ljava/lang/String;
    :goto_0
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, contentText:Ljava/lang/String;
    const/4 v3, 0x2

    iget v5, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/deskclock/timer/TimerReceiver;->showCollapsedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;IZ)V

    .line 250
    return-void

    .line 245
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #contentText:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInUseNotification(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 179
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 180
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v19, "notif_app_open"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 181
    .local v3, appOpen:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/deskclock/timer/Timers;->timersInUse(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 182
    .local v17, timersInUse:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 184
    .local v11, numTimersInUse:I
    if-nez v3, :cond_0

    if-nez v11, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v8, 0x0

    .line 190
    .local v8, nextBroadcastTime:Ljava/lang/Long;
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v9

    .line 191
    .local v9, now:J
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 192
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/deskclock/timer/TimerObj;

    .line 193
    .local v15, timer:Lcom/android/deskclock/timer/TimerObj;
    iget-object v0, v15, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const v19, 0x7f0d0071

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, label:Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->isTicking()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v18, v7

    .line 196
    .local v18, title:Ljava/lang/String;
    :goto_2
    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->isTicking()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v19

    sub-long v13, v19, v9

    .line 197
    .local v13, timeLeft:J
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, contentText:Ljava/lang/String;
    const-wide/16 v19, 0x3c

    cmp-long v19, v13, v19

    if-lez v19, :cond_2

    .line 199
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 228
    .end local v7           #label:Ljava/lang/String;
    .end local v13           #timeLeft:J
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v6, v8}, Lcom/android/deskclock/timer/TimerReceiver;->showCollapsedNotificationWithNext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 193
    .end local v6           #contentText:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_3
    iget-object v7, v15, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    goto :goto_1

    .line 195
    .restart local v7       #label:Ljava/lang/String;
    :cond_4
    const v19, 0x7f0d008b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 196
    .restart local v18       #title:Ljava/lang/String;
    :cond_5
    iget-wide v13, v15, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    goto :goto_3

    .line 202
    .end local v7           #label:Ljava/lang/String;
    .end local v15           #timer:Lcom/android/deskclock/timer/TimerObj;
    .end local v18           #title:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v15

    .line 203
    .restart local v15       #timer:Lcom/android/deskclock/timer/TimerObj;
    if-nez v15, :cond_7

    .line 205
    const v19, 0x7f0d008c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 207
    .restart local v18       #title:Ljava/lang/String;
    const v19, 0x7f0d008d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #contentText:Ljava/lang/String;
    goto :goto_4

    .line 210
    .end local v6           #contentText:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_7
    const v19, 0x7f0d008e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 212
    .restart local v18       #title:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v4

    .line 213
    .local v4, completionTime:J
    sub-long v13, v4, v9

    .line 214
    .restart local v13       #timeLeft:J
    const v19, 0x7f0d008f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6       #contentText:Ljava/lang/String;
    const-wide/16 v19, 0x3c

    cmp-long v19, v13, v19

    if-gtz v19, :cond_8

    .line 217
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v16

    .line 218
    .local v16, timerWithUpdate:Lcom/android/deskclock/timer/TimerObj;
    if-eqz v16, :cond_2

    .line 219
    invoke-virtual/range {v16 .. v16}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v4

    .line 220
    sub-long v13, v4, v9

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_4

    .line 224
    .end local v16           #timerWithUpdate:Lcom/android/deskclock/timer/TimerObj;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_4
.end method

.method private stopRingtoneIfNoTimesup(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/deskclock/timer/Timers;->findExpiredTimer(Ljava/util/ArrayList;)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v1

    if-nez v1, :cond_0

    .line 145
    const-string v1, "TimerReceiver"

    const-string v2, "stopping ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, si:Landroid/content/Intent;
    const-class v1, Lcom/android/deskclock/TimerRingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 150
    .end local v0           #si:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateNextTimesup(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 156
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v8

    invoke-direct {p0, v7, v10, v8, v9}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v5

    .line 157
    .local v5, t:Lcom/android/deskclock/timer/TimerObj;
    if-nez v5, :cond_1

    const-wide/16 v2, -0x1

    .line 158
    .local v2, nextTimesup:J
    :goto_0
    if-nez v5, :cond_2

    const/4 v6, -0x1

    .line 160
    .local v6, timerId:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "times_up"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-class v7, Lcom/android/deskclock/timer/TimerReceiver;

    invoke-virtual {v0, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 164
    const-string v7, "timer.intent.extra"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    :cond_0
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 167
    .local v1, mngr:Landroid/app/AlarmManager;
    const/high16 v7, 0x4800

    invoke-static {p1, v10, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 169
    .local v4, p:Landroid/app/PendingIntent;
    if-eqz v5, :cond_3

    .line 170
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 171
    const-string v7, "TimerReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting times up to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_2
    return-void

    .line 157
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mngr:Landroid/app/AlarmManager;
    .end local v2           #nextTimesup:J
    .end local v4           #p:Landroid/app/PendingIntent;
    .end local v6           #timerId:I
    :cond_1
    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v2

    goto :goto_0

    .line 158
    .restart local v2       #nextTimesup:J
    :cond_2
    iget v6, v5, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    goto :goto_1

    .line 173
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #mngr:Landroid/app/AlarmManager;
    .restart local v4       #p:Landroid/app/PendingIntent;
    .restart local v6       #timerId:I
    :cond_3
    const-string v7, "TimerReceiver"

    const-string v8, "canceling times up"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, actionType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    .line 56
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 57
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 60
    const-string v8, "timer.intent.extra"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 62
    const-string v8, "timer.intent.extra"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 63
    .local v6, timer:I
    if-ne v6, v9, :cond_1

    .line 64
    const-string v8, "TimerReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " got intent without Timer data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v5

    .line 80
    .local v5, t:Lcom/android/deskclock/timer/TimerObj;
    const-string v8, "update_notification"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 81
    const-string v8, "timer_stop"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    if-nez v5, :cond_6

    .line 83
    const-string v8, "TimerReceiver"

    const-string v9, "timer not found in list - can\'t stop it."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v5           #t:Lcom/android/deskclock/timer/TimerObj;
    .end local v6           #timer:I
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    const-string v8, "notif_in_use_show"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 67
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showInUseNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v8, "notif_in_use_cancel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelInUseNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_5
    const-string v8, "TimerReceiver"

    const-string v9, " got intent without Timer data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .restart local v5       #t:Lcom/android/deskclock/timer/TimerObj;
    .restart local v6       #timer:I
    :cond_6
    const/4 v8, 0x4

    iput v8, v5, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 87
    invoke-virtual {v5, v3}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 88
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 89
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "from_notification"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v8, "timer_notif_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v9

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v8, "timer_notif_id"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v1, activityIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    const-string v8, "deskclock.select.tab"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    .end local v1           #activityIntent:Landroid/content/Intent;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v8, "times_up"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 106
    if-nez v5, :cond_8

    .line 107
    const-string v8, "TimerReceiver"

    const-string v9, " timer not found in list - do nothing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_8
    const/4 v8, 0x3

    iput v8, v5, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 112
    invoke-virtual {v5, v3}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 114
    const-string v8, "TimerReceiver"

    const-string v9, "playing ringtone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v4, si:Landroid/content/Intent;
    const-class v8, Lcom/android/deskclock/TimerRingService;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v9

    invoke-direct {p0, v8, v11, v9, v10}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v8

    if-nez v8, :cond_a

    .line 122
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelInUseNotification(Landroid/content/Context;)V

    .line 128
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/deskclock/timer/TimerAlertFullScreen;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v7, timersAlert:Landroid/content/Intent;
    const/high16 v8, 0x1004

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    .end local v4           #si:Landroid/content/Intent;
    .end local v7           #timersAlert:Landroid/content/Intent;
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->updateNextTimesup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 124
    .restart local v4       #si:Landroid/content/Intent;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showInUseNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 132
    .end local v4           #si:Landroid/content/Intent;
    :cond_b
    const-string v8, "timer_reset"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "delete_timer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "timer_done"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 136
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto :goto_2
.end method
