.class public abstract Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;
.super Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;
.source "AudioAgingServiceBase.java"


# static fields
.field protected static final PLAY_TIME:I = 0x82

.field private static final TAG:Ljava/lang/String; = "AudioAgingServiceBase"


# instance fields
.field protected audioManager:Landroid/media/AudioManager;

.field protected beginTime:Ljava/util/Date;

.field protected notificationManager:Landroid/app/NotificationManager;

.field protected playCount:I

.field protected wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->playCount:I

    return-void
.end method


# virtual methods
.method protected acquireWakeLock()V
    .locals 3

    .prologue
    .line 70
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 74
    return-void
.end method

.method protected getContentIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFailString()Ljava/lang/String;
.end method

.method protected abstract getSuccessString()Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const v4, 0x7f02000d

    .line 87
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->playCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->playCount:I

    .line 88
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 89
    .local v8, now:Ljava/util/Date;
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->beginTime:Ljava/util/Date;

    invoke-static {v0, v8}, Lcom/amoi/AmoiEngineerMode/util/TimeHelper;->compareHours(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v6

    .line 90
    .local v6, hours:J
    const-string v0, "EngineerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioAgingServiceBase begin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->beginTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; hours="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; playCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->playCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-wide/16 v2, 0x82

    cmp-long v0, v6, v2

    if-ltz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getSuccessString()Ljava/lang/String;

    move-result-object v1

    .local v1, success:Ljava/lang/String;
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 97
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->stopSelf()V

    .line 102
    .end local v1           #success:Ljava/lang/String;
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->onCreate()V

    .line 43
    const-string v0, "EngineerMode"

    const-string v1, "AudioAgingServiceBase onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->audioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->acquireWakeLock()V

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->notificationManager:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->onDestroy()V

    .line 65
    const-string v0, "EngineerMode"

    const-string v1, "AudioAgingServiceBase onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->releaseWakeLock()V

    .line 67
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const v4, 0x7f020006

    .line 108
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getFailString()Ljava/lang/String;

    move-result-object v1

    .local v1, fail:Ljava/lang/String;
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->initAudio()V

    .line 54
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->beginTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->beginTime:Ljava/util/Date;

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected releaseWakeLock()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    :cond_0
    return-void
.end method

.method protected showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 125
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p5, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 126
    .local v1, notification:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 128
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 129
    return-void
.end method
