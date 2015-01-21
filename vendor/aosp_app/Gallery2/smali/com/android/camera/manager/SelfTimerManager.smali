.class public Lcom/android/camera/manager/SelfTimerManager;
.super Ljava/lang/Object;
.source "SelfTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;
    }
.end annotation


# static fields
.field private static final MAX_DELEY_TIME:I = 0x2710

.field private static final MSG_SELFTIMER_TIMEOUT:I = 0x9

.field private static final SELF_TIMER_INTERVAL:I = 0xfa

.field private static final SELF_TIMER_SHORT_BOUND:I = 0x7d0

.field private static final SELF_TIMER_VOLUME:I = 0x64

.field private static final STATE_SELF_TIMER_COUNTING:I = 0x1

.field private static final STATE_SELF_TIMER_IDLE:I = 0x0

.field private static final STATE_SELF_TIMER_SNAP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelfTimerManager"

.field private static sLooper:Landroid/os/Looper;

.field private static sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLowStorageTag:Z

.field private mSelfTimerDuration:I

.field private mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

.field private mSelfTimerState:I

.field private mSelfTimerTone:Landroid/media/ToneGenerator;

.field private mTimeSelfTimerStart:J


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mLowStorageTag:Z

    .line 61
    sput-object p1, Lcom/android/camera/manager/SelfTimerManager;->sLooper:Landroid/os/Looper;

    .line 62
    new-instance v0, Lcom/android/camera/manager/SelfTimerManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/manager/SelfTimerManager$1;-><init>(Lcom/android/camera/manager/SelfTimerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Lcom/android/camera/manager/SelfTimerManager;->initSelfTimerTone()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/SelfTimerManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/manager/SelfTimerManager;->selfTimerTimeout()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;
    .locals 2
    .parameter "looper"

    .prologue
    .line 78
    const-class v1, Lcom/android/camera/manager/SelfTimerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/manager/SelfTimerManager;->sLooper:Landroid/os/Looper;

    if-eq v0, p0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Lcom/android/camera/manager/SelfTimerManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SelfTimerManager;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;

    .line 81
    :cond_1
    sget-object v0, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSelfTimerTone()V
    .locals 4

    .prologue
    .line 121
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "SelfTimerManager"

    const-string v2, "Exception caught while creating tone generator: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    sput-object v1, Lcom/android/camera/manager/SelfTimerManager;->sLooper:Landroid/os/Looper;

    .line 86
    sget-object v0, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;

    iget-object v0, v0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    sput-object v1, Lcom/android/camera/manager/SelfTimerManager;->sSelfTimerManager:Lcom/android/camera/manager/SelfTimerManager;

    .line 90
    :cond_0
    return-void
.end method

.method private declared-synchronized selfTimerStart()V
    .locals 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mLowStorageTag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mTimeSelfTimerStart:J

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    .line 137
    invoke-direct {p0}, Lcom/android/camera/manager/SelfTimerManager;->selfTimerTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized selfTimerStop()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    const-string v0, "SelfTimerManager"

    const-string v1, "selfTimerStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    .line 112
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;->onTimerStop()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized selfTimerTimeout()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x7d0

    const-wide/16 v6, 0x0

    .line 142
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/manager/SelfTimerManager;->mTimeSelfTimerStart:J

    sub-long v2, v8, v10

    .line 145
    .local v2, msDelta:J
    iget v8, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    int-to-long v8, v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_1

    iget v8, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    int-to-long v8, v8

    sub-long v4, v8, v2

    .line 148
    .local v4, msTimeLeft:J
    :goto_0
    cmp-long v8, v4, v12

    if-ltz v8, :cond_2

    .line 149
    sub-long v0, v4, v12

    .line 160
    .local v0, msDelay:J
    :goto_1
    iget-object v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    iget-object v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;

    const/16 v7, 0x9

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0           #msDelay:J
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .end local v4           #msTimeLeft:J
    :cond_1
    move-wide v4, v6

    .line 145
    goto :goto_0

    .line 150
    .restart local v4       #msTimeLeft:J
    :cond_2
    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 151
    const-wide/16 v0, 0xfa

    .restart local v0       #msDelay:J
    goto :goto_1

    .line 153
    .end local v0           #msDelay:J
    :cond_3
    const/4 v6, 0x2

    :try_start_1
    iput v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    .line 154
    iget-object v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    if-eqz v6, :cond_4

    .line 155
    iget-object v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    invoke-interface {v6}, Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;->onTimerTimeout()V

    .line 157
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 142
    .end local v2           #msDelta:J
    .end local v4           #msTimeLeft:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public declared-synchronized breakTimer()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    .line 170
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;->onTimerStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkSelfTimerMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 190
    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-nez v1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/camera/manager/SelfTimerManager;->selfTimerStart()V

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-eq v1, v0, :cond_0

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clerSelfTimerState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    if-eqz v1, :cond_1

    .line 98
    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-ne v1, v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/manager/SelfTimerManager;->selfTimerStop()V

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfTimerCounting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 204
    iget v1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfTimerEnabled()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseTone()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerTone:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 211
    :cond_0
    return-void
.end method

.method public setLowStorage(Z)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/camera/manager/SelfTimerManager;->mLowStorageTag:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/manager/SelfTimerManager;->breakTimer()V

    .line 179
    return-void
.end method

.method public setSelfTimerDuration(Ljava/lang/String;)V
    .locals 3
    .parameter "timeDelay"

    .prologue
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, delay:I
    if-ltz v0, :cond_0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid self timer delay"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    iput v0, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerDuration:I

    .line 187
    return-void
.end method

.method public setTimerListener(Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/manager/SelfTimerManager;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    .line 94
    return-void
.end method
