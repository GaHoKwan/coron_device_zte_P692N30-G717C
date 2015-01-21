.class public Lcom/android/deskclock/stopwatch/StopwatchService;
.super Landroid/app/Service;
.source "StopwatchService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x7ffffffe


# instance fields
.field private mElapsedTime:J

.field private mLoadApp:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumLaps:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearSavedNotification()V
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 291
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    return-void
.end method

.method private closeNotificationShade()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private readFromSharedPrefs()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "sw_start_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 308
    const-string v1, "sw_accum_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 309
    const-string v1, "sw_lap_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 310
    return-void
.end method

.method private readLapsFromPrefs()[J
    .locals 12

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 315
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v9, "sw_lap_num"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 316
    .local v5, numLaps:I
    new-array v4, v5, [J

    .line 317
    .local v4, laps:[J
    const-wide/16 v7, 0x0

    .line 318
    .local v7, prevLapElapsedTime:J
    const/4 v3, 0x0

    .local v3, lap_i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, key:Ljava/lang/String;
    const-wide/16 v9, 0x0

    invoke-interface {v6, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 321
    .local v1, lap:J
    cmp-long v9, v1, v7

    if-nez v9, :cond_0

    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_0

    .line 322
    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 324
    :cond_0
    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    sub-long v10, v1, v7

    aput-wide v10, v4, v9

    .line 325
    move-wide v7, v1

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #lap:J
    :cond_1
    return-object v4
.end method

.method private saveNotification(JZI)V
    .locals 7
    .parameter "clockTime"
    .parameter "clockRunning"
    .parameter "numLaps"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 252
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_0

    .line 254
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v2, "notif_clock_running"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 262
    :goto_0
    const-string v2, "sw_update_circle"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    return-void

    .line 258
    :cond_0
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setNotification(JZI)V
    .locals 16
    .parameter "clockBaseTime"
    .parameter "clockRunning"
    .parameter "numLaps"

    .prologue
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 155
    .local v8, context:Landroid/content/Context;
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/DeskClock;

    invoke-direct {v10, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v10, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v3, "deskclock.select.tab"

    const/4 v4, 0x2

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const/4 v3, 0x2

    const/high16 v4, 0x4800

    invoke-static {v8, v3, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 164
    .local v14, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040022

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v1, remoteViewsCollapsed:Landroid/widget/RemoteViews;
    const v3, 0x7f0e0066

    invoke-virtual {v1, v3, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    const v2, 0x7f0e0069

    const/4 v5, 0x0

    move-wide/from16 v3, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 169
    const v3, 0x7f0e0067

    const v4, 0x7f020082

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 170
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040023

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v2, remoteViewsExpanded:Landroid/widget/RemoteViews;
    const v3, 0x7f0e006b

    invoke-virtual {v2, v3, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 173
    const v3, 0x7f0e006c

    const/4 v6, 0x0

    move-wide/from16 v4, p1

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 175
    const v3, 0x7f0e0067

    const v4, 0x7f020082

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 177
    if-eqz p3, :cond_1

    .line 179
    const v3, 0x7f0e006e

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 181
    new-instance v12, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v12, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v12, leftButtonIntent:Landroid/content/Intent;
    const-string v3, "lap_stopwatch"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const v3, 0x7f0e006e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v4, v12, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 185
    const v3, 0x7f0e006e

    const v4, 0x7f02005b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 188
    const v3, 0x7f0e006f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v15, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v15, rightButtonIntent:Landroid/content/Intent;
    const-string v3, "stop_stopwatch"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const v3, 0x7f0e006f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v4, v15, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 194
    const v3, 0x7f0e006f

    const v4, 0x7f02005e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 197
    if-lez p4, :cond_0

    .line 198
    const v3, 0x7f0d0068

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, lapText:Ljava/lang/String;
    const v3, 0x7f0e006a

    invoke-virtual {v1, v3, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    const v3, 0x7f0e006a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v3, 0x7f0e006d

    invoke-virtual {v2, v3, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    const v3, 0x7f0e006d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    .end local v11           #lapText:Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v9, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v9, dismissIntent:Landroid/content/Intent;
    const-string v3, "reset_stopwatch"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v4, v9, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 244
    .local v13, notification:Landroid/app/Notification;
    iput-object v2, v13, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v4, 0x7ffffffe

    invoke-virtual {v3, v4, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    return-void

    .line 205
    .end local v9           #dismissIntent:Landroid/content/Intent;
    .end local v13           #notification:Landroid/app/Notification;
    :cond_0
    const v3, 0x7f0e006a

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    const v3, 0x7f0e006d

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 210
    .end local v12           #leftButtonIntent:Landroid/content/Intent;
    .end local v15           #rightButtonIntent:Landroid/content/Intent;
    :cond_1
    const v3, 0x7f0e006e

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    new-instance v12, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v12, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v12       #leftButtonIntent:Landroid/content/Intent;
    const-string v3, "reset_and_launch_stopwatch"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const v3, 0x7f0e006e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v4, v12, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 216
    const v3, 0x7f0e006e

    const v4, 0x7f02005c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 219
    const v3, 0x7f0e006f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v15, v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .restart local v15       #rightButtonIntent:Landroid/content/Intent;
    const-string v3, "start_stopwatch"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const v3, 0x7f0e006f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v4, v15, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 225
    const v3, 0x7f0e006f

    const v4, 0x7f02005d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 228
    const v3, 0x7f0e006a

    const v4, 0x7f0d0086

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 229
    const v3, 0x7f0e006a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 230
    const v3, 0x7f0e006d

    const v4, 0x7f0d0086

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    const v3, 0x7f0e006d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 237
    .restart local v9       #dismissIntent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private showSavedNotification()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    .line 268
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 270
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v8, "notif_clock_base"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 271
    .local v0, clockBaseTime:J
    const-string v8, "notif_clock_elapsed"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 272
    .local v2, clockElapsedTime:J
    const-string v8, "notif_clock_running"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 273
    .local v4, clockRunning:Z
    const-string v8, "sw_lap_num"

    const/4 v9, -0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 274
    .local v5, numLaps:I
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    .line 275
    cmp-long v8, v2, v10

    if-nez v8, :cond_0

    .line 285
    :goto_0
    return v7

    .line 280
    :cond_0
    iput-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 281
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 284
    :cond_1
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 285
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private writeSharedPrefsLap(JZ)V
    .locals 14
    .parameter "lapTimeElapsed"
    .parameter "updateCircle"

    .prologue
    .line 387
    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 388
    if-eqz p3, :cond_0

    .line 389
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 390
    .local v12, time:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 392
    .local v11, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 393
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v9

    .line 394
    .local v9, laps:[J
    array-length v10, v9

    .line 395
    .local v10, numLaps:I
    const/4 v0, 0x1

    aget-wide v7, v9, v0

    .line 396
    .local v7, lapTime:J
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 397
    const-string v0, "sw_ctv_interval"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 401
    :goto_0
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 402
    const/16 v0, 0x63

    if-ge v10, v0, :cond_2

    .line 403
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #lapTime:J
    .end local v9           #laps:[J
    .end local v10           #numLaps:I
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #time:J
    :cond_0
    return-void

    .line 399
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #lapTime:J
    .restart local v9       #laps:[J
    .restart local v10       #numLaps:I
    .restart local v11       #prefs:Landroid/content/SharedPreferences;
    .restart local v12       #time:J
    :cond_1
    const-string v0, "sw_ctv_marker_time"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 406
    :cond_2
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private writeSharedPrefsReset(Z)V
    .locals 6
    .parameter "updateCircle"

    .prologue
    const/4 v1, 0x0

    .line 433
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 434
    return-void
.end method

.method private writeSharedPrefsStarted(JZ)V
    .locals 12
    .parameter "startTime"
    .parameter "updateCircle"

    .prologue
    .line 368
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 369
    if-eqz p3, :cond_0

    .line 370
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    .line 371
    .local v10, time:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 373
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 375
    .local v7, intervalStartTime:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 376
    move-wide v7, v10

    .line 377
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 378
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #intervalStartTime:J
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    .end local v10           #time:J
    :cond_0
    return-void
.end method

.method private writeSharedPrefsStopped(JZ)V
    .locals 14
    .parameter "elapsedTime"
    .parameter "updateCircle"

    .prologue
    .line 413
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 414
    if-eqz p3, :cond_0

    .line 415
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 416
    .local v12, time:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 418
    .local v11, prefs:Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 420
    .local v6, accumulatedTime:J
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 422
    .local v9, intervalStartTime:J
    sub-long v0, v12, v9

    add-long/2addr v6, v0

    .line 423
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 424
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_accum_time"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v0, "sw_ctv_current_interval"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    .end local v6           #accumulatedTime:J
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #intervalStartTime:J
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #time:J
    :cond_0
    return-void
.end method

.method private writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 9
    .parameter "startTime"
    .parameter "lapTimeElapsed"
    .parameter "elapsedTime"
    .parameter "state"
    .parameter "updateCircle"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 334
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 336
    const-string v3, "sw_start_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 339
    :cond_0
    if-eqz p2, :cond_2

    .line 340
    const-string v3, "sw_lap_num"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, numLaps:I
    if-nez v1, :cond_1

    .line 342
    iget v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 343
    add-int/lit8 v1, v1, 0x1

    .line 345
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 346
    add-int/lit8 v1, v1, 0x1

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v3, "sw_lap_num"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    .end local v1           #numLaps:I
    :cond_2
    if-eqz p3, :cond_3

    .line 351
    const-string v3, "sw_accum_time"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 354
    :cond_3
    if-eqz p4, :cond_4

    .line 355
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    .line 356
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 363
    :cond_4
    :goto_0
    const-string v3, "sw_update_circle"

    invoke-interface {v0, v3, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    return-void

    .line 357
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 358
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 359
    :cond_6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 360
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 48
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 49
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 50
    iput-boolean v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 51
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 138
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 139
    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 140
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 141
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 142
    iget-boolean v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, activityIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 148
    iput-boolean v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 150
    .end local v0           #activityIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v9, 0x2

    .line 132
    :goto_0
    return v9

    .line 60
    :cond_0
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    if-nez v9, :cond_2

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readFromSharedPrefs()V

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, actionType:Ljava/lang/String;
    const-string v9, "message_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    .local v0, actionTime:J
    const-string v9, "show_notification"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 68
    .local v7, showNotif:Z
    move v8, v7

    .line 69
    .local v8, updateCircle:Z
    const-string v9, "start_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 70
    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 71
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStarted(JZ)V

    .line 72
    if-eqz v7, :cond_4

    .line 73
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 132
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 75
    :cond_4
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 77
    :cond_5
    const-string v9, "lap_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 78
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 79
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    const/16 v10, 0x63

    if-gt v9, v10, :cond_7

    .line 80
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    add-long v4, v9, v11

    .line 81
    .local v4, lapTimeElapsed:J
    invoke-direct {p0, v4, v5, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsLap(JZ)V

    .line 82
    if-eqz v7, :cond_6

    .line 83
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 85
    :cond_6
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 88
    .end local v4           #lapTimeElapsed:J
    :cond_7
    const/16 v9, 0x63

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    goto :goto_1

    .line 90
    :cond_8
    const-string v9, "stop_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 91
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v11, v0, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 92
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStopped(JZ)V

    .line 93
    if-eqz v7, :cond_9

    .line 94
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long v9, v0, v9

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 96
    :cond_9
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 98
    :cond_a
    const-string v9, "reset_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 99
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 100
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 101
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 102
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 103
    :cond_b
    const-string v9, "reset_and_launch_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 104
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 105
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 107
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 109
    :cond_c
    const-string v9, "share_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 110
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 111
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, shareIntent:Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/stopwatch/Stopwatches;->getShareTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;J[J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 118
    .local v3, chooserIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 120
    .end local v3           #chooserIntent:Landroid/content/Intent;
    .end local v6           #shareIntent:Landroid/content/Intent;
    :cond_d
    const-string v9, "show_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 123
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->showSavedNotification()Z

    move-result v9

    if-nez v9, :cond_3

    .line 124
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 126
    :cond_e
    const-string v9, "kill_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v10, 0x7ffffffe

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
