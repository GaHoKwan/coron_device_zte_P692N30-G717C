.class public Lcom/android/calendar/alerts/SnoozeAlarmsService;
.super Landroid/app/IntentService;
.source "SnoozeAlarmsService.java"


# static fields
.field private static final COLUMN_INDEX_STATE:I

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/SnoozeAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "SnoozeAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 51
    const-string v11, "eventid"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 52
    .local v3, eventId:J
    const-string v11, "eventstart"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 53
    .local v5, eventStart:J
    const-string v11, "eventend"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 57
    .local v7, eventEnd:J
    const-string v11, "notificationid"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 60
    .local v14, notificationId:I
    const-wide/16 v19, -0x1

    cmp-long v11, v3, v19

    if-eqz v11, :cond_1

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 64
    .local v15, resolver:Landroid/content/ContentResolver;
    if-eqz v14, :cond_0

    .line 65
    const-string v11, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 67
    .local v13, nm:Landroid/app/NotificationManager;
    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 71
    .end local v13           #nm:Landroid/app/NotificationManager;
    :cond_0
    sget-object v17, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 72
    .local v17, uri:Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "state=1 AND event_id="

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, selection:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v12, dismissValues:Landroid/content/ContentValues;
    sget-object v11, Lcom/android/calendar/alerts/SnoozeAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v11, v11, v19

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const/4 v11, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v12, v1, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x493e0

    add-long v9, v19, v21

    .line 80
    .local v9, alarmTime:J
    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/calendar/alerts/AlertUtils;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v18

    .line 82
    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v11, v9, v10}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    .line 86
    .end local v9           #alarmTime:J
    .end local v12           #dismissValues:Landroid/content/ContentValues;
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v16           #selection:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 88
    return-void
.end method
