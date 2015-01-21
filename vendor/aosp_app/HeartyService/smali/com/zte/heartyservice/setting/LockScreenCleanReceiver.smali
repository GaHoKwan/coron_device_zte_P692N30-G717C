.class public Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenCleanReceiver.java"


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 20
    const-string v4, "lock_screen_clean_delay"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getIntSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 21
    .local v0, delay:I
    mul-int/lit8 v4, v0, 0xa

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v1, v4

    .line 23
    .local v1, delayMillis:J
    iget-object v4, p0, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_0

    .line 24
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.startService.CLEAN_APP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v3, targetIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 27
    .end local v3           #targetIntent:Landroid/content/Intent;
    :cond_0
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debug lock screen clean cancelTimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/zte/heartyservice/setting/TimerManager;->getInstance()Lcom/zte/heartyservice/setting/TimerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/setting/TimerManager;->cancelTimer(Landroid/app/PendingIntent;)V

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    const-string v4, "hs_lock_screen_clean"

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debug lock screen clean startTimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/zte/heartyservice/setting/TimerManager;->getInstance()Lcom/zte/heartyservice/setting/TimerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/zte/heartyservice/setting/TimerManager;->startTimer(Landroid/app/PendingIntent;JI)V

    goto :goto_0
.end method
