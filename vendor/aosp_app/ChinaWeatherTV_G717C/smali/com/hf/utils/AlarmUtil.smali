.class public Lcom/hf/utils/AlarmUtil;
.super Ljava/lang/Object;
.source "AlarmUtil.java"


# static fields
.field public static final AM_ALARM_ID:I = 0x2714

.field public static final PM_ALARM_ID:I = 0x2715

.field public static final QUERY_WARNING_TIME:I = 0x36ee80

.field private static final TAG:Ljava/lang/String; = "AlarmUtil"

.field public static final TRAFFIC_ALARM_ID:I = 0x2713

.field public static final WARN_ALARM_ID:I = 0x2711

.field public static final WEATHER_ALARM_ID:I = 0x2712

.field private static sInstance:Lcom/hf/utils/AlarmUtil;


# instance fields
.field private mAlarmThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mInterval:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/utils/AlarmUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/hf/utils/AlarmUtil;->closeWarningAlarm()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/utils/AlarmUtil;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/hf/utils/AlarmUtil;->mInterval:J

    return-void
.end method

.method static synthetic access$3(Lcom/hf/utils/AlarmUtil;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/hf/utils/AlarmUtil;->mInterval:J

    return-wide v0
.end method

.method private closeWarningAlarm()V
    .locals 6

    .prologue
    .line 68
    iget-object v3, p0, Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.hf.QUERY_WARNING"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v3, p0, Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;

    const/16 v4, 0x2711

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 73
    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const-class v1, Lcom/hf/utils/AlarmUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/utils/AlarmUtil;->sInstance:Lcom/hf/utils/AlarmUtil;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/hf/utils/AlarmUtil;

    invoke-direct {v0, p0}, Lcom/hf/utils/AlarmUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hf/utils/AlarmUtil;->sInstance:Lcom/hf/utils/AlarmUtil;

    .line 39
    :cond_0
    sget-object v0, Lcom/hf/utils/AlarmUtil;->sInstance:Lcom/hf/utils/AlarmUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setTrafficAlarm()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/utils/AlarmUtil$1;

    invoke-direct {v1, p0}, Lcom/hf/utils/AlarmUtil$1;-><init>(Lcom/hf/utils/AlarmUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method

.method public setUpdateWeatherAMAlarm()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/utils/AlarmUtil$3;

    invoke-direct {v1, p0}, Lcom/hf/utils/AlarmUtil$3;-><init>(Lcom/hf/utils/AlarmUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method public setUpdateWeatherAlarm()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hf/utils/AlarmUtil;->mAlarmThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/utils/AlarmUtil;->mAlarmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/utils/AlarmUtil$5;

    invoke-direct {v1, p0}, Lcom/hf/utils/AlarmUtil$5;-><init>(Lcom/hf/utils/AlarmUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hf/utils/AlarmUtil;->mAlarmThread:Ljava/lang/Thread;

    .line 231
    iget-object v0, p0, Lcom/hf/utils/AlarmUtil;->mAlarmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setUpdateWeatherPMAlarm()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/utils/AlarmUtil$4;

    invoke-direct {v1, p0}, Lcom/hf/utils/AlarmUtil$4;-><init>(Lcom/hf/utils/AlarmUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public setWarningAlarm()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/utils/AlarmUtil$2;

    invoke-direct {v1, p0}, Lcom/hf/utils/AlarmUtil$2;-><init>(Lcom/hf/utils/AlarmUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method
