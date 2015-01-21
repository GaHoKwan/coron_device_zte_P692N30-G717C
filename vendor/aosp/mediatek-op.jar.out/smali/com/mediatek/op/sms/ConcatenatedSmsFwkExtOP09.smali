.class public Lcom/mediatek/op/sms/ConcatenatedSmsFwkExtOP09;
.super Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;
.source "ConcatenatedSmsFwkExtOP09.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConcatenatedSmsFwkExtOP09"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;-><init>(Landroid/content/Context;I)V

    .line 73
    const-string v0, "ConcatenatedSmsFwkExtOP09"

    const-string v1, "call ConcatenatedSmsFwkExtOP09"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExtOP09;->registerAlarmManager()V

    .line 75
    return-void
.end method

.method private registerAlarmManager()V
    .locals 12

    .prologue
    .line 79
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.sms.ACTION_CLEAR_OUT_SEGMENTS"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "simId"

    iget v8, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExtOP09;->mSimId:I

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExtOP09;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x800

    invoke-static {v1, v8, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 84
    .local v6, operation:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    add-long v2, v8, v10

    .line 85
    .local v2, triggerAtTime:J
    const-wide/32 v4, 0x36ee80

    .line 86
    .local v4, intervalTime:J
    iget-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExtOP09;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 87
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 89
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V
    .locals 2
    .parameter "record"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v0, "ConcatenatedSmsFwkExtOP09"

    const-string v1, "call deleteExistedSegments"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
