.class public Lcom/mediatek/mtklogger/framework/MTKLoggerService;
.super Landroid/app/Service;
.source "MTKLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKLogger/MTKLoggerService"

.field public static isInIPOShutdown:Z

.field private static isStarted:Z

.field private static isWaitingSDReady:Z

.field private static mNM:Landroid/app/NotificationManager;


# instance fields
.field private failReasonStr:Ljava/lang/String;

.field public mBind:Lcom/mediatek/mtklogger/IMTKLoggerManager$Stub;

.field private mCachedStartStopCmd:I

.field private mCurrentAffectedLogType:I

.field private mCurrentLogPathType:Ljava/lang/String;

.field private mCurrentRecordingLogPath:Ljava/lang/String;

.field private mCurrentRunningStatus:I

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mGlobalRunningStage:I

.field private mIPOIntentFilter:Landroid/content/IntentFilter;

.field private mIPOReceiver:Landroid/content/BroadcastReceiver;

.field private mLogFolderMonitorThreadStopFlag:Z

.field private mLogInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/mtklogger/framework/LogInstance;",
            ">;"
        }
    .end annotation
.end field

.field mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

.field private mNativeStateHandler:Landroid/os/Handler;

.field private mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

.field private mRemainingStorage:I

.field private mSDStatusIntentFilter:Landroid/content/IntentFilter;

.field private mServiceStartType:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStarted:Z

    .line 63
    sput-boolean v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    .line 78
    sput-boolean v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isInIPOShutdown:Z

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogInstanceMap:Landroid/util/SparseArray;

    .line 46
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mGlobalRunningStage:I

    .line 88
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    .line 101
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    .line 108
    iput v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    .line 393
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    .line 394
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

    .line 395
    new-instance v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$1;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    new-instance v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$2;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$3;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    iput v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    .line 768
    iput v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    .line 776
    iput v2, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    .line 779
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    .line 785
    new-instance v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$4;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    .line 1005
    new-instance v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService$5;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$5;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mBind:Lcom/mediatek/mtklogger/IMTKLoggerManager$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->checkRemainingStorage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/mtklogger/framework/MTKLoggerService;I)Lcom/mediatek/mtklogger/framework/LogInstance;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleLogStateChangeMsg(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleGlobalRunningStageChange(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->beginTagLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getGlobalRunningStage()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/framework/MTKLoggerService;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    return p0
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStorageReady()Z

    move-result v0

    return v0
.end method

.method private beginTagLog()Z
    .locals 3

    .prologue
    .line 980
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "-->beginTagLog()"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 982
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "path"

    const-string v2, "SaveLogManually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    invoke-static {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->beginTag(Landroid/content/Intent;)V

    .line 984
    const/4 v1, 0x1

    return v1
.end method

.method private changeLogRunningStatus(ZLjava/lang/String;)V
    .locals 13
    .parameter "enable"
    .parameter "reason"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 524
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-->changeLogRunningStatus(), enable?"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", reason=["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v7, :cond_1

    .line 526
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "SharedPreference instance is null"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const/4 v0, 0x0

    .line 531
    .local v0, affectedLog:I
    if-eqz p1, :cond_7

    .line 534
    const-string v7, "boot"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ipo"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 535
    :cond_2
    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 536
    .local v4, logType:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v9, v7, :cond_3

    .line 543
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    .line 546
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #logType:Ljava/lang/Integer;
    :cond_4
    const-string v7, "storage_recovery"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 547
    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 548
    .restart local v4       #logType:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 550
    .local v5, needRecovery:Z
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For log["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], needRecovery?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 556
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    .line 557
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 563
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #logType:Ljava/lang/Integer;
    .end local v5           #needRecovery:Z
    :cond_6
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " affectedLog="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-lez v0, :cond_0

    .line 565
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->startRecording(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 568
    :cond_7
    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 569
    .restart local v4       #logType:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v9, v7, :cond_a

    move v3, v9

    .line 571
    .local v3, isRunning:Z
    :goto_4
    iget-object v11, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v11, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v9, v7, :cond_b

    move v6, v9

    .line 575
    .local v6, shouldAutoStarted:Z
    :goto_5
    if-nez v3, :cond_9

    if-eqz v6, :cond_8

    const-string v7, "sd_timeout"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 578
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    const-string v7, "sd_timeout"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 579
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "log_mode"

    const-string v11, "2"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, currentMDLogMode:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 581
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "For USB mode modem log, ignore SD timeout event."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v1           #currentMDLogMode:Ljava/lang/String;
    .end local v3           #isRunning:Z
    .end local v6           #shouldAutoStarted:Z
    :cond_a
    move v3, v10

    .line 569
    goto :goto_4

    .restart local v3       #isRunning:Z
    :cond_b
    move v6, v10

    .line 571
    goto :goto_5

    .line 585
    .restart local v6       #shouldAutoStarted:Z
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    .line 586
    if-eqz v3, :cond_8

    const-string v7, "storage_full_or_lost"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 589
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 594
    .end local v3           #isRunning:Z
    .end local v4           #logType:Ljava/lang/Integer;
    .end local v6           #shouldAutoStarted:Z
    :cond_d
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " affectedLog="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    if-lez v0, :cond_0

    .line 596
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->stopRecording(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private checkRemainingStorage()V
    .locals 10

    .prologue
    const v9, 0x7f070009

    const/4 v8, 0x0

    const v7, 0x7f020006

    const/16 v5, 0x1e

    .line 663
    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/mtklogger/utils/Utils;->getAvailableStorageSize(Ljava/lang/String;)I

    move-result v3

    .line 666
    .local v3, remainingSize:I
    if-ge v3, v5, :cond_3

    iget v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    if-lt v4, v5, :cond_3

    .line 668
    :cond_0
    const-string v4, "MTKLogger/MTKLoggerService"

    const-string v5, "Remaining log storage drop below water level, give a notification now"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    if-nez v4, :cond_1

    .line 670
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    sput-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    .line 672
    :cond_1
    const-string v4, "MTKLogger/MTKLoggerService"

    const-string v5, "Log storage drop down below water level, give out a notification"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 675
    .local v1, notification:Landroid/app/Notification;
    iput v7, v1, Landroid/app/Notification;->icon:I

    .line 676
    invoke-virtual {p0, v9}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v0, backIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.mediatek.mtklogger"

    const-string v6, "com.mediatek.mtklogger.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 679
    const/high16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 680
    const-string v4, "reason_start"

    const-string v5, "low_storage"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 683
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, v9}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, p0, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 685
    sget-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v4, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 699
    .end local v0           #backIntent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    :goto_0
    iput v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    .line 700
    return-void

    .line 691
    :cond_3
    iget v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    if-ge v4, v5, :cond_2

    if-lt v3, v5, :cond_2

    .line 693
    sget-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    if-nez v4, :cond_4

    .line 694
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    sput-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    .line 696
    :cond_4
    const-string v4, "MTKLogger/MTKLoggerService"

    const-string v5, "Log storage resume upto water level, clear former notification"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    sget-object v4, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private dealWithAdbCommand(ILjava/lang/String;)V
    .locals 8
    .parameter "logTypeCluster"
    .parameter "command"

    .prologue
    .line 703
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->dealWithAdbCommand(), logTypeCluster="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", command="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v5, "start"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 705
    const-string v5, "adb"

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->startRecording(ILjava/lang/String;)Z

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const-string v5, "stop"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 707
    const-string v5, "adb"

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->stopRecording(ILjava/lang/String;)Z

    goto :goto_0

    .line 708
    :cond_2
    if-eqz p2, :cond_6

    const-string v5, "set_auto_start_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 709
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, newValue:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 711
    :cond_3
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 712
    .local v3, logType:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_4

    .line 715
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->setLogAutoStart(IZ)Z

    goto :goto_1

    .line 720
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #logType:Ljava/lang/Integer;
    :cond_5
    const-string v5, "MTKLogger/MTKLoggerService"

    const-string v6, "Unsupported auto start value"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v4           #newValue:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 725
    .local v3, logType:I
    and-int v5, v3, p1

    if-eqz v5, :cond_7

    .line 729
    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v2

    .line 730
    .local v2, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v2, :cond_9

    .line 731
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send adb command ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to log "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, v2, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 733
    .local v0, handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    if-eqz v0, :cond_8

    .line 734
    const/16 v5, 0x8

    invoke-virtual {v0, v5, p2}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 736
    :cond_8
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "When dealWithAdbCommand(), fail to get log instance handler of log ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 740
    .end local v0           #handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    :cond_9
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get log instance("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when dealing with adb command"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private getGlobalRunningStage()I
    .locals 9

    .prologue
    .line 905
    iget v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mGlobalRunningStage:I

    .line 906
    .local v3, stage:I
    const/4 v5, 0x0

    .line 907
    .local v5, type:I
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 908
    .local v2, logType:I
    invoke-direct {p0, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v1

    .line 909
    .local v1, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/LogInstance;->getGlobalRunningStage()I

    move-result v4

    .line 911
    .local v4, subStage:I
    if-le v4, v3, :cond_0

    .line 912
    move v5, v2

    .line 913
    move v3, v4

    goto :goto_0

    .line 917
    .end local v1           #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    .end local v2           #logType:I
    .end local v4           #subStage:I
    :cond_1
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<--getGlobalRunningStage(), current stage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return v3
.end method

.method private getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;
    .locals 2
    .parameter "logType"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    invoke-static {p1, p0, v1}, Lcom/mediatek/mtklogger/framework/LogInstance;->getInstance(ILandroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v0

    .line 1281
    .local v0, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v0, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1285
    .end local v0           #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/framework/LogInstance;

    return-object v1
.end method

.method private handleGlobalRunningStageChange(I)V
    .locals 4
    .parameter "stageEvent"

    .prologue
    .line 898
    const-string v1, "MTKLogger/MTKLoggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->handleGlobalRunningStageChange(), stageEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 1:start; 2:stop; 3:polling; 4:polling done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "stage_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    return-void
.end method

.method private handleLogStateChangeMsg(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 9
    .parameter "handler"
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 819
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->handleLogStateChangeMsg(), mCachedStartStopCmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget v4, p2, Landroid/os/Message;->what:I

    .line 823
    .local v4, what:I
    const/16 v5, 0x3e8

    if-le v4, v5, :cond_4

    .line 824
    add-int/lit16 v1, v4, -0x3e8

    .line 826
    .local v1, logType:I
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 827
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    xor-int/2addr v5, v1

    iput v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    .line 864
    :cond_0
    :goto_0
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    if-nez v5, :cond_2

    .line 865
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Notify other modules current state with broadcast. mCurrentAffectedLogType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentRunningStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", failReasonStr=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "affected_log_type"

    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v5, "log_new_state"

    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 872
    const-string v5, "fail_reason"

    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 876
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateStartRecordingTime()V

    .line 878
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogFolderMonitor()V

    .line 880
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 881
    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    .line 887
    :goto_1
    iput v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    .line 888
    iput v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    .line 889
    const-string v5, ""

    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    .line 890
    iput v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mGlobalRunningStage:I

    .line 892
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #logType:I
    :cond_2
    :goto_2
    return-void

    .line 830
    .restart local v1       #logType:I
    :cond_3
    const-string v5, "MTKLogger/MTKLoggerService"

    const-string v6, "Attention: timeout message should have been removed."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    .end local v1           #logType:I
    :cond_4
    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 833
    iget v1, p2, Landroid/os/Message;->arg1:I

    .line 834
    .restart local v1       #logType:I
    iget v3, p2, Landroid/os/Message;->arg2:I

    .line 835
    .local v3, result:I
    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 836
    .local v2, reason:Ljava/lang/Object;
    const-string v5, "MTKLogger/MTKLoggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " MSG_LOG_STATE_CHANGED, logType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    if-eqz v2, :cond_5

    const-string v6, ""

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v2, Ljava/lang/String;

    .end local v2           #reason:Ljava/lang/Object;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->failReasonStr:Ljava/lang/String;

    .line 840
    :cond_5
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_6

    .line 841
    const-string v5, "MTKLogger/MTKLoggerService"

    const-string v6, "Still waiting start/stop command response, mark it as finished."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    xor-int/2addr v5, v1

    iput v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    .line 844
    add-int/lit16 v5, v1, 0x3e8

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    :goto_3
    if-lez v3, :cond_7

    .line 851
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    goto/16 :goto_0

    .line 846
    :cond_6
    const-string v5, "MTKLogger/MTKLoggerService"

    const-string v6, "No cached start/stop command for this log, treat it as self change"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    or-int/2addr v5, v1

    iput v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    goto :goto_3

    .line 853
    :cond_7
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_0

    .line 854
    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    xor-int/2addr v5, v1

    iput v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    goto/16 :goto_0

    .line 858
    .end local v1           #logType:I
    .end local v3           #result:I
    :cond_8
    const-string v5, "MTKLogger/MTKLoggerService"

    const-string v6, "Unknown message"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 883
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #logType:I
    :cond_9
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private isAnyLogRunning()Z
    .locals 7

    .prologue
    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, isRunning:Z
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 964
    .local v2, logType:Ljava/lang/Integer;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 966
    const/4 v1, 0x1

    .line 970
    .end local v2           #logType:Ljava/lang/Integer;
    :cond_1
    const-string v3, "MTKLogger/MTKLoggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<--isAnyLogRunning()? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    return v1
.end method

.method private isStorageReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 607
    const-string v2, "/data"

    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "For phone internal storage, assume it\'s already ready"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 611
    :cond_1
    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentVolumeState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLogFolderMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z

    move-result v0

    .line 363
    .local v0, isLogRunning:Z
    const-string v1, "MTKLogger/MTKLoggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->updateLogFolderMonitor(), isLogRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLogFolderMonitorThreadStopFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    if-eqz v1, :cond_1

    .line 366
    new-instance v1, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;-><init>(Lcom/mediatek/mtklogger/framework/MTKLoggerService;)V

    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    .line 367
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->start()V

    .line 368
    iput-boolean v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    .line 369
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "Log is running, so start monitor log folder"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    if-nez v1, :cond_0

    .line 371
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "Log is stopped, so need to stop log folder monitor if any exist."

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    .line 373
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;->interrupt()V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mMonitorLogFolderThread:Lcom/mediatek/mtklogger/framework/MTKLoggerService$LogFolderMonitor;

    .line 379
    :cond_2
    sget-object v1, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    if-nez v1, :cond_3

    .line 380
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    .line 382
    :cond_3
    sget-object v1, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNM:Landroid/app/NotificationManager;

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 383
    iput v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mRemainingStorage:I

    goto :goto_0
.end method

.method private updateLogStatus()V
    .locals 15

    .prologue
    const/16 v14, 0x9

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 296
    const-string v9, "MTKLogger/MTKLoggerService"

    const-string v10, "-->updateLogStatus()"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v2, Lcom/mediatek/mtklogger/framework/LogInstance;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/framework/LogInstance;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "md_assert_file_path"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, assertFileStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 302
    .local v8, needReconnectModemLog:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 303
    const-string v9, "MTKLogger/MTKLoggerService"

    const-string v10, " Modem assert file path is not null, need to re-show assert dialog"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v8, 0x1

    .line 306
    :cond_0
    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 307
    .local v6, logType:Ljava/lang/Integer;
    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, key:Ljava/lang/String;
    const-string v9, "0"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, nativeStatus:Ljava/lang/String;
    const-string v9, "MTKLogger/MTKLoggerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Native log("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") running status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 311
    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v10, v9, v13}, Lcom/mediatek/mtklogger/framework/LogInstance;->updateStatusBar(IIZ)V

    .line 314
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v5

    .line 315
    .local v5, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    iget-object v9, v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    if-eqz v9, :cond_2

    .line 316
    iget-object v9, v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-virtual {v9, v14}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 318
    :cond_2
    const-string v9, "MTKLogger/MTKLoggerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "When updateLogStatus(), fail to get log instance handler of log ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v5           #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    :cond_3
    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v10, v9, v12}, Lcom/mediatek/mtklogger/framework/LogInstance;->updateStatusBar(IIZ)V

    .line 325
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    if-eqz v8, :cond_1

    .line 327
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v5

    .line 328
    .restart local v5       #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    iget-object v9, v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    if-eqz v9, :cond_4

    .line 329
    iget-object v9, v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-virtual {v9, v14}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 331
    :cond_4
    const-string v9, "MTKLogger/MTKLoggerService"

    const-string v10, "When try to reconnect to modem log, fail to get log instance handler"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    .end local v6           #logType:Ljava/lang/Integer;
    .end local v7           #nativeStatus:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 342
    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    .line 347
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogFolderMonitor()V

    .line 349
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateStartRecordingTime()V

    .line 352
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    return-void

    .line 344
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRecordingLogPath:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateStartRecordingTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 936
    const-string v3, "MTKLogger/MTKLoggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->updateStartRecordingTime(), mCurrentRunningStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    if-nez v3, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isAnyLogRunning()Z

    move-result v2

    .line 939
    .local v2, isLogRunning:Z
    if-nez v2, :cond_0

    .line 940
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "begin_recording_time"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 955
    .end local v2           #isLogRunning:Z
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "begin_recording_time"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 946
    .local v0, currentRecordingTime:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 947
    const-string v3, "MTKLogger/MTKLoggerService"

    const-string v4, "Former log start time is 0, set to current system time."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "begin_recording_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "system_time_reset"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public getLogInstanceRunningStatus(I)I
    .locals 5
    .parameter "logType"

    .prologue
    .line 922
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->getLogInstanceRunningStatus(), logType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v0

    .line 924
    .local v0, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    const/4 v1, -0x1

    .line 925
    .local v1, status:I
    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/LogInstance;->getLogRunningStatus()I

    move-result v1

    .line 928
    :cond_0
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<--getLogInstanceRunningStatus(), status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 389
    const-string v0, "MTKLogger/MTKLoggerService"

    const-string v1, "-->onBind()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mBind:Lcom/mediatek/mtklogger/IMTKLoggerManager$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    const-string v3, "MTKLogger/MTKLoggerService"

    const-string v4, "-->onCreate()"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    const-string v3, "log_settings"

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 117
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    .line 118
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSDStatusIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mPhoneStorageIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOIntentFilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentLogPathType:Ljava/lang/String;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v1, userFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    sput-boolean v5, Lcom/mediatek/mtklogger/framework/LogReceiver;->canKillSelf:Z

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 149
    .local v2, versionName:Ljava/lang/String;
    const-string v3, "MTKLogger/MTKLoggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2           #versionName:Ljava/lang/String;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MTKLogger/MTKLoggerService"

    const-string v4, "Fail to get application version name."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 276
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "-->onDestroy()"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "ro.monkey"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, isMonkeyRunning:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-string v1, "MTKLogger/MTKLoggerService"

    const-string v2, "Monkey is running, MTKLoggerService destroy failed!"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mIPOReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mLogFolderMonitorThreadStopFlag:Z

    .line 288
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 157
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->onStartCommand(), isStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStarted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", old mServiceStartType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p1, :cond_9

    .line 159
    const-string v7, "startup_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    .line 160
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " new mServiceStartType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    sget-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStarted:Z

    if-eqz v7, :cond_0

    const-string v7, "boot"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ipo"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 170
    :cond_0
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MTKLoggerService.onStartCommand mServiceStartType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", thread name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "debug.mtklog.init.flag"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, initFlag:Ljava/lang/String;
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Current init flag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 176
    const-string v7, "setprop debug.mtklog.init.flag 1"

    invoke-virtual {p0, v7}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->runShellCommand(Ljava/lang/String;)Z

    .line 177
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "At first init time, set log init flag to 1"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogStatus()V

    .line 185
    const-string v7, "boot"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ipo"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 188
    :cond_2
    const/4 v7, 0x0

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isInIPOShutdown:Z

    .line 189
    sget-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStarted:Z

    if-eqz v7, :cond_3

    .line 190
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "Before receive boot completed broadcast, service already been started up."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    const-string v7, "debug.mtk.aee.db"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, rebootFlag:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "2:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 201
    :cond_4
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "mobilelog_enable"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 203
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "mobilelog_enable"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStorageReady()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 209
    const/4 v7, 0x0

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    .line 211
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V

    .line 238
    .end local v5           #rebootFlag:Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStarted:Z

    .line 241
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "Service is first started, check whether need to resume TagLog process"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->resumeTag()V

    .line 246
    .end local v3           #initFlag:Ljava/lang/String;
    :cond_7
    sget-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    if-nez v7, :cond_d

    const-string v7, "adb"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 247
    const-string v7, "cmd_target"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 248
    .local v4, logType:I
    const-string v7, "cmd_name"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, command:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->dealWithAdbCommand(ILjava/lang/String;)V

    .line 271
    .end local v2           #command:Ljava/lang/String;
    .end local v4           #logType:I
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v7

    return v7

    .line 162
    :cond_9
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "intent == null, maybe this service is restarted by system."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    .restart local v3       #initFlag:Ljava/lang/String;
    .restart local v5       #rebootFlag:Ljava/lang/String;
    :cond_a
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "At bootup/IPO time, SD is not ready yet, wait."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    .line 215
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "Storage is not ready yet, waiting for mounted signal."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x9c40

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "waiting_sd_ready_reason"

    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 222
    .end local v5           #rebootFlag:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "waiting_sd_ready_reason"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, waitSDStatuStr:Ljava/lang/String;
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "At service first init time(maybe killed by system), waitSDStatuStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isStorageReady()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 226
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "At service restarted time, SD is already ready, continue boot flow"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v7, 0x0

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    .line 228
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "waiting_sd_ready_reason"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    const/4 v7, 0x1

    invoke-direct {p0, v7, v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->changeLogRunningStatus(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 231
    :cond_c
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    .line 232
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "At service restarted time, SD is still not ready, keep waiting"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x9c40

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 250
    .end local v3           #initFlag:Ljava/lang/String;
    .end local v6           #waitSDStatuStr:Ljava/lang/String;
    :cond_d
    const-string v7, "update"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 252
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "Modem restart finished, update log running status now."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    .line 254
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->updateLogStatus()V

    goto/16 :goto_2

    .line 255
    :cond_e
    const-string v7, "exception_happen"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 256
    const-string v7, "MTKLogger/MTKLoggerService"

    const-string v8, "Got exception happens message, begin to tag log now."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/taglog/TagLogManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->beginTag(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 258
    :cond_f
    const-string v7, "storage_changed"

    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mServiceStartType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 259
    const-string v7, "media_action"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, action:Ljava/lang/String;
    const-string v7, "media_affected_path"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, affectedPath:Ljava/lang/String;
    const-string v7, "MTKLogger/MTKLoggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got a storage status changed event from LogReceiver, action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maybe this event was missed because of service been kill, re-handle it now"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    :cond_10
    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public runShellCommand(Ljava/lang/String;)Z
    .locals 5
    .parameter "cmd"

    .prologue
    const/4 v1, 0x0

    .line 1289
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->runShellCommand(), command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v0

    .line 1291
    .local v0, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-nez v0, :cond_0

    .line 1292
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "Fail to get shell command handler when try to run shell command."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_0
    return v1

    .line 1295
    :cond_0
    iget-object v2, v0, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    if-eqz v2, :cond_1

    .line 1296
    iget-object v1, v0, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1297
    const/4 v1, 0x1

    goto :goto_0

    .line 1299
    :cond_1
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "When runShellCommand(), fail to get log instance handler of network log."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLogAutoStart(IZ)Z
    .locals 5
    .parameter "logType"
    .parameter "autoStart"

    .prologue
    const/4 v1, 0x0

    .line 988
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->setLogAutoStart(), logType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autoStart?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v0

    .line 990
    .local v0, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-nez v0, :cond_0

    .line 991
    const-string v2, "MTKLogger/MTKLoggerService"

    const-string v3, "Fail to get log instance for config auto start value."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :goto_0
    return v1

    .line 994
    :cond_0
    iget-object v2, v0, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, v0, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/4 v3, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autostart="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 997
    const/4 v1, 0x1

    goto :goto_0

    .line 995
    :cond_1
    const-string v1, "0"

    goto :goto_1

    .line 999
    :cond_2
    const-string v2, "MTKLogger/MTKLoggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When setAutoStart(), fail to get log instance handler  of log ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;)Z
    .locals 12
    .parameter "logTypeCluster"
    .parameter "reason"

    .prologue
    .line 1145
    const-string v8, "MTKLogger/MTKLoggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-->startRecording(), logTypeCluster="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v7, 0x0

    .line 1151
    .local v7, result:Z
    const-string v8, "MTKLogger/MTKLoggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTKLoggerService.startRecording() thread name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    if-eqz v8, :cond_0

    .line 1154
    const-string v8, "MTKLogger/MTKLoggerService"

    const-string v9, "Log service is busy dealing former command, wait till it is free please"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const/4 v8, 0x0

    .line 1209
    :goto_0
    return v8

    .line 1157
    :cond_0
    sget-boolean v8, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->isWaitingSDReady:Z

    if-eqz v8, :cond_1

    .line 1159
    const-string v8, "MTKLogger/MTKLoggerService"

    const-string v9, "Server is waiting for SD ready, wait till it is OK please"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const/4 v8, 0x0

    goto :goto_0

    .line 1163
    :cond_1
    iput p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    .line 1164
    iput p1, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    .line 1165
    const/4 v8, 0x0

    iput v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    .line 1167
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1168
    .local v6, logType:I
    iget v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    .line 1172
    invoke-direct {p0, v6}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v5

    .line 1173
    .local v5, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v5, :cond_5

    .line 1174
    iget-object v3, v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 1175
    .local v3, handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    if-eqz v3, :cond_4

    .line 1176
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    add-int/lit16 v10, v6, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x4e20

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1179
    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v0, v8, v10

    .line 1180
    .local v0, delayIndex:D
    const-string v8, "MTKLogger/MTKLoggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "When start recording, for log ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], delay index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, firstItemDelay:I
    const-string v8, "storage_recovery"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1186
    const-string v8, "MTKLogger/MTKLoggerService"

    const-string v9, "For storage recovery event, wait more time for its ready"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const/16 v2, 0x64

    .line 1189
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v3, v8, p2}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    double-to-int v9, v0

    mul-int/lit16 v9, v9, 0x12c

    add-int/2addr v9, v2

    int-to-long v9, v9

    invoke-virtual {v3, v8, v9, v10}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1191
    const/4 v7, 0x1

    .line 1192
    goto :goto_1

    .line 1193
    .end local v0           #delayIndex:D
    .end local v2           #firstItemDelay:I
    :cond_4
    const-string v8, "MTKLogger/MTKLoggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "When startRecording(), fail to get log instance handler  of log ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "4"

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1199
    .end local v3           #handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    :cond_5
    const-string v8, "MTKLogger/MTKLoggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to get log instance of type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "6"

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1205
    .end local v5           #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    .end local v6           #logType:I
    :cond_6
    if-eqz v7, :cond_7

    .line 1206
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleGlobalRunningStageChange(I)V

    .line 1207
    const/4 v8, 0x1

    iput v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mGlobalRunningStage:I

    :cond_7
    move v8, v7

    .line 1209
    goto/16 :goto_0
.end method

.method public stopRecording(ILjava/lang/String;)Z
    .locals 13
    .parameter "logTypeCluster"
    .parameter "reason"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1213
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->stopRecording(), logTypeCluster="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v4, 0x0

    .line 1223
    .local v4, result:Z
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    if-eqz v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1224
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Log service is busy dealing former command, mCachedStartStopCmd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reject user\'s stop request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1270
    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .line 1228
    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    if-eqz v6, :cond_1

    .line 1229
    const-string v6, "MTKLogger/MTKLoggerService"

    const-string v7, "Former command have been executed done, but give new coming stop command a higher priority"

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_1
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentAffectedLogType:I

    .line 1233
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    .line 1234
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    xor-int/2addr v6, p1

    iput v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCurrentRunningStatus:I

    .line 1237
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1238
    .local v3, logType:I
    iget v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mCachedStartStopCmd:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    .line 1242
    invoke-direct {p0, v3}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->getLogInstance(I)Lcom/mediatek/mtklogger/framework/LogInstance;

    move-result-object v2

    .line 1243
    .local v2, logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    if-eqz v2, :cond_4

    .line 1244
    iget-object v0, v2, Lcom/mediatek/mtklogger/framework/LogInstance;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    .line 1245
    .local v0, handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    if-eqz v0, :cond_3

    .line 1246
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    add-int/lit16 v8, v3, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1248
    const/4 v6, 0x3

    invoke-virtual {v0, v6, p2}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1250
    const/4 v4, 0x1

    goto :goto_1

    .line 1252
    :cond_3
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "When stopRecording(), fail to get log instance handler  of log ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const-string v7, "4"

    invoke-virtual {v6, v11, v3, v10, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1259
    .end local v0           #handler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    :cond_4
    const-string v6, "MTKLogger/MTKLoggerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get log instance of logtype "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mNativeStateHandler:Landroid/os/Handler;

    const-string v7, "6"

    invoke-virtual {v6, v11, v3, v10, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1265
    .end local v2           #logInstance:Lcom/mediatek/mtklogger/framework/LogInstance;
    .end local v3           #logType:I
    :cond_5
    if-eqz v4, :cond_6

    .line 1266
    invoke-direct {p0, v12}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->handleGlobalRunningStageChange(I)V

    .line 1267
    iput v12, p0, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->mGlobalRunningStage:I

    :cond_6
    move v5, v4

    .line 1270
    .restart local v5       #result:I
    goto/16 :goto_0
.end method
