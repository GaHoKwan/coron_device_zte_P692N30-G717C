.class public Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "MainSpeedingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;,
        Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;
    }
.end annotation


# instance fields
.field private WAIT_TASKS_2_NUMBER:I

.field private WAIT_TASKS_NUMBER:I

.field private allScanFinished:Z

.field private animation:Landroid/view/animation/Animation;

.field private appCacheInfo:Landroid/widget/TextView;

.field private autorunAppInfo:Landroid/widget/TextView;

.field private autorunView:Landroid/view/View;

.field private backgroundAutorunAppInfo:Landroid/widget/TextView;

.field private backgroundAutorunView:Landroid/view/View;

.field private can_close:I

.field private clearedGarbageView:Landroid/view/View;

.field private firstScan:Z

.field private icSpeedImg:Landroid/widget/ImageView;

.field private ic_speed:Landroid/widget/ImageView;

.field private isListAppCacheDone:Z

.field private isListAppFileDone:Z

.field private isListAutoRunAppDone:Z

.field private isListBackgroundAutoRunAppDone:Z

.field private isListRunningProcessDone:Z

.field private lock:Ljava/lang/Object;

.field private mCPUUpdateStarted:Z

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mIdler:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingUpdateCPUIntent:Landroid/app/PendingIntent;

.field private mProcessStats:Lcom/android/internal/os/ProcessStats;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

.field private memoryPercent:Landroid/widget/TextView;

.field private oneKeySpeedingBtn:Landroid/view/View;

.field private oneKeySpeedupImg:Landroid/widget/ImageView;

.field private runningAppInfo:Landroid/widget/TextView;

.field private runningAppView:Landroid/view/View;

.field private task:I

.field private task_2:I

.field private total_auto:I

.field private total_background_auto:I

.field private total_cache:J

.field private total_run:I

.field private usedMemoryPercent:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedingBtn:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppView:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->clearedGarbageView:Landroid/view/View;

    .line 64
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunView:Landroid/view/View;

    .line 65
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunView:Landroid/view/View;

    .line 69
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mCPUUpdateStarted:Z

    .line 70
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mPendingUpdateCPUIntent:Landroid/app/PendingIntent;

    .line 71
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    .line 73
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 74
    new-instance v0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mIdler:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;

    .line 75
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 76
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;

    .line 80
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I

    .line 81
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_NUMBER:I

    .line 87
    iput v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_2_NUMBER:I

    .line 89
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z

    .line 90
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAutoRunAppDone:Z

    .line 91
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListBackgroundAutoRunAppDone:Z

    .line 92
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppCacheDone:Z

    .line 93
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppFileDone:Z

    .line 94
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I

    .line 95
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    .line 96
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    .line 97
    iput v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_background_auto:I

    .line 98
    iput-wide v4, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J

    .line 105
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->memoryPercent:Landroid/widget/TextView;

    .line 106
    iput-wide v4, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    .line 107
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->animation:Landroid/view/animation/Animation;

    .line 108
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;

    .line 111
    iput-boolean v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z

    .line 112
    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z

    .line 132
    new-instance v0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 536
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I

    return v0
.end method

.method static synthetic access$1208(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_NUMBER:I

    return v0
.end method

.method static synthetic access$1502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    return v0
.end method

.method static synthetic access$1702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    return p1
.end method

.method static synthetic access$1712(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAutoRunAppDone:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I

    return v0
.end method

.method static synthetic access$2108(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I

    return v0
.end method

.method static synthetic access$2202(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppCacheDone:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_2_NUMBER:I

    return v0
.end method

.method static synthetic access$2400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_background_auto:I

    return v0
.end method

.method static synthetic access$2502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_background_auto:I

    return p1
.end method

.method static synthetic access$2600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListBackgroundAutoRunAppDone:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->calcRam()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->startAutoRefreshTimer(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->updateMemory()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z

    return v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z

    return p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I

    return v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I

    return p1
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    return v0
.end method

.method static synthetic access$902(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    return p1
.end method

.method static synthetic access$908(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    return v0
.end method

.method private calcRam()V
    .locals 12

    .prologue
    .line 520
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v4

    .line 521
    .local v4, totalMemory:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v0

    .line 522
    .local v0, availMemory:J
    sub-long v6, v4, v0

    .line 523
    .local v6, usedMemory:J
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    rem-long v2, v8, v4

    .line 524
    .local v2, remainder:J
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    div-long/2addr v8, v4

    iput-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    .line 525
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 526
    iget-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    .line 528
    :cond_0
    iget-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 529
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    .line 531
    :cond_1
    iget-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 532
    const-wide/16 v8, 0x64

    iput-wide v8, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    .line 534
    :cond_2
    return-void
.end method

.method private eventInit()V
    .locals 3

    .prologue
    const v2, 0x7f0e017d

    .line 327
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    :cond_0
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedingBtn:Landroid/view/View;

    .line 332
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedingBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v0, 0x7f0e017c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedupImg:Landroid/widget/ImageView;

    .line 334
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->icSpeedImg:Landroid/widget/ImageView;

    .line 335
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppView:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v0, 0x7f0e0183

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->clearedGarbageView:Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->clearedGarbageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunView:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunView:Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f0e0190

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->memoryPercent:Landroid/widget/TextView;

    .line 348
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->calcRam()V

    .line 349
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->updateMemory()V

    .line 350
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;

    .line 351
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->animation:Landroid/view/animation/Animation;

    .line 352
    return-void
.end method

.method private startAutoRefreshTimer(J)V
    .locals 8
    .parameter "refreshDataInterval"

    .prologue
    .line 486
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mCPUUpdateStarted:Z

    if-nez v2, :cond_0

    .line 487
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v7, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "autorefresh"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v7}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 491
    .local v0, ams:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    .line 493
    .local v1, alarmType:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mPendingUpdateCPUIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mCPUUpdateStarted:Z

    .line 496
    .end local v0           #ams:Landroid/app/AlarmManager;
    .end local v1           #alarmType:I
    .end local v7           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private stopAutoRefreshTimer()V
    .locals 2

    .prologue
    .line 499
    iget-boolean v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mCPUUpdateStarted:Z

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 502
    .local v0, ams:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mPendingUpdateCPUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mCPUUpdateStarted:Z

    .line 505
    .end local v0           #ams:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private updateMemory()V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->memoryPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-wide v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->usedMemoryPercent:J

    const-wide/16 v2, 0x50

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedupImg:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->icSpeedImg:Landroid/widget/ImageView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->oneKeySpeedupImg:Landroid/widget/ImageView;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->icSpeedImg:Landroid/widget/ImageView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 426
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z

    if-nez v2, :cond_1

    .line 427
    const v2, 0x7f0a057d

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 432
    .local v1, viewId:I
    const/4 v0, 0x0

    .line 433
    .local v0, intent:Landroid/content/Intent;
    sparse-switch v1, :sswitch_data_0

    .line 480
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 435
    :sswitch_0
    iget v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 436
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/OneKeySpeedActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/SpeedType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 439
    :cond_4
    const v2, 0x7f0a0059

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 444
    :sswitch_1
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I

    if-lez v2, :cond_5

    .line 445
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/RunningAppActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 446
    :cond_5
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z

    if-ne v2, v3, :cond_2

    .line 447
    const v2, 0x7f0a005a

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 451
    :sswitch_2
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppCacheDone:Z

    if-ne v2, v3, :cond_2

    .line 456
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 465
    :sswitch_3
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAutoRunAppDone:Z

    if-ne v2, v3, :cond_2

    .line 466
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 470
    :sswitch_4
    iget-boolean v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListBackgroundAutoRunAppDone:Z

    if-ne v2, v3, :cond_2

    .line 471
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x7f0e017b -> :sswitch_0
        0x7f0e017e -> :sswitch_1
        0x7f0e0183 -> :sswitch_2
        0x7f0e0188 -> :sswitch_3
        0x7f0e018c -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 315
    const v1, 0x7f030079

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->setContentView(I)V

    .line 316
    const v1, 0x7f0a003f

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autorefresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, update:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mPendingUpdateCPUIntent:Landroid/app/PendingIntent;

    .line 319
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->eventInit()V

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z

    .line 321
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 398
    const-string v1, "MemoryView"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mIdler:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 401
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 405
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 414
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 418
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->stopAutoRefreshTimer()V

    .line 419
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 414
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0a0401

    const/4 v3, 0x0

    .line 355
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 356
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    const-string v1, "MemoryView"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iput-boolean v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z

    .line 367
    iput-boolean v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAutoRunAppDone:Z

    .line 368
    iput-boolean v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListBackgroundAutoRunAppDone:Z

    .line 369
    iput-boolean v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppCacheDone:Z

    .line 374
    iput v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I

    .line 375
    iput v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I

    .line 376
    new-instance v1, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;

    invoke-direct {v1, p0, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 380
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 383
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    invoke-direct {v1, p0, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    .line 385
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    :cond_0
    const-wide/16 v1, 0xbb8

    invoke-direct {p0, v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->startAutoRefreshTimer(J)V

    .line 389
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, intentSpeedUpService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 394
    .end local v0           #intentSpeedUpService:Landroid/content/Intent;
    :cond_1
    return-void
.end method
