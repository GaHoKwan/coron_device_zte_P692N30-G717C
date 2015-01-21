.class final Lcom/zte/heartyservice/privacy/PrivacySetting$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacySetting;->checkBackupNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 235
    if-nez p2, :cond_1

    .line 236
    const-string v10, "PrivacySetting"

    const-string v11, "onReceive: intent == null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, action:Ljava/lang/String;
    const-string v10, "PrivacySetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive: action:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v10, "com.zte.heartyservice.PRIVACY_BACKUP_AUTO_NOTICE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isPrivacyBackupSupport()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnablePrivacyBackupNotice()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 245
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getLastNoticeTime()J

    move-result-wide v6

    .line 246
    .local v6, lastNoticeTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    .local v2, currentTime:J
    sub-long v10, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide v12, 0x9a7ec800L

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 252
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/zte/heartyservice/privacy/PasswordSetting;->checkData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 267
    .local v1, appContext:Landroid/content/Context;
    const-string v10, "notification"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 269
    .local v9, notificationManager:Landroid/app/NotificationManager;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.zte.backup.action.privacy"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v5, i:Landroid/content/Intent;
    const-string v10, "startType"

    const-string v11, "backupPrivacy"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f020017

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f0a0671

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f0a0671

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 287
    .local v8, notification:Landroid/app/Notification;
    iget-object v10, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v11, 0x1020016

    const-string v12, "setSingleLine"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 290
    const v10, 0x7f0201ac

    iput v10, v8, Landroid/app/Notification;->icon:I

    .line 291
    const-string v10, "com.zte.heartyservice.PRIVACY_BACKUP_AUTO_NOTICE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 294
    invoke-static {v2, v3}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setLastNoticeTime(J)V

    goto/16 :goto_0

    .line 260
    .end local v1           #appContext:Landroid/content/Context;
    .end local v5           #i:Landroid/content/Intent;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v4

    .line 261
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
