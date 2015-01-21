.class public Lcom/android/deskclock/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field static final ALARM_PHONE_LISTENER:Ljava/lang/String; = "com.android.deskclock.ALARM_PHONE_LISTENER"

.field private static final STALE_WINDOW:I = 0x1b7740

.field private static final VIBRATE_LENGTH:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mICMCCSpecialSpecExtension:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private buildNotification(Landroid/content/Context;ZLcom/android/deskclock/Alarm;)Landroid/app/Notification;
    .locals 17
    .parameter "context"
    .parameter "enable"
    .parameter "alarm"

    .prologue
    .line 302
    new-instance v8, Landroid/content/Intent;

    const-class v13, Lcom/android/deskclock/AlarmAlertFullScreen;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v8, notify:Landroid/content/Intent;
    const-string v13, "intent.extra.alarm"

    move-object/from16 v0, p3

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/deskclock/Alarm;->id:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 308
    .local v10, pendingNotify:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.deskclock.ALARM_SNOOZE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v12, snoozeIntent:Landroid/content/Intent;
    const-string v13, "intent.extra.alarm"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/deskclock/Alarm;->id:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v12, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 312
    .local v11, pendingSnooze:Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.android.deskclock.ALARM_DISMISS"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v5, dismissIntent:Landroid/content/Intent;
    const-string v13, "intent.extra.alarm"

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/deskclock/Alarm;->id:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 317
    .local v9, pendingDismiss:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 318
    .local v4, cal:Ljava/util/Calendar;
    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-virtual {v4, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 319
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, alarmTime:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 324
    .local v7, n:Landroid/app/Notification;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f020081

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 334
    .local v3, builder:Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    if-nez v13, :cond_0

    .line 335
    if-eqz p2, :cond_1

    .line 336
    const v13, 0x7f020081

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0022

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14, v11}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x1080038

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0020

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 348
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 349
    iput-object v10, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 350
    return-object v7

    .line 343
    :cond_1
    const v13, 0x1080038

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0020

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 360
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    const-string v24, "alarm_killed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "alarm_change_notification"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 86
    :cond_0
    const-string v24, "snoozed"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 87
    .local v12, flag:Z
    if-eqz v12, :cond_1

    .line 88
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Lcom/android/deskclock/Alarm;

    const-string v25, "alarm_killed_timeout"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/AlarmReceiver;->updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V

    .line 293
    .end local v12           #flag:Z
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v24, "cancel_snooze"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, alarm:Lcom/android/deskclock/Alarm;
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 99
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #alarm:Lcom/android/deskclock/Alarm;
    check-cast v4, Lcom/android/deskclock/Alarm;

    .line 102
    .restart local v4       #alarm:Lcom/android/deskclock/Alarm;
    :cond_3
    if-eqz v4, :cond_4

    .line 103
    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 112
    :goto_1
    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :cond_4
    const-string v24, "Unable to parse Alarm from intent."

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 109
    const/16 v24, -0x1

    const-wide/16 v25, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    goto :goto_1

    .line 114
    .end local v4           #alarm:Lcom/android/deskclock/Alarm;
    :cond_5
    const-string v24, "disable_or_enable_snooze_notification"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 115
    const-string v24, "enable"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 116
    .restart local v12       #flag:Z
    const-string v24, "alarmID"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 117
    .local v14, id:I
    const-string v24, "alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/Alarm;

    .line 119
    .restart local v4       #alarm:Lcom/android/deskclock/Alarm;
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_6

    if-nez v4, :cond_7

    .line 120
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "error, the alarm  id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; alarm = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v4}, Lcom/android/deskclock/AlarmReceiver;->buildNotification(Landroid/content/Context;ZLcom/android/deskclock/Alarm;)Landroid/app/Notification;

    move-result-object v16

    .line 124
    .local v16, n:Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v14, v2}, Lcom/android/deskclock/AlarmReceiver;->sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 126
    .end local v4           #alarm:Lcom/android/deskclock/Alarm;
    .end local v12           #flag:Z
    .end local v14           #id:I
    .end local v16           #n:Landroid/app/Notification;
    :cond_8
    const-string v24, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 131
    const/4 v4, 0x0

    .line 136
    .restart local v4       #alarm:Lcom/android/deskclock/Alarm;
    const-string v24, "setNextAlert"

    const/16 v25, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 137
    const-string v24, "intent.extra.alarm_raw"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 138
    .local v9, data:[B
    if-eqz v9, :cond_9

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 140
    .local v15, in:Landroid/os/Parcel;
    const/16 v24, 0x0

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v9, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 141
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    sget-object v24, Lcom/android/deskclock/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #alarm:Lcom/android/deskclock/Alarm;
    check-cast v4, Lcom/android/deskclock/Alarm;

    .line 145
    .end local v15           #in:Landroid/os/Parcel;
    .restart local v4       #alarm:Lcom/android/deskclock/Alarm;
    :cond_9
    if-nez v4, :cond_a

    .line 146
    const-string v24, "Failed to parse the alarm from the intent"

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 153
    :cond_a
    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 155
    iget-object v0, v4, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v24

    if-nez v24, :cond_e

    .line 156
    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 170
    .end local v9           #data:[B
    :cond_b
    :goto_2
    :try_start_0
    const-string v24, "phone"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/AlarmReceiver;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/AlarmReceiver;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/AlarmReceiver;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 175
    new-instance v19, Landroid/content/Intent;

    const-string v24, "com.android.deskclock.ALARM_PHONE_LISTENER"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v19, phoneListener:Landroid/content/Intent;
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/AlarmReceiver;->mICMCCSpecialSpecExtension:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

    move-object/from16 v24, v0

    if-nez v24, :cond_c

    .line 181
    const-class v24, Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v22

    .line 184
    .local v22, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v8

    .local v8, count:I
    :goto_3
    if-ge v13, v8, :cond_c

    .line 185
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 187
    .local v21, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

    .line 188
    .local v11, ext:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;
    if-eqz v11, :cond_10

    .line 189
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/deskclock/AlarmReceiver;->mICMCCSpecialSpecExtension:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;
    :try_end_1
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .end local v8           #count:I
    .end local v11           #ext:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;
    .end local v13           #i:I
    .end local v21           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    .end local v22           #pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/AlarmReceiver;->mICMCCSpecialSpecExtension:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/AlarmReceiver;->mICMCCSpecialSpecExtension:Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;->isCMCCSpecialSpec()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 200
    const-string v24, "CMCC special spec : do not vibrate when in call state "

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .end local v19           #phoneListener:Landroid/content/Intent;
    :cond_d
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 221
    .local v17, now:J
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received alarm set for id="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-wide v0, v4, Lcom/android/deskclock/Alarm;->time:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 224
    iget-wide v0, v4, Lcom/android/deskclock/Alarm;->time:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x1b7740

    add-long v24, v24, v26

    cmp-long v24, v17, v24

    if-lez v24, :cond_12

    .line 225
    const-string v24, "Ignoring stale alarm"

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v17           #now:J
    .restart local v9       #data:[B
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 163
    .end local v9           #data:[B
    :cond_f
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 165
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #alarm:Lcom/android/deskclock/Alarm;
    check-cast v4, Lcom/android/deskclock/Alarm;

    .restart local v4       #alarm:Lcom/android/deskclock/Alarm;
    goto/16 :goto_2

    .line 192
    .restart local v8       #count:I
    .restart local v13       #i:I
    .restart local v19       #phoneListener:Landroid/content/Intent;
    .restart local v21       #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    .restart local v22       #pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    :catch_0
    move-exception v10

    .line 193
    .local v10, ex:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    const-string v24, "can not create plugin object!"

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .end local v10           #ex:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 203
    .end local v8           #count:I
    .end local v13           #i:I
    .end local v21           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    .end local v22           #pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/deskclock/ext/ICMCCSpecialSpecExtension;>;"
    :cond_11
    const-string v24, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Vibrator;

    .line 204
    .local v23, vibrator:Landroid/os/Vibrator;
    if-eqz v23, :cond_d

    .line 205
    const-string v24, "vibrator starts,and vibrates:1000 ms"

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 206
    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v23 .. v25}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 213
    .end local v19           #phoneListener:Landroid/content/Intent;
    .end local v23           #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v10

    .line 214
    .local v10, ex:Landroid/os/RemoteException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Catch exception when getPreciseCallState: ex = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 231
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v17       #now:J
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 234
    new-instance v7, Landroid/content/Intent;

    const-string v24, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v7, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    const-class v6, Lcom/android/deskclock/AlarmAlertFullScreen;

    .line 260
    .local v6, c:Ljava/lang/Class;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/deskclock/AlarmReceiver;->buildNotification(Landroid/content/Context;ZLcom/android/deskclock/Alarm;)Landroid/app/Notification;

    move-result-object v16

    .line 262
    .restart local v16       #n:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 263
    const/16 v24, 0x64

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 264
    const/16 v24, 0xc8

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 268
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    move/from16 v24, v0

    if-nez v24, :cond_14

    .line 271
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v5, alarmAlert:Landroid/content/Intent;
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    const/high16 v24, 0x1004

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v24, v0

    const/high16 v25, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 282
    .end local v5           #alarmAlert:Landroid/content/Intent;
    :cond_14
    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v24

    if-nez v24, :cond_15

    .line 283
    iget v0, v4, Lcom/android/deskclock/Alarm;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/AlarmReceiver;->sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 286
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/AlarmReceiver;->mCurrentCallState:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 288
    new-instance v20, Landroid/content/Intent;

    const-string v24, "com.android.deskclock.ALARM_ALERT"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v20, playAlarm:Landroid/content/Intent;
    const-string v24, "intent.extra.alarm"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method private sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "n"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 355
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 356
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 357
    return-void
.end method

.method private updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "timeout"

    .prologue
    const/4 v8, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 368
    .local v3, nm:Landroid/app/NotificationManager;
    if-nez p2, :cond_1

    .line 369
    sget-boolean v5, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v5, :cond_0

    .line 370
    const-string v5, "Cannot update notification for killer callback"

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v4, viewAlarm:Landroid/content/Intent;
    const-string v5, "intent.extra.alarm"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    iget v5, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v5, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 383
    .local v0, intent:Landroid/app/PendingIntent;
    invoke-virtual {p2, p1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, label:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    const v5, 0x7f020081

    iget-wide v6, p2, Lcom/android/deskclock/Alarm;->time:J

    invoke-direct {v2, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 386
    .local v2, n:Landroid/app/Notification;
    const v5, 0x7f0d0021

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v1, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 389
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 393
    iget v5, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 394
    iget v5, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/deskclock/AlarmReceiver;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 61
    .local v4, result:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 62
    .local v5, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    iget-object v0, p0, Lcom/android/deskclock/AlarmReceiver;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 65
    .local v6, mDisplayManager:Landroid/hardware/display/DisplayManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSmartBookPluggedIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/AlarmReceiver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 68
    .local v7, pm:Landroid/os/PowerManager;
    const-string v0, "SmartBook is pluggedIn , turn on the screen of SmartBook"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/os/PowerManager;->sbScreenOnCtrl(I)V

    .line 72
    .end local v7           #pm:Landroid/os/PowerManager;
    :cond_0
    new-instance v0, Lcom/android/deskclock/AlarmReceiver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/AlarmReceiver$1;-><init>(Lcom/android/deskclock/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
