.class public Lcom/hf/manager/HFPackageManager;
.super Ljava/lang/Object;
.source "HFPackageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HFPackageManager"

.field private static sInstance:Lcom/hf/manager/HFPackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTimer:Ljava/util/Timer;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/manager/HFPackageManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/hf/manager/HFPackageManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hf/manager/HFPackageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/manager/HFPackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/hf/manager/HFPackageManager;->exit()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/manager/HFPackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/hf/manager/HFPackageManager;->clearCache()V

    return-void
.end method

.method private declared-synchronized clearCache()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    const-string v1, "HFPackageManager"

    const-string v2, "clearCache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/hf/manager/HFPackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 83
    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized exit()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    const-string v0, "HFPackageManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/hf/manager/HFPackageManager;->clearCache()V

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const-class v1, Lcom/hf/manager/HFPackageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/manager/HFPackageManager;->sInstance:Lcom/hf/manager/HFPackageManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/hf/manager/HFPackageManager;

    invoke-direct {v0, p0}, Lcom/hf/manager/HFPackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hf/manager/HFPackageManager;->sInstance:Lcom/hf/manager/HFPackageManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/hf/manager/HFPackageManager;->sInstance:Lcom/hf/manager/HFPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public activityIsRunning()Z
    .locals 9

    .prologue
    .line 97
    iget-object v7, p0, Lcom/hf/manager/HFPackageManager;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 98
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v5, 0x0

    .line 100
    .local v5, result:Z
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, forGroundActivity:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 103
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 116
    :goto_1
    return v5

    .line 104
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 105
    .local v6, task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, name:Ljava/lang/String;
    sget-boolean v7, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v7, :cond_1

    .line 108
    const-string v7, "isRun"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    const-string v7, "com.hf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    const/4 v5, 0x1

    .line 113
    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public exitFromActivity()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/hf/manager/HFPackageManager;->exit()V

    .line 44
    return-void
.end method

.method public exitFromReceiver(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTask:Ljava/util/TimerTask;

    .line 52
    :cond_0
    new-instance v0, Lcom/hf/manager/HFPackageManager$1;

    invoke-direct {v0, p0}, Lcom/hf/manager/HFPackageManager$1;-><init>(Lcom/hf/manager/HFPackageManager;)V

    iput-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTask:Ljava/util/TimerTask;

    .line 69
    iget-object v0, p0, Lcom/hf/manager/HFPackageManager;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/hf/manager/HFPackageManager;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 70
    return-void
.end method
